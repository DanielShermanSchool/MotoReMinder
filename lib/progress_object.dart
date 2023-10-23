class progress_object {
  num _progress;
  num _MAINTENANCE_INTERVAL;


  progress_object(num progress, num MAINTENANCE_INTERVAL)
      : _progress = progress,
        _MAINTENANCE_INTERVAL = MAINTENANCE_INTERVAL {
          if(_progress >= _MAINTENANCE_INTERVAL)
          {
            _progress = _MAINTENANCE_INTERVAL;
          }
  }
      num get progress => _progress;
      set progress(num value) {
        if(value > _MAINTENANCE_INTERVAL)
        {
          _progress = _MAINTENANCE_INTERVAL;
        }
        else
        {
          _progress = value;
        }
      }
      set MAINTENANCE_INTERVAL(num value) {
        _MAINTENANCE_INTERVAL = value;
      }
      //progress can be as high as MAINTENANCE INTERVAL
      //progress can be as low as 0
      //return progress as a percentage
      num get progressPercentage {
        num distPercent = _progress / _MAINTENANCE_INTERVAL;
        return 1 - distPercent;
      }   
}

