// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_list/pages/home.dart';

void main() async {
  //init hive
  await Hive.initFlutter();
  //open a box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Todo(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.yellow,
            backgroundColor: Colors.yellow,
            accentColor: Colors.yellow,
            cardColor: Colors.yellow),
      ),
    );
  }
}
