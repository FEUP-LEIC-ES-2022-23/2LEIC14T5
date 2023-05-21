import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class HomePageGiven extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    // Assuming the home page is already displayed
    // You can add any necessary setup steps here
  }

  @override
  RegExp get pattern => RegExp(r'I am on the Home Page');
}

class SelectSearchPageStep extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final searchPageButton = find.byValueKey('search_key');
    await FlutterDriverUtils.tap(world.driver, searchPageButton);
  }

  @override
  RegExp get pattern => RegExp(r'I select "Search Page"');
}

class TapJobOfferStep extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final jobOffer = find.byValueKey('arrowIcon_0');
    await FlutterDriverUtils.tap(world.driver, jobOffer);
  }

  @override
  RegExp get pattern => RegExp(r'I tap the first job offer');
}

class VerifyJobOfferDetails extends ThenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final jobDetailPage = find.byValueKey('jobDetailPage');
    final isJobDetailPageDisplayed = await FlutterDriverUtils.isPresent(world.driver, jobDetailPage);
    expect(isJobDetailPageDisplayed,true);

  }

  @override
  RegExp get pattern => RegExp(r'I see the details of the first job offer');
}
