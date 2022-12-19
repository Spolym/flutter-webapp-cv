import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:personal_web/src/components/typewriter.dart';
import 'package:personal_web/src/utils/social_colors.dart';
import 'package:personal_web/src/utils/url_helper.dart';

/// Introductory texts with the Hire Me button as well
class Introduction extends StatefulWidget {
  @override
  _IntroductionState createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction>
    with SingleTickerProviderStateMixin {
  static bool helloSeen = false;
  static bool nameSeen = false;
  static bool positionSeen = false;
  static bool abstractSeen = false;

  static bool showName = false;
  static bool showPosition = false;
  static bool showAbstract = false;
  static bool showHireMe = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: kThemeAnimationDuration,
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Hello, I am...',
            style: TextStyle(
              color: ColorApp.colorMain,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.4,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Samuel Polym',
            style: TextStyle(
              color: Colors.blueGrey[900],
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Mobile App Developer',
            style: TextStyle(
              color: Colors.blueGrey[900],
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 24),
          Text(
            "I build neat, cool and scalable mobile apps with Flutter and I'm an aspiring deep learning engineer.\n"
            'I love to learn and build new stuff that are beneficial to the community and cool to work on.\n'
            'I also have great interest in the open source community.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              letterSpacing: 1.2,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}

class _HireMeButton extends StatefulWidget {
  @override
  __HireMeButtonState createState() => __HireMeButtonState();
}

class __HireMeButtonState extends State<_HireMeButton> {
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onHover: (value) {
        if (mounted) {
          setState(() {
            hovered = value;
          });
        }
      },
      child: AnimatedContainer(
        height: 50,
        width: 160,
        duration: kThemeAnimationDuration,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(width: 1.4, color: ColorApp.colorMain),
          borderRadius: BorderRadius.all(Radius.circular(50)),
          color: hovered
              ? ColorApp.colorMain.withOpacity(1.0)
              : Colors.transparent,
        ),
        child: AnimatedDefaultTextStyle(
          duration: kThemeAnimationDuration,
          style: TextStyle(
            color: hovered ? Colors.white : ColorApp.colorMain,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
    );
  }
}

class HeroImage extends StatelessWidget {
  final Color borderColor;
  final Color backgroundColor;

  const HeroImage({
    this.borderColor = Colors.white,
    this.backgroundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 2),
        image: DecorationImage(
          image: AssetImage('assets/images/me.png'),
        ),
      ),
    );
  }
}
