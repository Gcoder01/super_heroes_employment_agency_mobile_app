import 'package:super_heroes_employment_agency_mobile_app/logic/rating.dart';

class Hero {
  late String _name;
  late String _power;
  late Rating _rating;
  late String _description;

  Hero(String name, String power, Rating rating, String description) {
    _name = name;
    _power = power;
    _rating = rating;
    _description = description;
  }

  String get name {
    return _name;
  }

  void set name(String name) {
    _name = name;
  }

  String get power {
    return _power;
  }

  void set power(String power) {
    _power = power;
  }

  Rating get rating {
    return _rating;
  }

  void set rating(Rating rating) {
    _rating = rating;
  }
}
