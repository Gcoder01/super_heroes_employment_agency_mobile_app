import 'package:super_heroes_employment_agency_mobile_app/logic/hero.dart';
import 'package:super_heroes_employment_agency_mobile_app/widgets/hero_card.dart';

class HerosList {
  late List<Hero> _list;
  HerosList(List<Hero> list) {
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
    List<Hero> heroList = List.from(_list);
    heroList.sort((a, b) => a.name.compareTo(b.name));
    List<HeroCard> heroCardList = [];
    for (int i = 0; i < heroList.length; i++) {
      heroCardList.add(
        HeroCard(
          heroName: heroList[i].name,
          powers: heroList[i].power,
          starsNum: heroList[i].rating.starsNum,
        ),
      );
    }
    return heroCardList;
  }

  List<HeroCard> get herosCardsSortedByPower {
    List<Hero> heroList = List.from(_list);
    heroList.sort((a, b) => a.power.compareTo(b.power));
    List<HeroCard> heroCardList = [];
    for (int i = 0; i < heroList.length; i++) {
      heroCardList.add(
        HeroCard(
          heroName: heroList[i].name,
          powers: heroList[i].power,
          starsNum: heroList[i].rating.starsNum,
        ),
      );
    }
    return heroCardList;
  }
}
