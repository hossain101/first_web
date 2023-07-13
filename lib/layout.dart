import 'package:first_web/helpers/responsiveness.dart';
import 'package:first_web/widgets/large_screen.dart';
import 'package:first_web/widgets/small_screen.dart';
import 'package:first_web/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body:ResponsiveWidget(largeScreen: LargeScreen(), mediumScreen: LargeScreen(), smallScreen: SmallScreen(), customScreen: SmallScreen(),),
    );
  }
}
