import 'package:crashcourse_flutter/app.dart';
import 'package:crashcourse_flutter/mocks/mock_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets("test app starting", (WidgetTester widgetTester) async {
    await mockNetworkImagesFor(
        () => widgetTester.pumpWidget(makeTestableWidget()));
    final mockLocation = MockLocation.fetchAny();
    expect(find.text(mockLocation.name), findsOneWidget);
    expect(find.text("${mockLocation.name}blah"), findsNothing);
  });
}

Widget makeTestableWidget() {
  return App();
}
