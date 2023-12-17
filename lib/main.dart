import 'package:crashcourse_flutter/models/location.dart';

import 'location_detail.dart';
import 'package:flutter/material.dart';
import 'mocks/mock_location.dart';

void main() {

   final Location mockLocation = MockLocation.FetchAny();
   runApp(MaterialApp(
     home: LocationDetail(mockLocation)
     ),
   );
}
