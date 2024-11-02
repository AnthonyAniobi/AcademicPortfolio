import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/navbar_overlay/pages/navbar_overlay.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  static Route<dynamic> route(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => const ProjectList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText.sp16('Projects'),
          5.minVerticalSpace,
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container();
              },
            ),
          ),
        ],
      ),
    );
  }
}
