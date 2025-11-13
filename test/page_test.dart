import 'package:draftmode_example/example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('DraftModeExamplePageWidget shows header, navigation title, and injected children', (tester) async {
    const title = 'Demo gallery';
    const childLabel = 'Custom child';

    await tester.pumpWidget(
      const CupertinoApp(
        home: DraftModeExamplePageWidget(
          title: title,
          children: [Text(childLabel)],
        ),
      ),
    );

    expect(find.widgetWithText(CupertinoNavigationBar, title), findsOneWidget);
    expect(find.text('DraftMode'), findsOneWidget);
    expect(find.text('Development is infinite.'), findsOneWidget);
    expect(find.text(childLabel), findsOneWidget);
    expect(find.byType(SafeArea), findsWidgets);
  });
}
