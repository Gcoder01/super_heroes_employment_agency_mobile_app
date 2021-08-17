import 'package:flutter/material.dart';
import 'package:super_heroes_employment_agency_mobile_app/widgets/hero_card.dart';
import 'package:super_heroes_employment_agency_mobile_app/widgets/search_widget.dart';

class HerosPage extends StatelessWidget {
  const HerosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SearchWidget(),
          HeroCard(
            heroName: 'Haitham',
            powers: 'debuging',
            starsNum: 3,
          ),
        ],
      ),
    );
  }
}
