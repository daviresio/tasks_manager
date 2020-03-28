import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:todolistapp/app/quick/quick_page.dart';

main() {
  testWidgets('QuickPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(QuickPage(title: 'Quick')));
    final titleFinder = find.text('Quick');
    expect(titleFinder, findsOneWidget);
  });
}
