import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/projects/projects_info.dart';
import 'package:personal_web/src/sections/projects/projects_widgets.dart';
import 'package:personal_web/src/utils/social_colors.dart';

class ProjectsSectionMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 4, 30, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Text(
              'Professional Experiance',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: 1.4,
              ),
            ),
            SizedBox(height: 50),
            // projects one
            ProjectsContent(
              color: ColorApp.colorMain,
              isMobile: true,
              projectsTitle: projectsOneTitle,
              projectsDesc: projectsOneDesc,
              projectsImg: projectsOneImg,
            ),
            SizedBox(height: 50),
            //projects two
            ProjectsContent(
              color: ColorApp.colorMain,
              isMobile: true,
              projectsTitle: projectsTwoTitle,
              projectsDesc: projectsTwoDesc,
              projectsImg: projectsTwoImg,
            ),
            SizedBox(height: 50),
            //projects three
            ProjectsContent(
              color: ColorApp.colorMain,
              isMobile: true,
              projectsTitle: projectsThreeTitle,
              projectsDesc: projectsThreeDesc,
              projectsImg: projectsThreeImg,
            ),
            SizedBox(height: 50),
            //projects four
            ProjectsContent(
              color: ColorApp.colorMain,
              isMobile: true,
              projectsTitle: projectsFourTitle,
              projectsDesc: projectsFourDesc,
              projectsImg: projectsFourImg,
            ),
            SizedBox(height: 50),
            // projects five
            ProjectsContent(
              color: ColorApp.colorMain,
              isMobile: true,
              projectsTitle: projectsFiveTitle,
              projectsDesc: projectsFiveDesc,
              projectsImg: projectsFiveImg,
            ),
          ],
        ),
      ),
    );
  }
}
