import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/home/widgets/contact_list_widget.dart';
import 'package:anthony/src/feature/home/widgets/current_enterprice.dart';
import 'package:anthony/src/feature/home/widgets/home_certification_list.dart';
import 'package:anthony/src/feature/home/widgets/home_project_list.dart';
import 'package:anthony/src/feature/home/widgets/home_publication_list.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 4.r),
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.network(
                  AppImages.profile,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  margin: EdgeInsets.all(1.r),
                  padding: EdgeInsets.symmetric(horizontal: 4.r, vertical: 2.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1.r),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppText.sp16(
                        'BSc. Mechanical Engineering\nSpecializing in Programming and AI\nPursuing a carreer in robotics',
                      ).centerText,
                      1.minVerticalSpace,
                      const ContactsListWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        3.minVerticalSpace,
        const HomePublicationList(),
        3.minVerticalSpace,
        const HomeProjectList(crossAxisCount: 1),
        3.minHorizontalSpace,
        const HomeCertificationList(),
        5.minVerticalSpace,
        const CurrentEnterprice(),
        5.verticalSpace,
      ],
    );
  }
}
