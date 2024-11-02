import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/home/widgets/home_publication_list.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 4.r),
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            AppImages.profile,
            fit: BoxFit.cover,
          ),
        ),
        3.minVerticalSpace,
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BSc. Mechanical Engineering\nSpecializing in Programming and AI\nPursuing a carreer in robotics',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
            Row(
              children: [],
            )
          ],
        ),
        3.minVerticalSpace,
        const HomePublicationList(),
      ],
    );
  }
}
