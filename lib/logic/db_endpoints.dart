//singlton

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:super_heroes_employment_agency_mobile_app/logic/hero.dart';
import 'package:super_heroes_employment_agency_mobile_app/logic/rating.dart';

class Database {
  static final Database instanse = Database._();
  final List<Hero> _list = [];
  Database._() {
    readDB();
  }

  readDB() async {
    CollectionReference collectionRef =
        FirebaseFirestore.instance.collection('heros');
    QuerySnapshot querySnapshot = await collectionRef.get();
    var allData = querySnapshot.docs.map((doc) => doc).toList();
    print(allData.toString());
    for (var i = 0; i < allData.length; i++) {
      _list.add(
        Hero(
            allData[i].id,
            allData[i]["hero_name"],
            allData[i]["powers"],
            new Rating(allData[i]["rating"]["number_of_raters"],
                allData[i]["rating"]["rating_persent"]),
            allData[i]["description"],
            allData[i]["img_url"]),
      );
    }
  }

  List<Hero> get datalist {
    return _list;
  }
}
