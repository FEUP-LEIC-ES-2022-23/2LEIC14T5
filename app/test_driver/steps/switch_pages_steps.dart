import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

class HomePage extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    // Assuming the app is already launched and the user is on the home page
  }

  @override
  RegExp get pattern => RegExp(r'I am on the Home Page');
}

class SelectSearchPage extends AndWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final searchPageButton = find.byValueKey('search_key');
    await FlutterDriverUtils.tap(world.driver, searchPageButton);
  }

  @override
  RegExp get pattern => RegExp(r'I select "Search Page"');
}

class VerifySearchPage extends ThenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    final searchPage = find.byValueKey('searchPage');
    final isSearchPageDisplayed = await FlutterDriverUtils.isPresent(world.driver, searchPage);
    expect(isSearchPageDisplayed, true);
  }

  @override
  RegExp get pattern => RegExp(r'I should be on the Search Page');
}
