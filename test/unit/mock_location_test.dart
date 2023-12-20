import 'package:crashcourse_flutter/models/location.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:crashcourse_flutter/mocks/mock_location.dart';

void main(){
  test("test fetchAny", () {
    Location location = MockLocation.fetchAny();
    expect(location, isNotNull);
    expect(location.name, isNotEmpty);
  });

  test("test fetchAll", () {
    List<Location> location = MockLocation.fetchAll();
    expect(location.length, greaterThan(0));
    expect(location[0].name, isNotEmpty);
  });

  test("test fetch", () {
    Location location = MockLocation.fetch(0);
    expect(location, isNotNull);
    expect(location.name, isNotEmpty);
  });
}
