import 'package:flutter/material.dart';

class ExperainceManImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/man.png');
  }
}

class ExperainceContent extends StatefulWidget {
  final Color color;
  final bool isMobile;

  const ExperainceContent({this.color = Colors.white, this.isMobile = false});
  @override
  _ExperainceContentState createState() => _ExperainceContentState();
}

class _ExperainceContentState extends State<ExperainceContent>
    with TickerProviderStateMixin {
  static bool showAbout = false;
  static bool showStack1 = false;
  static bool showStack2 = false;

  static bool whoSeen = false;
  static bool aboutSeen = false;
  static bool stack1Seen = false;
  static bool stack2Seen = false;

  final stack = [
    'Dart (Flutter)',
    'Java (Android)',
    'Firebase',
    'MySQL',
  ];

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
            'Professional Experiance',
            style: TextStyle(
              color: widget.color,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              letterSpacing: 1.4,
            ),
          ),
          Container(
            width: 60,
            height: 2,
            margin: const EdgeInsets.only(top: 4, bottom: 16),
            color: widget.color,
          ),
          Text(
            "",
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
