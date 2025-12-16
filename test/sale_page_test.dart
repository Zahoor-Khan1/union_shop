import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/sale_page.dart';

void main() {
  group('Sale Page Tests', () {
    Widget createTestWidget() {
      return const MaterialApp(home: SalePage());
    }

    testWidgets('page loads without crashing', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('displays SALE title', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('SALE'), findsOneWidget);
    });

    testWidgets('displays sale description text', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(
        find.text("Don't miss out! Get yours before they're all gone!"),
        findsOneWidget,
      );

      expect(
        find.text('All prices shown are inclusive of the discount. 🛒'),
        findsOneWidget,
      );
    });

    testWidgets('displays all sale products', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Recycled Notebook'), findsOneWidget);
      expect(find.text('Classic Hoodie'), findsOneWidget);
      expect(find.text('Dimple Pop Fidget Keyring'), findsOneWidget);
    });

    testWidgets('displays old and new prices', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('£17.00'), findsOneWidget);
      expect(find.text('£10.99'), findsOneWidget);

      expect(find.text('£3.99'), findsOneWidget);
      expect(find.text('£1.99'), findsOneWidget);

      expect(find.text('£2.99'), findsOneWidget);
      expect(find.text('£0.99'), findsOneWidget);
    });

    testWidgets('displays grid layout', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(GridView), findsOneWidget);
    });
  });
}
