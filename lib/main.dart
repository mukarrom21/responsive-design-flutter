import 'package:assignment_on_responsive_design/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveDesignApp());
}

class ResponsiveDesignApp extends StatelessWidget {
  const ResponsiveDesignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
