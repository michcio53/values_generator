import 'package:flutter/material.dart';
import 'package:values_generator/features/presentation/constants/project_assets.dart';
import 'package:values_generator/features/presentation/constants/project_colors.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ProjectColors.darkerGunpowderGray,
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Image.asset(
            ProjectAssets.logoImage,
          ),
        ),
      ),
    );
  }
}
