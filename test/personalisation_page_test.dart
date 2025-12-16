import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/personalisation_page.dart';

void main() {
  group('Personalisation Page Tests', () {
    Widget createTestWidget() {
      return const MaterialApp(home: PersonalisationPage());
    }

    testWidgets('should display personalisation page with basic elements',
        (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      // Check that main texts are present
      expect(find.text('Personalisation'), findsWidgets);
      expect(find.text('£3.00'), findsOneWidget);
      expect(find.text('£3 for one line of text! £5 for two!'), findsOneWidget);
      expect(find.text('One line of text is 10 characters.'), findsOneWidget);
    });

    testWidgets('should display dropdown options', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      // Open dropdown
      await tester.tap(find.byType(DropdownButtonFormField<String>));
      await tester.pumpAndSettle();

      // Check options
      expect(find.text('One Line of Text'), findsOneWidget);
      expect(find.text('Two Lines of Text'), findsOneWidget);
    });

    testWidgets('should allow text input in personalisation field',
        (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      await tester.enterText(find.byType(TextField), 'John');
      await tester.pump();

      expect(find.text('John'), findsOneWidget);
    });

    testWidgets('should display add to cart button', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('ADD TO CART'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('should be scrollable', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      await tester.drag(
        find.byType(SingleChildScrollView),
        const Offset(0, -300),
      );

      await tester.pump();

      expect(find.text('ADD TO CART'), findsOneWidget);
    });
  });
}
