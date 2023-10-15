import 'package:devspectrum/feed_page/feed_page.dart';
import 'package:devspectrum/post_page/post_page.dart';
import 'package:devspectrum/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    const FeedPage(),
    const PostPage(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: GNav(
          backgroundColor: Colors.black,
          gap: 3.6,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Feed',
            ),
            GButton(
              icon: Icons.add_box_rounded,
              text: 'Post',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
