//ValueNotifier: 
//ValueNotifier is a special type of ValueListenable that can be used to notify listeners when the value changes.
//ValueListenableBuilder:
//ValueListenableBuilder is a widget that listens to a ValueListenable and rebuilds when the value changes.

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);
