import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';


class RandomPageStep extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    await Future.delayed(const Duration(seconds: 4));

  }

  @override
  RegExp get pattern => RegExp(r'I am on a random Page');
}

class PreviousPageStep extends GivenWithWorld<FlutterWorld> {
  @override
  Future<void> executeStep() async {
    await Future.delayed(const Duration(seconds: 2));

  }

  @override
  RegExp get pattern => RegExp(r'I should be on the previous page');
}