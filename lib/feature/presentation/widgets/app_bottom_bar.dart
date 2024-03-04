import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key, required this.items});

  final Map<String, Map<Icon, Icon>> items;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      enableFeedback: false,
      items: [
        for (var item in items.entries)
          BottomNavigationBarItem(
            activeIcon: item.value.entries.first.key,
            icon: item.value.entries.last.key,
            label: item.key,
          ),
      ],
    );
  }
}
