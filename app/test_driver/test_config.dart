import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'steps/search_location_steps.dart';


/* login
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
*/
/* register
Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/register.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      LoginPage(),
      TapRegisterNow(),
      EnterRegisterEmail(),
      EnterRegisterPassword(),
      EnterConfirmPassword(),
      TapSignUpButton(),
      VerifyEmailAccount()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}
*/
/* switch pages
Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/switch_page.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      HomePage(),
      SelectSearchPage(),
      VerifySearchPage(),
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}

 */

/*edit_profile
Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/edit_profile.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      HomePageGiven(),
      SelectProfileStep(),
      TapEditProfileStep(),
      EnterFullName(),
      SaveProfile(),
      CheckFullName()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}
*/

/* job offer detail
Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/job_offer_details.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      HomePageGiven(),
      SelectSearchPageStep(),
      TapJobOfferStep(),
      VerifyJobOfferDetails(),
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}
*/
/*logout
Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/logout.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      HomePageGiven(),
      ClickSignOut(),
      VerifyLoginPage(),
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}
*/
/*reviews
Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/reviews.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      HomePageGiven(),
      SelectSearchPage(),
      TapJobOffer(),
      ClickSeeReviews(),
      VerifyReviewsPage()
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}

*/

Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [Glob(r"test_driver/features/search_location.feature")]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..stepDefinitions = [
      HomePageGiven(),
      SearchForJob(),
      VerifyJobsInLocation(),
    ]
    ..restartAppBetweenScenarios = true
    ..targetAppPath = "test_driver/app.dart";

  final runner = GherkinRunner();

  await runner.execute(config);
}