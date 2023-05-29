import 'package:flutter/material.dart';
import 'package:clone_wars_quotes/Principal.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Clone Wars Quotes",
    theme: ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        background: Colors.black,
        primary: Color.fromRGBO(24, 123, 168, 1),
      ),
    ),
    home: Principal(),
  ));
}