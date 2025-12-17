import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/search_page.dart';
import 'package:union_shop/views/search_results_page.dart';

void main() {
  Widget createTestWidget() {
    return const MaterialApp(home: SearchPage());
  }

  testWidgets('Search page loads without crashing', (tester) async {
    await tester.pumpWidget(createTestWidget());
    await tester.pump();

    expect(find.byType(Scaffold), findsOneWidget);
  });
}
testWidgets('Search page displays app bar title', (tester) async {
  await tester.pumpWidget(createTestWidget());
  await tester.pump();

  expect(find.text('Search'), findsOneWidget);
});

testWidgets('Search input field is displayed', (tester) async {
  await tester.pumpWidget(createTestWidget());
  await tester.pump();

  expect(find.byType(TextField), findsOneWidget);
});

testWidgets('Search page shows product list items', (tester) async {
  await tester.pumpWidget(createTestWidget());
  await tester.pump();

  expect(find.text('Classic Hoodie'), findsOneWidget);
});


