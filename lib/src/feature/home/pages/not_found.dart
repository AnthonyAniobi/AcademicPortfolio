import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  static Route<dynamic> route(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => const NotFoundPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        10.minVerticalSpace,
        Text(
          'Page Not Found',
          style: TextStyle(
            fontSize: 16.sp,
          ),
        )
      ],
    );
  }
}
