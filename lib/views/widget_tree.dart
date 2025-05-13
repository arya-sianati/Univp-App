import 'package:flutter/material.dart';
import 'package:univp/data/notifiers.dart';
import 'package:univp/views/pages/home_page.dart';
import 'package:univp/views/pages/profile_page.dart';
import 'package:univp/views/pages/settings_page.dart';
import 'package:univp/views/widgets/hero_widget.dart';

import 'widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnivP'),
        actions: [
          
          IconButton(
            onPressed: () {
              // Add your action here
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: HeroWidget(),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selecedPage, child) {
          return pages.elementAt(selecedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
