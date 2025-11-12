# Repository Guidelines

This Flutter demo bundles DraftMode example pages. Keep documentation actionable and code intentionally small so downstream agents can reuse components without re-learning context.

## Project Structure & Module Organization
- `lib/page.dart` hosts the single-page shell; add new widgets or routes here or split into subdirectories as complexity grows.
- `pubspec.yaml` defines SDK constraints (Dart 3.8+, Flutter 3.10+) and is the source of truth for dependencies.
- Tests belong under `test/` mirroring `lib/` paths; asset bundles should live under `assets/` with corresponding `pubspec` entries.

## Build, Test, and Development Commands
- `flutter pub get` installs dependencies declared in `pubspec.yaml`.
- `flutter analyze` runs static analysis; resolve warnings before committing.
- `flutter test` runs the `flutter_test` suite in `test/`.
- `flutter run -d chrome` or your target device launches the demo page for manual verification.

## Coding Style & Naming Conventions
- Follow Dart style: 2-space indentation, trailing commas to encourage formatter-friendly diffs, and UpperCamelCase for widgets/classes, lowerCamelCase for members.
- Always run `dart format .` (or rely on `flutter format`) before pushing.
- Keep files focused: prefer small, composable widgets over monoliths; name files after their primary widget (e.g., `example_card.dart`).

## Testing Guidelines
- Use `flutter_test` with `testWidgets` for UI surfaces and plain `test` for logic helpers.
- Name tests `${feature}_test.dart` and structure groups using `group('scenario', ...)` to document intent.
- Target full coverage for new behavior; mock only external services, never Flutter SDK classes.

## Commit & Pull Request Guidelines
- Follow imperative, present-tense commit subjects under ~60 chars (e.g., `Add masonry grid section`).
- Each commit should build and pass tests locally; reference issue IDs in the body when relevant.
- PRs must describe the change, testing done (`flutter test` output), and include screenshots or screen recordings when UI changes are visible.
