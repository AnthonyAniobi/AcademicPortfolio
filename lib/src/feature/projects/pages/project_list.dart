import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/navbar_overlay/pages/navbar_overlay.dart';
import 'package:anthony/src/models/project.dart';
import 'package:anthony/src/utils/routes.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
            child: ResponsiveBuilder(
              builder: (context, sizingInfo) {
                if (sizingInfo.isDesktop) {
                  return projectsGrid(2);
                } else {
                  return projectsGrid(1);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget projectsGrid(int crossAxisCount) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 4,
        crossAxisSpacing: 2.r,
        mainAxisSpacing: 2.r,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: Project.all.length,
      itemBuilder: (context, index) {
        final project = Project.all[index];
        return InkWell(
          onTap: () => Routes.push(project.namedRoute),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1.r),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(1.r),
                    ),
                    child: Image.network(
                      project.displayImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                1.horizontalSpace,
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 1.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.sp14(project.name),
                        1.verticalSpace,
                        Expanded(
                          child: AppText.sp12(project.description),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
