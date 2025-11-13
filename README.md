# DraftMode Flutter Example

## Overview
DraftMode Example is a minimal Cupertino-styled shell that aggregates DraftMode example widgets in a single Flutter page. The goal is to keep the surface area intentionally small so new demos can mount inside `DemoPage` without additional scaffolding.

## Project Structure
- `lib/page.dart` – core Cupertino page with a navigation bar, hero header, and injected child widgets.
- `assets/images/` – static art used by the header (logo.png). Update `pubspec.yaml` if you add more assets.
- `test/` – widget and unit tests. Mirrors the structure under `lib/`.

## Development Workflow
- Add new demos as widgets and pass them into `DemoPage(children: [...])`.
- Favor small composable widgets per file; keep names aligned with their primary widget (e.g., `example_card.dart`).
- Use `dart format .` or your editor’s Flutter formatter before committing.
- Helpful IDE task: `flutter run -d chrome` or your device of choice to inspect UI changes quickly.

## Testing & QA
- Write widget tests with `flutter_test` for visual/layout logic and plain `test` for pure Dart helpers.
- Name files `*_test.dart` alongside their source counterparts.
- Run `flutter test` (or `./flutter.init.sh`) before pushing; include screenshots/GIFs for visible UI updates in PRs.

## Assets & Configuration
- Declare new assets in `pubspec.yaml` under the `flutter.assets` section.
- When loading bundled art inside this package, include the package qualifier (e.g., `Image.asset('assets/images/logo.png', package: 'draftmode_example')`) so the asset still resolves when the widget ships in another app.
- Consumers that need the raw asset directly can use `Image.asset('packages/draftmode_example/assets/images/logo.png')` without adding extra pubspec entries.
- Keep binary assets optimized; prefer vector or appropriately sized PNGs/WebPs to reduce bundle size.
