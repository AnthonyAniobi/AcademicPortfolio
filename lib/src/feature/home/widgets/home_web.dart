import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/home/widgets/contact_list_widget.dart';
import 'package:anthony/src/feature/home/widgets/current_enterprice.dart';
import 'package:anthony/src/feature/home/widgets/home_certification_list.dart';
import 'package:anthony/src/feature/home/widgets/home_project_list.dart';
import 'package:anthony/src/feature/home/widgets/home_publication_list.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 4.r),
      children: [
        5.minVerticalSpace,
        Row(
          children: [
            const Spacer(),
            Container(
              width: 30.r,
              height: 30.r,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(AppImages.profile),
                  fit: BoxFit.cover,
                ),
                color: Colors.blue,
              ),
            ),
            3.minHorizontalSpace,
            SizedBox(
              width: 45.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText.sp16(
                    'BSc. Mechanical Engineering\nSpecializing in Programming and AI\nPursuing a carreer in robotics',
                  ).w400,
                  const ContactsListWidget()
                ],
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
        3.minVerticalSpace,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 60.w,
              child: const HomePublicationList(),
            ),
            3.minHorizontalSpace,
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.r),
                child: const HomeCertificationList(),
              ),
            ),
          ],
        ),
        3.minVerticalSpace,
        const HomeProjectList(crossAxisCount: 2),
        5.minVerticalSpace,
        const CurrentEnterprice(),
        10.verticalSpace,
      ],
    );
  }
}
