import 'package:super_heroes_employment_agency_mobile_app/logic/hero.dart';
import 'package:super_heroes_employment_agency_mobile_app/widgets/hero_card.dart';

class HerosList {
  late List<Hero> _list;
  late String search;
  HerosList(
    List<Hero> list, {
    required this.search,
  }) {
    _list = list;
  }

  List<Hero> get list {
    return _list;
  }

  void addHero(Hero hero) {
    _list.add(hero);
  }

  bool removeHero(Hero hero) {
    return _list.remove(hero);
  }

  List<HeroCard> get herosCardsSortedByName {
    if (search.length == 0) {
      List<Hero> heroList = List.from(_list);
      heroList.sort((a, b) => a.name.compareTo(b.name));
      List<HeroCard> heroCardList = [];
      for (int i = 0; i < heroList.length; i++) {
        heroCardList.add(
          HeroCard(
            heroName: heroList[i].name,
            powers: heroList[i].power,
            starsNum: heroList[i].rating.starsNum,
            imgUrl: heroList[i].imgUrl,
            description: heroList[i].description,
          ),
        );
      }
      return heroCardList;
    } else {
      List<Hero> heroList = List.from(_list);
      heroList.sort((a, b) => a.name.compareTo(b.name));
      List<HeroCard> heroCardList = [];
      for (int i = 0; i < heroList.length; i++) {
        if (heroList[i].name.contains(search))
          heroCardList.add(
            HeroCard(
              heroName: heroList[i].name,
              powers: heroList[i].power,
              starsNum: heroList[i].rating.starsNum,
              imgUrl: heroList[i].imgUrl,
              description: heroList[i].description,
            ),
          );
      }
      return heroCardList;
    }
  }

  List<HeroCard> get herosCardsSortedByPower {
    if (search.length == 0) {
      List<Hero> heroList = List.from(_list);
      heroList.sort((a, b) => a.power.compareTo(b.power));
      List<HeroCard> heroCardList = [];
      for (int i = 0; i < heroList.length; i++) {
        heroCardList.add(
          HeroCard(
            heroName: heroList[i].name,
            powers: heroList[i].power,
            starsNum: heroList[i].rating.starsNum,
            imgUrl: heroList[i].imgUrl,
            description: heroList[i].description,
          ),
        );
      }
      return heroCardList;
    } else {
      List<Hero> heroList = List.from(_list);
      heroList.sort((a, b) => a.power.compareTo(b.power));
      List<HeroCard> heroCardList = [];
      for (int i = 0; i < heroList.length; i++) {
        if (heroList[i].name.contains(search))
          heroCardList.add(
            HeroCard(
              heroName: heroList[i].name,
              powers: heroList[i].power,
              starsNum: heroList[i].rating.starsNum,
              imgUrl: heroList[i].imgUrl,
              description: heroList[i].description,
            ),
          );
      }
      return heroCardList;
    }
  }
}
