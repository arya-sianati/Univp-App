import 'package:flutter/material.dart';
import 'package:univp/data/notifiers.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({super.key});

  @override
  State<HeroWidget> createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {


  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: Center(
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDarkMode, child) {
            return Image.asset(
              'assets/images/logo.png',
              width: 300,
              height: 300,
              color: isDarkMode ? Colors.white : Colors.black,
            );
          },
        ),
      ),
    );
  }
}
