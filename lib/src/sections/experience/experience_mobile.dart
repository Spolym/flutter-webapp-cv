import 'package:flutter/material.dart';
import 'package:personal_web/src/sections/experience/experience_info.dart';
import 'package:personal_web/src/sections/experience/experience_widgets.dart';
import 'package:personal_web/src/utils/social_colors.dart';

class ExperienceSectionMobile extends StatelessWidget {
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
            // job one
            ExperienceContent(
              color: ColorApp.colorMain,
              isMobile: true,
              jobTitle: jobOneTitle,
              jobDesc: jobOneDesc,
              jobImg: jobOneImg,
            ),
            SizedBox(height: 50),
            //job two
            ExperienceContent(
              color: ColorApp.colorMain,
              isMobile: true,
              jobTitle: jobTwoTitle,
              jobDesc: jobTwoDesc,
              jobImg: jobTwoImg,
            ),
            SizedBox(height: 50),
            //job three
            ExperienceContent(
              color: ColorApp.colorMain,
              isMobile: true,
              jobTitle: jobThreeTitle,
              jobDesc: jobThreeDesc,
              jobImg: jobThreeImg,
            ),
            SizedBox(height: 50),
            //job four
            ExperienceContent(
              color: ColorApp.colorMain,
              isMobile: true,
              jobTitle: jobFourTitle,
              jobDesc: jobFourDesc,
              jobImg: jobFourImg,
            ),
            SizedBox(height: 50),
            // job five
            ExperienceContent(
              color: ColorApp.colorMain,
              isMobile: true,
              jobTitle: jobFiveTitle,
              jobDesc: jobFiveDesc,
              jobImg: jobFiveImg,
            ),
          ],
        ),
      ),
    );
  }
}
