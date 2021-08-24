import 'package:flutter/material.dart';
import 'package:super_heroes_employment_agency_mobile_app/logic/db_endpoints.dart';
import 'package:super_heroes_employment_agency_mobile_app/widgets/search_widget.dart';

import 'logic/heros_list.dart';

class HerosPage extends StatelessWidget {
  const HerosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SearchWidget(),
          SizedBox(
            height: 400,
            child: ListView(
              children:
                  HerosList(Database.instanse.datalist).herosCardsSortedByName,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=>print(1),child: Icon(Icons.add),) ,
    );
  }
}
