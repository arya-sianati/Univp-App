import 'package:flutter/material.dart';
import 'package:univp/data/notifiers.dart';
import 'package:univp/views/pages/chats_page.dart';
import 'package:univp/views/pages/hangs_page.dart';
import 'package:univp/views/pages/settings_page.dart';
import 'package:univp/views/widgets/hero_widget.dart';

import 'widgets/navbar_widget.dart';

List<Widget> pages = [HangsPage(), ChatsPage(), SettingsPage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UnivP'),
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
