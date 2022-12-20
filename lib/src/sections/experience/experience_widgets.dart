import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/experience/experience_info.dart';

class ExperienceManImage extends StatelessWidget {
  const ExperienceManImage({
    required this.img,
  });

  final String img;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 200,
      child: Image.asset(
        img,
        height: 200,
      ),
    );
  }
}

class ExperienceContent extends StatefulWidget {
  const ExperienceContent({
    this.color = Colors.white,
    this.isMobile = false,
    this.showHeader = true,
    required this.jobTitle,
    required this.jobDesc,
    required this.jobImg,
  });

  final Color color;
  final bool isMobile;
  final bool showHeader;
  final String jobTitle;
  final String jobDesc;
  final String jobImg;

  @override
  _ExperienceContentState createState() => _ExperienceContentState();
}

class _ExperienceContentState extends State<ExperienceContent>
    with TickerProviderStateMixin {
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
          if (widget.showHeader)
            Text(
              widget.jobTitle,
              style: TextStyle(
                color: widget.color,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.4,
              ),
            ),
          if (widget.showHeader)
            Container(
              width: 60,
              height: 2,
              margin: const EdgeInsets.only(top: 4, bottom: 16),
              color: widget.color,
            ),
          Text(
            widget.jobDesc,
            style: TextStyle(
              color: widget.color,
              fontSize: 16,
              letterSpacing: 1.2,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStackItem(String item) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 3,
          backgroundColor: widget.color,
        ),
        SizedBox(width: 5),
        Text(
          item,
          style: TextStyle(
            color: widget.color,
            fontSize: 16,
            letterSpacing: 1.4,
          ),
        ),
      ],
    );
  }
}
