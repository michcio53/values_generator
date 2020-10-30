import 'package:flutter/material.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    this.onTap,
    @required this.text,
    this.isActive = true,
  }) : assert(
          text != null,
        );

  final Function() onTap;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: isActive ? ProjectColors.white : ProjectColors.white.withOpacity(0.8),
        child: InkWell(
          onTap: isActive ? onTap : null,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              text,
              style: const TextStyle(
                color: ProjectColors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
