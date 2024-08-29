enum DeviceScreenType {
  mobile,
  tablet,
  desktop
}

class ScreenUtils {
  static double mobileMaxWidth = 640;
  static double tabletMaxWidth = 1008;
  static double desktopMaxWidth = tabletMaxWidth;

  static deviceScreenType(double width) {
    if(width < mobileMaxWidth) {
      return DeviceScreenType.mobile;
    } else if(width >= mobileMaxWidth && width <= tabletMaxWidth) {
      return DeviceScreenType.tablet;
    } else {
      return DeviceScreenType.desktop;
    }
  }
}