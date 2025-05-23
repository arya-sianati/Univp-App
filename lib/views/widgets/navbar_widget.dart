import 'package:flutter/material.dart';
import 'package:univp/data/notifiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.list_rounded), label: 'Hangs'),
            NavigationDestination(icon: Icon(Icons.chat_bubble_rounded), label: 'Chats'),
            NavigationDestination(icon: Icon(Icons.settings_rounded), label: 'Settings'),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
            // Update the selected page index
            // This will trigger a rebuild of the widget tree
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
