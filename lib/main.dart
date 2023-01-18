import 'package:flutter/material.dart';
import 'package:personal_web/src/components/responsive/layout_wrapper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Samuel Polym CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.grey,
        fontFamily: 'Ubuntu',
      ),
      home: LayoutWrapper(),
    );
  }
}
