import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/login_screen.dart';

void main() {
  group('Login Flow', () {
    testWidgets('should navigate to Home Screen',
        (WidgetTester widgetTester) async {
      await widgetTester.pumpWidget(MaterialApp(home: LoginScreen()));

      Finder emailField = find.byKey(const ValueKey("emailField"));
      Finder passwordField = find.byKey(const ValueKey("passwordField"));

      await widgetTester.enterText(emailField, "test@test.com");
      await widgetTester.enterText(passwordField, "password");

      Finder loginButton = find.byKey(const ValueKey("loginButton"));
      await widgetTester.tap(loginButton);
      await widgetTester.pumpAndSettle();

      Finder welcomeText = find.text("Welcome Home");

      expect(welcomeText, findsOneWidget);
    });
  });
}
