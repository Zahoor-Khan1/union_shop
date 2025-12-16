import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/graduation_page.dart';

void main() {
  group('Graduation Page Tests', () {
    Widget createTestWidget() {
      return const MaterialApp(home: GraduationPage());
    }

    testWidgets('page loads without crashing', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.byType(Scaffold), findsOneWidget);
    });

    testWidgets('displays app bar title', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Graduation'), findsOneWidget);
    });

    testWidgets('displays both graduation products', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('Graduation Hoodie'), findsOneWidget);
      expect(find.text('Graduation Bear'), findsOneWidget);
    });

    testWidgets('displays both product prices', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      expect(find.text('£35.00'), findsOneWidget);
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
