import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/experience/experience_info.dart';
import 'package:personal_web/src/sections/experience/experience_widgets.dart';

class ExperienceSection extends StatefulWidget {
  @override
  _ExperienceSectionState createState() => _ExperienceSectionState();
}

class _ExperienceSectionState extends State<ExperienceSection> {
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
                child: ExperienceManImage(
                  img: jobOneImg,
                ),
              ),
              SizedBox(width: 36),
              Expanded(
                flex: 6,
                child: ExperienceContent(
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
                child: ExperienceManImage(
                  img: jobTwoImg,
                ),
              ),
              SizedBox(width: 36),
              Expanded(
                flex: 6,
                child: ExperienceContent(
                    jobTitle: jobTwoTitle,
                    jobDesc: jobTwoDesc,
                    jobImg: jobTwoImg),
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
                child: ExperienceManImage(
                  img: jobThreeImg,
                ),
              ),
              SizedBox(width: 36),
              Expanded(
                flex: 6,
                child: ExperienceContent(
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
