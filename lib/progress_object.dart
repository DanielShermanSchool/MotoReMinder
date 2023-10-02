class progress_object {
  int _progress;
  int _MAINTENANCE_INTERVAL;


  progress_object({int progress = 0, int MAINTENANCE_INTERVAL = 5000})
      : _progress = progress,
        _MAINTENANCE_INTERVAL = MAINTENANCE_INTERVAL {
    assert(_progress >= 0 && _progress <= _MAINTENANCE_INTERVAL);
    assert(_MAINTENANCE_INTERVAL > 0);
  }
      int get progress => _progress;
      set progress(int value) {
        _progress = value;
      }
      set MAINTENANCE_INTERVAL(int value) {
        _MAINTENANCE_INTERVAL = value;
      }
      //progress can be as high as MAINTENANCE INTERVAL
      //progress can be as low as 0
      //return progress as a percentage
      double get progressPercentage => _progress / _MAINTENANCE_INTERVAL;    }

