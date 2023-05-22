import 'dart:async';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'steps/edit_profile_steps.dart';
import 'steps/job_offer_details_steps.dart';
import 'steps/login_steps.dart';
import 'steps/logout_steps.dart';
import 'steps/register_steps.dart';
import 'steps/reviews_steps.dart';
import 'steps/search_location_steps.dart';
import 'steps/switch_back_home_steps.dart';
import 'steps/switch_pages_steps.dart';
import 'steps/tap_back_button_steps.dart';

Future<void> main() async {
  final config = FlutterTestConfiguration()
    ..features = [
      // Register feature
      Glob(r"test_driver/features/register.feature"),

      // Login feature
      Glob(r"test_driver/features/login.feature"),

      // Search job of a location ("Aveiro")
      Glob(r"test_driver/features/search_location.feature"),

      // Switch pages (Home -> Search)
      Glob(r"test_driver/features/switch_page.feature"),

      //Switch back to home page (Random page -> Home)
      Glob(r"test_driver/features/switch_back_home.feature"),

      //See job offer details
      Glob(r"test_driver/features/job_offer_details.feature"),

      //Tap the back button
      Glob(r"test_driver/features/tap_back_button.feature"),

      //See reviews
      Glob(r"test_driver/features/reviews.feature"),

      //Tap the back button 2 times
      Glob(r"test_driver/features/tap_back_button.feature"),
      Glob(r"test_driver/features/tap_back_button.feature"),

      //Switch back to home page (Random page -> Home)
      Glob(r"test_driver/features/switch_back_home.feature"),

      //Edit profile
      Glob(r"test_driver/features/edit_profile.feature"),

      //logout
      Glob(r"test_driver/features/logout.feature"),


    ]
    ..reporters = [
      ProgressReporter(),
      TestRunSummaryReporter(),
      JsonReporter(path: './report.json')
    ]
    ..order = ExecutionOrder.sequential

    ..stepDefinitions = [
      // Register steps
      LoginPageRegStep(),
      TapRegisterNowRegStep(),
      EmailRegStep(),
      PasswordRegStep(),
      ConfirmPassRegStep(),
      TapSignUpBtnRegStep(),
      VerifyEmailAccRegStep(),


      // Login steps
      LoginPageGiven(),
      EnterEmailField(),
      EnterPasswordFieldWhen(),
      TapLoginButtonWhen(),
      VerifyHomePageThen(),

      // Search job of a location
      HomePageGiven(),
      SearchForJob(),
      VerifyJobsInLocation(),

      // Switch pages
      HomePage(),
      SelectSearchPage(),
      VerifySearchPage(),

      //Switch back to home page
      GivenRandomPage(),
      SelectHomePage(),
      VerifyHomePage(),

      //See job offer details
      HomePageStep(),
      SelectSearchPageStep(),
      TapJobOfferStep(),
      VerifyJobOfferDetails(),

      //Tap the back button
      RandomPageStep(),
      PreviousPageStep(),

      //Reviews
      SearchPageGiven(),
      TapJobOffer(),
      ClickSeeReviews(),
      VerifyReviewsPage(),

      //Edit profile
      HomePageGivenEdit(),
      SelectProfileStep(),
      TapEditProfileStep(),
      EnterFullName(),
      SaveProfile(),
      CheckFullName(),


      //logout
      RandomPageLogout(),
      ClickSignOut(),
      VerifyLoginPage(),

    ]


    ..restartAppBetweenScenarios = false
    ..targetAppPath = "test_driver/app.dart";
  final runner = GherkinRunner();
  await runner.execute(config);
}
