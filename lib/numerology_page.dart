import 'package:flutter/material.dart';
import 'package:numerologia/views/desktop.dart';
import 'package:numerologia/views/iphone.dart';
import 'package:numerologia/views/mobile.dart';

class NumeracionTantricaScreen extends StatefulWidget {
  const NumeracionTantricaScreen({super.key});

  @override
  _NumeracionTantricaScreenState createState() =>
      _NumeracionTantricaScreenState();
}

class _NumeracionTantricaScreenState extends State<NumeracionTantricaScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // print(screenWidth);
    if (screenWidth >= 490) {
      return const NumeracionTantricaDesktop();
    } else if (screenWidth >= 380) {
      return const NumeracionTantricaMobile();
    } else {
      return const NumeracionTantricaIphone();
    }
  }
}
