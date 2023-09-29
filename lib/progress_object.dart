class progress_object {
  int _progress = 0;
  int _MAINTENANCE_INTERVAL = 1;
  int get progress => _progress;
  set progress(int value) {
    _progress = value;
  }
  set MAINTENANCE_INTERVAL(int value) {
    MAINTENANCE_INTERVAL = value;
  }
  //progress can be as high as MAINTENANCE INTERVAL
  //progress can be as low as 0
  //return progress as a percentage
  double get progressPercentage => _progress / _MAINTENANCE_INTERVAL;
}