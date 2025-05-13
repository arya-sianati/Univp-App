import 'package:flutter/material.dart';
import 'package:univp/data/notifiers.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
            ],
          ),
        ),
      ),
    );
  }
}
