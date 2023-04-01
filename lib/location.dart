class Location {
  final int _x;
  final int _y;

  const Location(this._x, this._y);

  Location.left(Location location)
      : _x = location.x - 1,
        _y = location.y;

  Location.right(Location location)
      : _x = location.x + 1,
        _y = location.y;

  Location.down(Location location)
      : _x = location.x,
        _y = location.y - 1;

  Location.up(Location location)
      : _x = location.x,
        _y = location.y + 1;

  int get x => _x;
  int get y => _y;

  @override
  String toString() {
    return 'x: $x,y: $y';
  }
}
