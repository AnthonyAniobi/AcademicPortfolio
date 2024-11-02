import 'package:anthony/src/feature/home/widgets/home_mobile.dart';
import 'package:anthony/src/feature/home/widgets/home_tablet.dart';
import 'package:anthony/src/feature/home/widgets/home_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<dynamic> route(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const HomeMobile(),
      tablet: (context) => const HomeTablet(),
      desktop: (context) => const HomeWeb(),
    );
  }
}
