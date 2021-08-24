import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'hero_page.dart';
import 'logic/db_endpoints.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Database.instanse.datalist;
  sleep(Duration(seconds: 2));
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

