import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/experiance/experiance_widgets.dart';

class ExperianceSection extends StatefulWidget {
  @override
  _ExperianceSectionState createState() => _ExperianceSectionState();
}

class _ExperianceSectionState extends State<ExperianceSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 8,
            child: ExperainceManImage(),
          ),
          SizedBox(width: 36),
          Expanded(
            flex: 6,
            child: ExperainceContent(),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
