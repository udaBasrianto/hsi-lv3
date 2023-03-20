import 'package:flutter/material.dart';
import 'package:pioda_web/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LandingPage());
  }
}
