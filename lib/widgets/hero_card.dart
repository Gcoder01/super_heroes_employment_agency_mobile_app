import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HeroCard extends StatelessWidget {
  late BuildContext _context;
  TextStyle _tableFontStyle = TextStyle(
    fontSize: 18,
  );

  String heroName, powers;
  int starsNum;

  HeroCard({
    Key? key,
    required this.heroName,
    required this.powers,
    required this.starsNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(),
          right: BorderSide(),
          bottom: BorderSide(),
          left: BorderSide(),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _dataBox(
                _customText(
                  'Hero Name',
                ),
                isTitle: true,
              ),
              _dataBox(
                _customText(
                  heroName,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _dataBox(
                _customText(
                  'Powers',
                ),
                isTitle: true,
              ),
              _dataBox(
                _customText(
                  powers,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _dataBox(
                _customText(
                  'Rate',
                ),
                isTitle: true,
              ),
              _dataBox(
                _stars(
                  starsNum,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _dataBox(Widget widget, {bool isTitle = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 1,
        vertical: 2,
      ),
      child: Container(
        width: isTitle
            ? (MediaQuery.of(_context).size.width * 0.3 - 4)
            : (MediaQuery.of(_context).size.width * 0.6 - 4),
        height: 30,
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(),
            right: BorderSide(),
            bottom: BorderSide(),
            left: BorderSide(),
          ),
        ),
        child: widget,
      ),
    );
  }

  Text _customText(String string) {
    return Text(
      string,
      style: _tableFontStyle,
      textAlign: TextAlign.center,
    );
  }

  Widget _stars(int num) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: num >= 1 ? Color(0xff635ae9) : Color(0xffc5cfd9),
        ),
        Icon(
          Icons.star,
          color: num >= 2 ? Color(0xff635ae9) : Color(0xffc5cfd9),
        ),
        Icon(
          Icons.star,
          color: num >= 3 ? Color(0xff635ae9) : Color(0xffc5cfd9),
        ),
        Icon(
          Icons.star,
          color: num >= 4 ? Color(0xff635ae9) : Color(0xffc5cfd9),
        ),
        Icon(
          Icons.star,
          color: num >= 5 ? Color(0xff635ae9) : Color(0xffc5cfd9),
        ),
      ],
    );
  }
}
