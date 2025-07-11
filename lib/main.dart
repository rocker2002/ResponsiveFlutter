import 'package:flutter/material.dart';
import 'package:media_query/responsive/desktop_layout.dart';
import 'package:media_query/responsive/mobile_layout.dart';
import 'package:media_query/responsive/responsive_layout.dart';
import 'package:media_query/responsive/tablet_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(mobileLayout: MobileLayout(), tabletLayout: TabletLayout() , desktopLayout: DesktopLayout(),)
    );
  }
}

