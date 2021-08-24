class Rating {
  late int _numberOfRatings;
  late double _persent;

  Rating(numberOfRatings, persent) {
    _numberOfRatings = numberOfRatings;
    _persent = persent;
  }

  int get starsNum {
    if (_persent < 30)
      return 1;
    else if (_persent < 50)
      return 2;
    else if (_persent < 70)
      return 3;
    else if (_persent < 90) return 4;
    return 5;
  }

  int get numberOfRatings {
    return _numberOfRatings;
  }

  double get persent {
    return _persent;
  }

  void addRating(int starsNum) {
    _persent =
        ((_numberOfRatings * _persent) + (starsNum * 20)) / _numberOfRatings;
    _numberOfRatings++;
  }
}
