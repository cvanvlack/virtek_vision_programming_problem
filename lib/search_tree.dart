import 'package:virtek_vision/building.dart';
import 'package:virtek_vision/location.dart';
import 'package:virtek_vision/locations_checked.dart';
import 'package:virtek_vision/print_search.dart';

Location? search(
    Building building, LocationsChecked locationsChecked, Location location) {
  final List<Location> locationsToSearch = [];
  printSearch(building, locationsChecked);
  if (building.checkLocation(location) == 'i') {
    return location;
  }
  locationsChecked.setChecked(location);
  final up = Location.up(location);
  final down = Location.down(location);
  final left = Location.left(location);
  final right = Location.right(location);

  if (checkToAdd(building, locationsChecked, up)) {
    locationsToSearch.add(up);
  }
  if (checkToAdd(building, locationsChecked, down)) {
    locationsToSearch.add(down);
  }
  if (checkToAdd(building, locationsChecked, left)) {
    locationsToSearch.add(left);
  }
  if (checkToAdd(building, locationsChecked, right)) {
    locationsToSearch.add(right);
  }

  for (var locationToSearch in locationsToSearch) {
    final foundLocation = search(building, locationsChecked, locationToSearch);
    if (foundLocation != null) {
      return foundLocation;
    }
  }
  return null;
}

bool checkToAdd(
  Building building,
  LocationsChecked locationsChecked,
  Location location,
) {
  //check to see if in limits
  if (building.inLimits(location)) {
    //Only add the location if we haven't checked it and it's not a wall
    if (building.checkLocation(location) != 'w' &&
        !locationsChecked.getChecked(location)) {
      return true;
    }
  }
  return false;
}
