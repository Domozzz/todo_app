import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todo_app/main.dart';

void main() {
  testWidgets('Todo App unit , widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('The art of \ntask management'), findsOneWidget);
    expect(
        find.image(const AssetImage("images/check-list.png")), findsOneWidget);

    await tester.tap(find.widgetWithText(ElevatedButton, "Continue"));
    await tester.pumpAndSettle();
    expect(find.text('My Todo'), findsOneWidget);
  });
}
