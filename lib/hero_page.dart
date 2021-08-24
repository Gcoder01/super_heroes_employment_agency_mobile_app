import 'package:flutter/material.dart';
import 'package:super_heroes_employment_agency_mobile_app/logic/db_endpoints.dart';
import 'package:super_heroes_employment_agency_mobile_app/widgets/search_widget.dart';

import 'logic/heros_list.dart';

class HerosPage extends StatefulWidget {
  const HerosPage({Key? key}) : super(key: key);

  @override
  _HerosPageState createState() => _HerosPageState();
}

class _HerosPageState extends State<HerosPage> {
  String search = '';
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SearchWidget(
              (val) {
                
                setState((){search = val;print(1);});
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.67,
              child: ListView(
                children: HerosList(Database.instanse.datalist, search: search.trim(),)
                    .herosCardsSortedByName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
