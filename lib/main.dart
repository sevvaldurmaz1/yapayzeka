import 'package:flutter/material.dart';
import 'habit_suggestion_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alışkanlık Öneri Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AliskanlikOneriSayfasi(),
    );
  }
}

