import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/models/online_course.dart';
import 'package:anthony/src/utils/app_utils.dart';
import 'package:anthony/src/utils/routes.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeCertificationList extends StatelessWidget {
  const HomeCertificationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Certifications',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
            // InkWell(
            //   onTap: () => Routes.push(Routes.publication),
            //   child: Text(
            //     'View All',
            //     style: TextStyle(
            //       fontSize: 13.sp,
            //       fontWeight: FontWeight.w400,
            //       color: Colors.blue,
            //       decoration: TextDecoration.underline,
            //     ),
            //   ),
            // ),
          ],
        ),
        1.verticalSpace,
        ...OnlineCourse.all.map(
          (course) => InkWell(
            onTap: () {
              AppUtils.openUrl(course.url);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 1.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.certificate,
                    width: 4.r,
                  ),
                  1.minHorizontalSpace,
                  Expanded(
                    child: AppText.sp12(course.name).w600,
                  ),
                  1.minHorizontalSpace,
                  AppText.sp12(DateFormat('dd-MMM').format(course.startDate)),
                  AppText.sp12(' - '),
                  AppText.sp12(DateFormat('dd-MMM').format(course.endDate)),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
