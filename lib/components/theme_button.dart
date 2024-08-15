import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final Function changeThemeMode;

  const ThemeButton({super.key, required this.changeThemeMode});

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;

    return IconButton(
      icon: isBright
          ? const Icon(Icons.nightlight_round)
          : const Icon(Icons.wb_sunny),
      onPressed: () {
        changeThemeMode(!isBright);
      },
    );
  }
}
