import 'package:anthony/src/feature/home/pages/home.dart';
import 'package:anthony/src/feature/navbar_overlay/pages/navbar_overlay.dart';
import 'package:anthony/src/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Anthony Aniobi',
        navigatorKey: Routes.navKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        builder: (context, child) => NavbarOverlay(
          child: child,
        ),
        routes: Routes.routes,
        initialRoute: Routes.home,
        onGenerateRoute: Routes.onGenerateRouted,
      );
    });
  }
}
