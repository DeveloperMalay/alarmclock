import 'package:alarmapp/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Alarm Clock',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        color: Colors.black, //<-- SEE HERE
      ),
    ),
    home: const HomeView(),
  ));
}
