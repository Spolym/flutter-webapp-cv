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
    double margin = 50;
    return Center(
      child: ListView(
        children: [
          // job one
          JobInfo(
            companyTitle: jobOneTitle,
            jobDesc: jobOneDesc,
            companyLogo: jobOneImg,
          ),
          SizedBox(
            height: margin,
          ),
          // job two
          JobInfo(
            companyTitle: jobTwoTitle,
            jobDesc: jobTwoDesc,
            companyLogo: jobTwoImg,
          ),
          SizedBox(
            height: margin,
          ),
          // job three
          JobInfo(
            companyTitle: jobThreeTitle,
            jobDesc: jobThreeDesc,
            companyLogo: jobThreeImg,
          ),
          SizedBox(
            height: margin,
          ),
          // job four
          JobInfo(
            companyTitle: jobFourTitle,
            jobDesc: jobFourDesc,
            companyLogo: jobFourImg,
          ),
          SizedBox(
            height: margin,
          ),
          // job five
          JobInfo(
            companyTitle: jobFiveTitle,
            jobDesc: jobFiveDesc,
            companyLogo: jobFiveImg,
          ),
          SizedBox(
            height: 75,
          )
        ],
      ),
    );
  }
}

class JobInfo extends StatelessWidget {
  const JobInfo({
    Key? key,
    required this.companyTitle,
    required this.jobDesc,
    required this.companyLogo,
  }) : super(key: key);

  final companyTitle;
  final jobDesc;
  final companyLogo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 2),
        SizedBox(width: 32),
        Expanded(
          flex: 8,
          child: ExperienceManImage(
            img: companyLogo,
          ),
        ),
        SizedBox(width: 36),
        Expanded(
          flex: 6,
          child: ExperienceContent(
            jobTitle: companyTitle,
            jobDesc: jobDesc,
            jobImg: companyLogo,
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
