import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class LoginPageGiven extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    // Assuming the login page is already displayed
    // You can add any necessary setup steps here
  }

  @override
  RegExp get pattern => RegExp(r'I am on the Login Page');
}

class EnterEmailField extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String email) async {
    final emailField = find.byValueKey('emailfield');
    await FlutterDriverUtils.enterText(world.driver, emailField, email);
  }

  @override
  RegExp get pattern => RegExp(r'I enter {string} into the "emailfield" field');
}

class EnterPasswordFieldWhen extends When1WithWorld<String, FlutterWorld> {
  @override
  Future<void> executeStep(String password) async {
    final passwordField = find.byValueKey('passfield');
    await FlutterDriverUtils.enterText(world.driver, passwordField, password);
  }

  @override
  RegExp get pattern => RegExp(r'I enter {string} into the "passfield" field');
}

class TapLoginButtonWhen extends WhenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final loginButton = find.byValueKey('signInBtn');
    await FlutterDriverUtils.tap(world.driver, loginButton);
  }

  @override
  RegExp get pattern => RegExp(r'I tap the "signInBtn" button');
}

class VerifyHomePageThen extends ThenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final homePage = find.byValueKey('homePage');
    final isHomePageDisplayed = await FlutterDriverUtils.isPresent(world.driver, homePage);
    await Future.delayed(const Duration(seconds: 2));
    expect(isHomePageDisplayed, true);

  }


  @override
  RegExp get pattern => RegExp(r'I should be on the home_page');
}
