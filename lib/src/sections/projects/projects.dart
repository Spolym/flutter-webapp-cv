import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/projects/projects_widgets.dart';

class ProjectsSection extends StatefulWidget {
  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Spacer(flex: 2),
          SizedBox(width: 32),
          Expanded(
            flex: 8,
            child: ProjectsManImage(),
          ),
          SizedBox(width: 36),
          Expanded(
            flex: 6,
            child: ProjectsContent(),
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
