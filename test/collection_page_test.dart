import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/collections_page.dart';
import 'package:union_shop/views/footer.dart';

void main() {
  group('Collections Page Tests', () {
    Widget createTestWidget() {
      return const MaterialApp(home: CollectionsPage());
    }

    testWidgets('page loads without crashing', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('displays app bar title', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Collections'), findsOneWidget);
    });

    testWidgets('displays main heading', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Shop by Category'), findsOneWidget);
    });

    testWidgets('displays all collection categories', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Election Discounts'), findsOneWidget);
      expect(find.text('Pride Collection'), findsOneWidget);
      expect(find.text('Essential Range'), findsOneWidget);
      expect(find.text('Graduation'), findsOneWidget);
    });

    testWidgets('displays navigation arrows', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byIcon(Icons.arrow_forward_ios), findsNWidgets(4));
    });

    testWidgets('footer is displayed', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(AppFooter), findsOneWidget);
    });
  });
}
