// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wp_erp/app.dart';
import 'package:wp_erp/counter/view/counter_page.dart';

void main() {
  group('CounterApp', () {
    testWidgets('is a MaterialApp', (tester) async {
      expect(CounterApp(), isA<MaterialApp>());
    });

    testWidgets('home is CounterPage', (tester) async {
      expect(CounterApp().home, isA<CounterPage>());
    });

    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(CounterApp());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
