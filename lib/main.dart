import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habittracker/pages/homepage.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // initialize hive
  await Hive.initFlutter();

  // open a box
  await Hive.openBox("Habit_Database");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(background: Colors.blue[400]),
      useMaterial3: true),
    );
  }
}