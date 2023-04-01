import 'package:virtek_vision/building.dart';

import 'location.dart';

class LocationsChecked {
  final List<List<bool>> _locationsChecked = [];

  LocationsChecked(Building building) {
    for (var i = 0; i < building.xDim; i++) {
      _locationsChecked.add(List.filled(building.yDim, false));
    }
  }

  int get xDim => _locationsChecked.length;
  int get yDim {
    if (xDim != 0) {
      return _locationsChecked[0].length;
    }
    return 0;
  }

  bool inLimits(Location location) {
    if (xDim > 0 && yDim > 0) {
      if (location.x >= 0 && location.x < xDim) {
        if (location.y >= 0 && location.y < yDim) {
          return true;
        }
      }
    }
    return false;
  }

  setChecked(Location location) {
    if (inLimits(location)) {
      _locationsChecked[location.x][location.y] = true;
    }
  }

  bool getChecked(Location location) {
    if (inLimits(location)) {
      return _locationsChecked[location.x][location.y];
    }
    return false;
  }
}
