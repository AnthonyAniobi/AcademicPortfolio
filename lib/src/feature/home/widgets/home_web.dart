import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/home/widgets/home_publication_list.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:anthony/src/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
                  Text(
                    'BSc. Mechanical Engineering\nSpecializing in Programming and AI\nPursuing a carreer in robotics',
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w400),
                  ),
                  Row(
                    children: [],
                  )
                ],
              ),
            ),
            const Spacer(flex: 3),
          ],
        ),
        3.minVerticalSpace,
        Row(
          children: [
            SizedBox(
              width: 60.w,
              child: const HomePublicationList(),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Column(
                  children: [
                    Text('hello'),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
