import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:module_8_assignment/main.dart';

void main() {
  testWidgets('Profile screens smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProfileApp());

    // Verify that the profile name and section header appear.
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('Interests'), findsOneWidget);
  });
}