import 'package:assignment_on_responsive_design/presentation/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceScreenType = ScreenUtils.deviceScreenType(size.width);

    if (deviceScreenType == DeviceScreenType.mobile) {
      return mobile;
    }
    if (deviceScreenType == DeviceScreenType.tablet) {
      return tablet ?? mobile;
    }
    return desktop;
  }
}
