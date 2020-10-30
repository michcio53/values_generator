import 'package:flutter/material.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';

class BottomNavigationItem extends StatelessWidget {
  BottomNavigationItem({
    @required this.iconData,
    this.onTap,
    this.title,
  }) : assert(
          iconData != null,
        );

  final IconData iconData;
  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ProjectColors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(iconData),
            if (title != null) ...[
              Text(
                title,
                style: const TextStyle(
                  color: ProjectColors.white,
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
