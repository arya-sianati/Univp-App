import 'package:flutter/material.dart';
import 'package:univp/data/notifiers.dart';
import 'package:univp/views/pages/login_page.dart';
import 'package:univp/views/widget_tree.dart';
import 'package:univp/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          
          padding: const EdgeInsets.all(20.0),
          child: Center(

            child: ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
              
              return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                HeroWidget(),
                const SizedBox(height: 200),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WidgetTree()),
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: isDarkMode ? Colors.white : Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Text('Get Started'),
                ),
        
                const SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Text('Login'),
                ),
              ],
            );
            },)
          ),
        ),
      ),
    );
  }
}
