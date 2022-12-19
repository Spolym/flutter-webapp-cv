import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/experiance/experiance_widgets.dart';
import 'package:personal_web/src/utils/social_colors.dart';

class ExperianceSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 4, 30, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExperainceManImage(),
            SizedBox(height: 32),
            ExperainceContent(color: ColorApp.colorMain, isMobile: true)
          ],
        ),
      ),
    );
  }
}
