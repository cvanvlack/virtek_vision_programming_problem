import 'location.dart';
import "dart:io";

class Building {
  final List<List<String>> _buildingLayout = [];

  Building(int xDim, int yDim) {
    for (var i = 0; i < xDim; i++) {
      _buildingLayout.add(List.filled(yDim, '-'));
    }
  }

  //Create this structure
  //-----
  //---r-
  //--www
  //---i-
  Building.problem() {
    //Reframe the problem so that lower right corner is (0,0)
    // final row4 = ['-', '-', '-', '-', '-'];
    // final row3 = ['-', '-', '-', '-', '-'];
    // final row2 = ['-', '-', 'w', 'w', 'w'];
    // final row1 = ['-', '-', '-', 'i', '-'];

    final row1 = ['-', '-', '-', '-'];
    final row2 = ['-', '-', '-', '-'];
    final row3 = ['-', 'w', '-', '-'];
    final row4 = ['i', 'w', '-', '-'];
    final row5 = ['-', 'w', '-', '-'];

    _buildingLayout.add(row1);
    _buildingLayout.add(row2);
    _buildingLayout.add(row3);
    _buildingLayout.add(row4);
    _buildingLayout.add(row5);
    print('xDim:${xDim}');
    print('yDim:${yDim}');
    final intruderLocation = Location(3, 0);
    print(
        'Intruder is: ${_buildingLayout[intruderLocation.x][intruderLocation.y]} and is at location:(${intruderLocation.x},${intruderLocation.y})');
    // printLayout();
  }

  void printLayout() {
    //Print so X=0, Y=0 is in lower left of window.
    for (var j = yDim - 1; j >= 0; j--) {
      for (var i = 0; i < xDim; i++) {
        stdout.write(_buildingLayout[i][j]);
      }
      stdout.write('\n');
    }
    stdout.write('\n');
  }

  String checkLocation(Location location) {
    return _buildingLayout[location.x][location.y];
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

  int get xDim => _buildingLayout.length;
  int get yDim {
    if (xDim != 0) {
      return _buildingLayout[0].length;
    }
    return 0;
  }
}
