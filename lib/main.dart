import 'package:crashcourse_flutter/location_list.dart';
import 'package:flutter/material.dart';
import 'mocks/mock_location.dart';

void main() {

  final mockLocations = MockLocation.fetchAll();
   runApp(MaterialApp(
     home: LocationList(mockLocations)
     ),
   );
}
