import 'package:virtek_vision/building.dart';
import 'package:virtek_vision/location.dart';
import 'package:virtek_vision/locations_checked.dart';

void printSearch(Building building, LocationsChecked locationsChecked) {
  String stringToPrint = '';
  //Print so X=0, Y=0 is in lower left of window.
  for (var i = 0; i < building.xDim; i++) {
    // for (var i = building.xDim - 1; i > 0; i--) {

    for (var j = 0; j < building.yDim; j++) {
      // for (var j = building.yDim - 1; j > 0; j--) {
      final location = Location(i, j);
      if (locationsChecked.getChecked(location)) {
        stringToPrint = stringToPrint + 'C';
      } else {
        stringToPrint = stringToPrint + building.checkLocation(location);
      }
    }
    stringToPrint = stringToPrint + '\n';
  }
  // print(stringToPrint);
}
