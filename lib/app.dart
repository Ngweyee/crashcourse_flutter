import 'package:crashcourse_flutter/location_list.dart';
import 'package:flutter/material.dart';
import 'mocks/mock_location.dart';

class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final mockLocations = MockLocation.fetchAll();
    return MaterialApp(home: LocationList(mockLocations));

  }

}
