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
    Quotes(),
    AllQuotes(),
    Info(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[screenIndex],
      bottomNavigationBar: Card( 
        margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: NavigationBar(
          onDestinationSelected: (index) {
            setState(() {
              screenIndex = index;
            });
          },
          selectedIndex: screenIndex,
          backgroundColor: Colors.transparent,
          indicatorColor: Color.fromRGBO(24, 123, 168, 1),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,

          destinations: [
            NavigationDestination(
                icon: Icon(Icons.format_quote_rounded), label: 'Random'),
            NavigationDestination(
                icon: Icon(Icons.format_list_bulleted_rounded), label: 'All'),
            NavigationDestination(
              icon: Icon(Icons.info_outline_rounded), label: 'Info'),
          ],
        ),
      ),
    );
  }
}
