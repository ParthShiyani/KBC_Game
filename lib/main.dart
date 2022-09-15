import 'package:flutter/material.dart';
import 'package:kbc/screens/home_page.dart';
import 'package:kbc/screens/lose_page.dart';
import 'package:kbc/screens/winner_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'winner': (context) => Winner_page(),
        'lose': (context) => Lose_Page(),
      },
    ),
  );
}
