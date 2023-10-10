class progress_object {
  num _progress;
  num _MAINTENANCE_INTERVAL;


  progress_object({num progress = 0, num MAINTENANCE_INTERVAL = 5000})
      : _progress = progress,
        _MAINTENANCE_INTERVAL = MAINTENANCE_INTERVAL {
    assert(_progress >= 0 && _progress <= _MAINTENANCE_INTERVAL);
    assert(_MAINTENANCE_INTERVAL > 0);
  }
      num get progress => _progress;
      set progress(num value) {
        _progress = value;
      }
      set MAINTENANCE_INTERVAL(num value) {
        _MAINTENANCE_INTERVAL = value;
      }
      //progress can be as high as MAINTENANCE INTERVAL
      //progress can be as low as 0
      //return progress as a percentage
      num get progressPercentage => _progress / _MAINTENANCE_INTERVAL;    }

