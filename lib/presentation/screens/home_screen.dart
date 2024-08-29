import 'package:assignment_on_responsive_design/presentation/utils/screen_utils.dart';
import 'package:assignment_on_responsive_design/presentation/widgets/appbar_title.dart';
import 'package:assignment_on_responsive_design/presentation/widgets/hero_section.dart';
import 'package:assignment_on_responsive_design/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: _mobileScreenBuilder(),
      desktop: _desktopScreenBuilder(),
    );
  }

  Widget _mobileScreenBuilder() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Align(
          alignment: Alignment.centerRight,
          child: AppBarTitle(),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.greenAccent.shade400,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "SKILL UP NOW",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "TAP HARE",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              // add padding
              contentPadding: EdgeInsets.only(
                left: 40,
                top: 40,
              ),
              leading: Icon(Icons.video_library_outlined),
              title: Text('Episodes'),
            ),
            const ListTile(
              contentPadding: EdgeInsets.only(
                left: 40,
                top: 40,
              ),
              leading: Icon(Icons.info_outline),
              title: Text('About'),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(32.0),
        child: SizedBox(
          width: double.infinity,
          child: HeroSection(),
        ),
      ),
    );
  }

  Widget _desktopScreenBuilder() {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: AppBarTitle(),
                ),
                Spacer(),
                Text("Episodes", style: TextStyle(fontSize: 18)),
                SizedBox(
                  width: 20,
                ),
                Text("About", style: TextStyle(fontSize: 18)),
              ],
            ),
            HeroSection(),
          ],
        ),
      ),
    );
  }
}
