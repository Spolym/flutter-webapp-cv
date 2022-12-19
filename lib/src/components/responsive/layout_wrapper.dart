import 'package:flutter/material.dart';
import 'package:personal_web/src/components/responsive/screen_type_layout.dart';
import 'package:personal_web/src/main_page.dart';
import 'package:personal_web/src/sections/about/about.dart';
import 'package:personal_web/src/sections/about/about_mobile.dart';
import 'package:personal_web/src/sections/experiance/experiance.dart';
import 'package:personal_web/src/sections/experiance/experiance_mobile.dart';
import 'package:personal_web/src/sections/home/home.dart';
import 'package:personal_web/src/sections/home/home_mobile.dart';
import 'package:personal_web/src/sections/projects/experiance_mobile.dart';
import 'package:personal_web/src/sections/projects/projects.dart';

class LayoutWrapper extends StatefulWidget {
  @override
  _LayoutWrapperState createState() => _LayoutWrapperState();
}

class _LayoutWrapperState extends State<LayoutWrapper> {
  int currentPage = 0;

  void onItemSelected(int index) {
    if (mounted) {
      setState(() {
        currentPage = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomeSectionMobile(),
      AboutSectionMobile(),
      ExperianceSectionMobile(),
      ProjectsSectionMobile(),
    ];
    final List<Widget> pagesWeb = [
      HomeSection(),
      AboutSection(),
      ExperianceSection(),
      ProjectsSection(),
    ];

    return ScreenTypeLayout(
      mobile: MobilePage(
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
        pagesWidget: pages,
      ),
      tablet: MainPage(
        pageIndex: currentPage,
        onItemSelected: onItemSelected,
        pagesWidget: pagesWeb,
      ),
    );
  }
}
