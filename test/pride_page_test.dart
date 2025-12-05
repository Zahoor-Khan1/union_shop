import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/pride_page.dart';

void main() {
  group('Pride Page Tests', () {
    Widget createTestWidget() {
      return const MaterialApp(home: PridePage());
    }

    testWidgets('page loads without crashing', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('displays app bar title', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      // Note: Your AppBar currently says "Essential Range"
      expect(find.text('Essential Range'), findsOneWidget);
    });

    testWidgets('displays both pride products', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Classic Rainbow Hoodies'), findsOneWidget);
      expect(find.text('Pride Flag Pin'), findsOneWidget);
    });

    testWidgets('displays both product prices', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('£14.00'), findsOneWidget);
      expect(find.text('£1.00'), findsOneWidget);
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
