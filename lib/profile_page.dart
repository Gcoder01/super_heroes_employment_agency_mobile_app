import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  String imgUrl, heroName, description, powers;
  ProfilePage(
      {Key? key,
      required this.imgUrl,
      required this.heroName,
      required this.description,
      required this.powers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              child: Image.network(
                imgUrl,
                height: 50,
                width: 50,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            Text('Hero name: $heroName'),
            Text('Description:\n$description'),
            Text('Powers:\n$powers'),
          ],
        ),
      ),
    );
  }
}
