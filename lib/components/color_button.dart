import 'package:flutter/material.dart';
import '../constants.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    super.key,
    required this.changeColor,
    required this.colorSelected,
  });

  final void Function(int) changeColor;
  final ColorSelection colorSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(Icons.opacity_outlined,
          color: Theme.of(context).colorScheme.onSurfaceVariant),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onSelected: changeColor,
      itemBuilder: (BuildContext context) {
        return List.generate(
          ColorSelection.values.length,
          (index) {
            final currentColor = ColorSelection.values[index];
            return PopupMenuItem<int>(
                value: index,
                enabled: currentColor != colorSelected,
                child: Wrap(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.opacity_outlined,
                        color: currentColor.color,
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(currentColor.label)),
                  ],
                ));
          },
        );
      },
    );
  }
}
