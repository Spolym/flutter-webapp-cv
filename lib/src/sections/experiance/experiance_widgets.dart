import 'package:flutter/material.dart';

class ExperainceManImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/man.png');
  }
}

class ExperainceContent extends StatefulWidget {
  const ExperainceContent({
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
  _ExperainceContentState createState() => _ExperainceContentState();
}

class _ExperainceContentState extends State<ExperainceContent>
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
              'Professional Experiance',
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
            "A decription",
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
