import 'package:flutter/material.dart';

import 'hero_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'super_heroes_employment_agency_mobile_app',
      home: HerosPage(),
    );
  }
}
