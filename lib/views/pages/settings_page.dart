import 'package:flutter/material.dart';
import 'package:univp/data/notifiers.dart';
import 'package:univp/views/pages/welcome_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: isDarkModeNotifier,
                builder: (context, isDarkMode, child) {
                  return SwitchListTile.adaptive(
                    title: const Text('Dark Mode'),
                    value: isDarkMode,
                    onChanged: (value) {
                      isDarkModeNotifier.value = !isDarkModeNotifier.value;
                    },
                  );
                },
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomePage()),
                  );
                  selectedPageNotifier.value = 0;
                },
                child: const Text('Logout'),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
