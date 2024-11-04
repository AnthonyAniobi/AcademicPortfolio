import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/models/project.dart';
import 'package:anthony/src/utils/app_utils.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.sp16(project.name),
            Image.network(
              project.displayImg,
              width: 60.r,
            ),
            InkWell(
              onTap: () => AppUtils.openUrl(project.url),
              child: AppText.sp14('Source Code').underline.blue,
            ),
            5.minVerticalSpace,
            AppText.sp14('Description:').w600,
            AppText.sp12(project.description),
            2.minVerticalSpace,
            AppText.sp14('Images:').w600,
            GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 50.r,
                childAspectRatio: 1,
                crossAxisSpacing: 1.r,
                mainAxisSpacing: 1.r,
              ),
              itemCount: project.images.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Image.network(
                  project.images[index],
                );
              },
            ),
            5.verticalSpace,
          ],
        ),
      ),
    );
  }
}
