import 'package:flutter/material.dart';

class ProjectsManImage extends StatelessWidget {
  const ProjectsManImage({
    required this.img,
  });

  final String img;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 180,
      child: Image.asset(
        img,
        height: 175,
      ),
    );
  }
}

class ProjectsContent extends StatefulWidget {
  const ProjectsContent({
    this.color = Colors.white,
    this.isMobile = false,
    this.showHeader = true,
    required this.projectsTitle,
    required this.projectsDesc,
    required this.projectsImg,
  });

  final Color color;
  final bool isMobile;
  final bool showHeader;
  final String projectsTitle;
  final String projectsDesc;
  final String projectsImg;

  @override
  _ProjectsContentState createState() => _ProjectsContentState();
}

class _ProjectsContentState extends State<ProjectsContent>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      vsync: this,
      duration: kThemeAnimationDuration,
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.showHeader)
              Text(
                widget.projectsTitle,
                style: TextStyle(
                  color: widget.color,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.4,
                ),
              ),
            if (widget.showHeader)
              Container(
                width: 60,
                height: 2,
                margin: const EdgeInsets.only(top: 4, bottom: 16),
                color: widget.color,
              ),
            Container(
              child: Text(
                widget.projectsDesc,
                style: TextStyle(
                  color: widget.color,
                  fontSize: 16,
                  letterSpacing: 1.2,
                  height: 1.3,
                ),
              ),
            ),
          ],
        ),
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
