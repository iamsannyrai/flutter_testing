import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/login_screen.dart';

void main() {
  group('Login Screen', () {
    testWidgets('should have a title', (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: LoginScreen()));
      Finder appBarTitle = find.text('Login');
      expect(appBarTitle, findsOneWidget);
    });

    testWidgets('should have one email field',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: LoginScreen()));
      Finder emailField = find.byKey(const ValueKey("emailField"));
      expect(emailField, findsOneWidget);
    });

    testWidgets('should have one password field',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: LoginScreen()));
      Finder passwordField = find.byKey(const ValueKey("passwordField"));
      expect(passwordField, findsOneWidget);
    });

    testWidgets('should have one login button',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: LoginScreen()));
      Finder loginButton = find.byKey(const ValueKey("loginButton"));
      expect(loginButton, findsOneWidget);
    });

    testWidgets(
        'should show two Required Field error message when email and password are empty',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: LoginScreen()));
      Finder loginButton = find.byKey(const ValueKey("loginButton"));
      await widgetTester.tap(loginButton);
      await widgetTester.pumpAndSettle();

      Finder errorText = find.text("Required Field");

      expect(errorText, findsNWidgets(2));
    });

    testWidgets('should submit form when email and password are valid',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: LoginScreen()));

      Finder emailField = find.byKey(const ValueKey("emailField"));
      Finder passwordField = find.byKey(const ValueKey("passwordField"));

      await widgetTester.enterText(emailField, "test@test.com");
      await widgetTester.enterText(passwordField, "password");

      Finder loginButton = find.byKey(const ValueKey("loginButton"));
      await widgetTester.tap(loginButton);
      await widgetTester.pumpAndSettle();

      Finder errorText = find.text("Required Field");

      expect(errorText, findsNothing);
    });
  });
}
