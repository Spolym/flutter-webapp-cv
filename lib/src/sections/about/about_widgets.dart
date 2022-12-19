import 'package:flutter/material.dart';

class AboutManImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/man.png');
  }
}

class AboutContent extends StatefulWidget {
  final Color color;
  final bool isMobile;

  const AboutContent({this.color = Colors.white, this.isMobile = false});
  @override
  _AboutContentState createState() => _AboutContentState();
}

class _AboutContentState extends State<AboutContent>
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
            'Who am I?',
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
            "Hi there! My name is Sam, and I am currently a "
            "senior in computer engineering at Michigan State University, "
            "with a concentration in software systems. I am originally from "
            "St. Joseph, Michigan and enjoy spending my free time playing disc"
            "golf and tennis, as well as spending time with friends and family."
            " Throughout my academic career, I have gained a strong foundation "
            "in software development and am eager to apply my skills in a "
            "professional setting. I am a hardworking and dedicated individual "
            "who is committed to continuously learning and growing as a "
            "professional. I am excited to see where my passion for computer "
            "engineering and software systems takes me in my career.",
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
