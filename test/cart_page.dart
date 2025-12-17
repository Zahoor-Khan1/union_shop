import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/cart_page.dart';
import 'package:union_shop/models/cart.dart';

void main() {
  group('Cart Page Tests', () {
    setUp(() {
      cartItems.clear();
    });

Widget createTestWidget() {
  return const MaterialApp(
    home: CartPage(),
  );
}

    testWidgets('displays empty cart message when cart is empty', (tester) async {
      // Ensure cart is empty before test
      cartItems.clear();

      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Your Cart'), findsOneWidget);
      expect(find.text('Your cart is empty'), findsOneWidget);
    });

    testWidgets('checkout button is NOT shown when cart is empty', (tester) async {
      cartItems.clear();

      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('CHECK OUT'), findsNothing);
    });

    testWidgets('page loads without crashing', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}
