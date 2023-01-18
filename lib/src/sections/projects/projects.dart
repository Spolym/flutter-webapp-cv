import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/projects/projects_info.dart';
import 'package:personal_web/src/sections/projects/projects_widgets.dart';

class ProjectsSection extends StatefulWidget {
  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    double margin = 50;
    return Center(
      child: ListView(
        children: [
          // projects one
          JobInfo(
            companyTitle: projectsOneTitle,
            projectsDesc: projectsOneDesc,
            companyLogo: projectsOneImg,
          ),
          SizedBox(
            height: margin,
          ),
          // projects two
          JobInfo(
            companyTitle: projectsTwoTitle,
            projectsDesc: projectsTwoDesc,
            companyLogo: projectsTwoImg,
          ),
          SizedBox(
            height: margin,
          ),
          // projects three
          JobInfo(
            companyTitle: projectsThreeTitle,
            projectsDesc: projectsThreeDesc,
            companyLogo: projectsThreeImg,
          ),
          SizedBox(
            height: margin,
          ),
          // projects four
          JobInfo(
            companyTitle: projectsFourTitle,
            projectsDesc: projectsFourDesc,
            companyLogo: projectsFourImg,
          ),
          SizedBox(
            height: margin,
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
    required this.projectsDesc,
    required this.companyLogo,
  }) : super(key: key);

  final companyTitle;
  final projectsDesc;
  final companyLogo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 2),
        SizedBox(width: 32),
        Expanded(
          flex: 8,
          child: ProjectsManImage(
            img: companyLogo,
          ),
        ),
        SizedBox(width: 36),
        Expanded(
          flex: 6,
          child: ProjectsContent(
            projectsTitle: companyTitle,
            projectsDesc: projectsDesc,
            projectsImg: companyLogo,
          ),
        ),
        Spacer(flex: 2),
      ],
    );
  }
}
