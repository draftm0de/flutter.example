# DraftMode Flutter Example

## Overview
DraftMode Example exposes `DraftModeExamplePageWidget`, a minimal Cupertino-styled shell that aggregates DraftMode demos inside a single page. The goal is to keep the surface area intentionally small so new demos can mount inside the widget without additional scaffolding, whether they live in this repo or are consumed via `package:draftmode/example.dart`.

## Project Structure
- `lib/widget/page.dart` – core Cupertino page with a navigation bar, hero header, and injected child widgets.
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
- Widgets exported from this package **must** include the package qualifier when loading art so Flutter knows to look in `draftmode_example` even when the widget ships in another app:

```dart
Image.asset(
  'assets/images/logo.png',
  package: 'draftmode_example',
);
```

- Consumers that need the raw asset directly can use `AssetImage('packages/draftmode_example/assets/images/logo.png')` (or the equivalent `Image.asset`) without adding extra pubspec entries.
- Keep binary assets optimized; prefer vector or appropriately sized PNGs/WebPs to reduce bundle size.
