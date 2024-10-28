import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          5.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Anthony Aniobi',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _headerLink('Publications', () {}),
                    _headerLink('Projects', () {}),
                    _headerLink('Contact', () {}),
                    _headerLink('CV', () {}),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
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
                          image: AssetImage(
                            'assets/images/profile_image.png',
                          ),
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
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w400),
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
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Publications',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
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
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: Publication.all
                                .map(
                                  (pub) => Padding(
                                    padding: EdgeInsets.only(bottom: 1.r),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1.r, vertical: 2.r),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                    child: Text(pub.title)),
                                                2.minHorizontalSpace,
                                                Text(
                                                  DateFormat('MMM yyyy')
                                                      .format(pub.date),
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 12.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              pub.publicationName,
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontStyle: FontStyle.italic,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text('hello'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InkWell _headerLink(String title, void Function() onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(1.r),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 2.r,
          vertical: 1.5.r,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 12.5.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
