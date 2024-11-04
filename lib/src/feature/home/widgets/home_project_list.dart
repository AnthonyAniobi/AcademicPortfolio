import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/models/project.dart';
import 'package:anthony/src/utils/app_utils.dart';
import 'package:anthony/src/utils/routes.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeProjectList extends StatelessWidget {
  const HomeProjectList({
    super.key,
    required this.crossAxisCount,
  });

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Projects',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
            InkWell(
              onTap: () => Routes.push(Routes.projects),
              child: Text(
                'View All',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
        1.verticalSpace,
        GridView.builder(
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
        )
      ],
    );
  }
}
