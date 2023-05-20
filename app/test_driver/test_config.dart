import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'steps/login_steps.dart'; // Import the login steps

Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/login.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      LoginPageGiven(), // Add the login steps here
      EnterEmailFieldWhen(),
      EnterPasswordFieldWhen(),
      TapLoginButtonWhen(),
      VerifyHomePageThen(),
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}