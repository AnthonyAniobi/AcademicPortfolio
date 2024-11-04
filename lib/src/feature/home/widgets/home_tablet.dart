import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/home/widgets/contact_list_widget.dart';
import 'package:anthony/src/feature/home/widgets/current_enterprice.dart';
import 'package:anthony/src/feature/home/widgets/home_certification_list.dart';
import 'package:anthony/src/feature/home/widgets/home_project_list.dart';
import 'package:anthony/src/feature/home/widgets/home_publication_list.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({super.key});

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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.r),
                image: const DecorationImage(
                  image: NetworkImage(AppImages.profile),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            3.minHorizontalSpace,
            SizedBox(
              width: 55.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BSc. Mechanical Engineering\nSpecializing in Programming and AI\nPursuing a carreer in robotics',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                  const ContactsListWidget(),
                ],
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
        3.minVerticalSpace,
        const HomePublicationList(),
        3.minVerticalSpace,
        const HomeProjectList(crossAxisCount: 1),
        3.minVerticalSpace,
        const HomeCertificationList(),
        5.minVerticalSpace,
        const CurrentEnterprice(),
        5.verticalSpace,
      ],
    );
  }
}
