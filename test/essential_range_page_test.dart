import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/essential_range_page.dart';

void main() {
  group('Essential Range Page Tests', () {
    Widget createTestWidget() {
      return const MaterialApp(home: EssentialRangePage());
    }

    testWidgets('page loads without crashing', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('displays app bar title', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Essential Range'), findsOneWidget);
    });

    testWidgets('displays both essential products', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(
        find.text('Limited Edition Essential Zip Hoddies'),
        findsOneWidget,
      );
      expect(find.text('Essential T-shirt'), findsOneWidget);
    });

    testWidgets('displays both product prices', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('£14.00'), findsOneWidget);
      expect(find.text('£10.00'), findsOneWidget);
    });

    testWidgets('displays grid layout', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(GridView), findsOneWidget);
    });

    testWidgets('displays two product images', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(Image), findsNWidgets(2));
    });
  });
}
