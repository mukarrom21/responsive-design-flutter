import 'package:assignment_on_responsive_design/presentation/utils/screen_utils.dart';
import 'package:assignment_on_responsive_design/presentation/widgets/responsive_builder.dart';
import 'package:flutter/material.dart';

import 'green_button.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return ResponsiveBuilder(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildHeroSectionMainContent(screenWidth: width),
          const GreenButton(
            buttonText: "Join Course",
          ),
        ],
      ),
      tablet: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width * 0.6),
          child: Column(
            children: [
              _buildHeroSectionMainContent(screenWidth: width),
              const GreenButton(
                buttonText: "Join Course",
              ),
            ],
          ),
        ),
      ),
      desktop: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: width * 0.6,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: _buildHeroSectionMainContent(screenWidth: width),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 50,
                ),
                child: GreenButton(
                  buttonText: "Join Course",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroSectionMainContent({required double screenWidth}) {
    final double titleSize = screenWidth <= ScreenUtils.mobileMaxWidth
        ? 32
        : screenWidth >= ScreenUtils.mobileMaxWidth &&
                screenWidth <= ScreenUtils.tabletMaxWidth
            ? 34
            : 36;
    final double paragraphSize = screenWidth <= ScreenUtils.mobileMaxWidth
        ? 16
        : screenWidth >= ScreenUtils.mobileMaxWidth &&
                screenWidth <= ScreenUtils.tabletMaxWidth
            ? 18
            : 20;
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "FLUTTER WEB.",
          style: TextStyle(
            fontSize: titleSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "THE BASICS",
          style: TextStyle(
            fontSize: titleSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "In this course we will go over the basics of using flutter web development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.",
          style: TextStyle(
            fontSize: paragraphSize,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
