import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pioda_web/pages/guides_page.dart';
import 'package:pioda_web/pages/pricing_page.dart';
import 'package:pioda_web/pages/stories_page.dart';
import 'package:pioda_web/pages/team_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    GuidesPage(),
    PricingPage(),
    TeamPage(),
    StoriesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Colors.black,
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Colors.deepOrangeAccent
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 100,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/sewing.png',
                  width: 40,
                  height: 40,
                ),
                Row(
                  children: [
                    navItem(
                      title: 'Guides',
                      index: 0,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(
                      title: 'Pricing',
                      index: 1,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(
                      title: 'Team',
                      index: 2,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    navItem(
                      title: 'Stories',
                      index: 3,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add button press logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        Colors.deepOrange, // Set the button background color
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(20), // Set the button radius
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.manage_accounts_rounded,
                          color: Colors.white), // Set the icon color
                      SizedBox(width: 5),
                      Text('Account',
                          style: GoogleFonts.poppins(
                              color: Colors.white)), // Set the text color
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 76),
            // conten
            pages[selectedIndex],
            SizedBox(height: 84),
            // footer
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.arrow_circle_down, color: Colors.deepOrange),
                SizedBox(width: 20),
                Text('Scroll to Learn More',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
