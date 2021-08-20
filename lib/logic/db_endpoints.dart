//singlton
import 'package:flutter/services.dart';

class Database {
  static final Database instanse = Database._();
  Database._() {
    readDB();
  }

  readDB() async {
    var jsonText = await rootBundle.loadString('assets/data.json');
    print(jsonText);
    print(111111111111);
  }
}

main() {
  var x = Database.instanse;
      print(rootBundle.loadString('assets\data.json'));

}
