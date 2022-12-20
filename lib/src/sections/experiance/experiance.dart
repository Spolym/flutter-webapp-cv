import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/experiance/experiance_info.dart';
import 'package:personal_web/src/sections/experiance/experiance_widgets.dart';

class ExperianceSection extends StatefulWidget {
  @override
  _ExperianceSectionState createState() => _ExperianceSectionState();
}

class _ExperianceSectionState extends State<ExperianceSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Row(
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
                child: ExperainceContent(
                    jobTitle: jobOneTitle, jobDesc: jobOneDesc, jobImg: ""),
              ),
              Spacer(flex: 2),
            ],
          ),
          Row(
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
                child: ExperainceContent(
                    jobTitle: jobOneTitle, jobDesc: jobOneDesc, jobImg: ""),
              ),
              Spacer(flex: 2),
            ],
          ),
          Row(
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
                child: ExperainceContent(
                    jobTitle: jobOneTitle, jobDesc: jobOneDesc, jobImg: ""),
              ),
              Spacer(flex: 2),
            ],
          ),
        ],
      ),
    );
  }
}
