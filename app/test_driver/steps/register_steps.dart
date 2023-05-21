import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class LoginPage extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    // assuming that the login page is already displayed!!
  }

  @override
  RegExp get pattern => RegExp(r'I am on the Login Page');
}

class TapRegisterNow extends WhenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final registerNowButton = find.byValueKey('registerBtn');
    await FlutterDriverUtils.tap(world.driver, registerNowButton);
  }

  @override
  RegExp get pattern => RegExp(r'I tap "Register Now"');
}

class EnterRegisterEmail extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    const email = 'test@gmail.com';
    final emailField = find.byValueKey('email_register');
    await FlutterDriverUtils.enterText(world.driver, emailField, email);
  }

  @override
  RegExp get pattern => RegExp(r'I enter my email');
}

class EnterRegisterPassword extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    const password = 'password123';
    final passwordField = find.byValueKey('password_register');
    await FlutterDriverUtils.enterText(world.driver, passwordField, password);
  }

  @override
  RegExp get pattern => RegExp(r'I enter my password');
}

class EnterConfirmPassword extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    const password = 'password123';
    final confirmPasswordField = find.byValueKey('confirm_password_register');
    await FlutterDriverUtils.enterText(world.driver, confirmPasswordField, password);
  }

  @override
  RegExp get pattern => RegExp(r'I enter my password confirmation');
}

class TapSignUpButton extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final signUpButton = find.byValueKey('sign_up_button');
    await FlutterDriverUtils.tap(world.driver, signUpButton);
  }

  @override
  RegExp get pattern => RegExp(r'I tap the "Sign Up" button');
}

class VerifyEmailAccount extends ThenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final verifyEmailPage = find.byValueKey('verifyEmailPage');
    final isVerifyEmailPageDisplayed = await FlutterDriverUtils.isPresent(world.driver, verifyEmailPage);
    expect(isVerifyEmailPageDisplayed, true);
  }

  @override
  RegExp get pattern => RegExp(r'I need to verify my email account');
}