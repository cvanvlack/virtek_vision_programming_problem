import 'package:virtek_vision/building.dart';
import 'package:virtek_vision/location.dart';
import 'package:virtek_vision/locations_checked.dart';

import "dart:io";

void printSearch(Building building, LocationsChecked locationsChecked) {
  //Print so X=0, Y=0 is in lower left of window.
  for (var j = building.yDim - 1; j >= 0; j--) {
    for (var i = 0; i < building.xDim; i++) {
      final location = Location(i, j);
      if (locationsChecked.getChecked(location)) {
        stdout.write('C');
      } else {
        stdout.write(building.checkLocation(location));
      }
    }
    stdout.write('\n');
  }
  stdout.write('\n');
}
