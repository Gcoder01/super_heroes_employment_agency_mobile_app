//singlton
import 'dart:convert';

import 'package:flutter/services.dart';

class Database {
  static final Database instanse = Database._();
  Database._() {
    readDB();
  }

  readDB() async {
    //const JsonCodec json = JsonCodec();

    /*var*/ jsonText = await rootBundle.loadString('assets/data.json');
    jsonText = json.decode(jsonText);
    print(jsonText);
    print(111111111111);
  }
}
  var jsonText;

main() {
  var x = Database.instanse;
      print(9);
      print(x.readDB());
      print(jsonText);
      print(00);

}
