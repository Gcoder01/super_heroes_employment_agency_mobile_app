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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: ClipRRect(
                child: Image.network(imgUrl,
                    height: MediaQuery.of(context).size.width * 0.7,
                    width: MediaQuery.of(context).size.width * 0.7,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width * 0.35),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Hero name: $heroName',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              child: Text(
                'Description:\n$description',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
            ),
            Container(
              child: Text(
                'Powers:\n$powers',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
