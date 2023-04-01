import 'package:virtek_vision/building.dart';
import 'package:virtek_vision/location.dart';
import 'package:virtek_vision/locations_checked.dart';
import 'package:virtek_vision/search_tree.dart';

void main(List<String> arguments) {
  final building = Building.problem();
  final startingLocation = Location(3, 2);
  final locationsChecked = LocationsChecked(building);
  final foundLocation = search(building, locationsChecked, startingLocation);
  if (foundLocation == null) {
    print('No Intruder, all safe');
  } else {
    print('Found Intruder at X: ${foundLocation.x},Y: ${foundLocation.y}');
  }
}
