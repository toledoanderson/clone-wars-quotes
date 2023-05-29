import 'package:clone_wars_quotes/Info.dart';
import 'package:clone_wars_quotes/Quotes.dart';
import 'package:clone_wars_quotes/QuotesList.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int screenIndex = 0;
  List screen = [
    const Quotes(),
    AllQuotes(),
    const Info(),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screen[screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(24, 123, 168, 1),
        unselectedItemColor: Colors.white54,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            screenIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: screenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote_rounded),
            label: "Random",
            activeIcon: Icon(Icons.format_quote_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_rounded),
            label: "All",
            activeIcon: Icon(Icons.format_list_bulleted_rounded),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline_rounded),
            label: "Info",
            activeIcon: Icon(Icons.info_outline_rounded),
          ),
        ],
      ),
    );
  }
}
