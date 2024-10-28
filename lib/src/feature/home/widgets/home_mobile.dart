import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Publications'),
            ),
            ListTile(
              title: Text('Projects'),
            ),
            ListTile(
              title: Text('Contact'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Anthony Aniobi',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        actions: [
          _headerLink('CV', () {}),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 4.r),
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.asset(
              'assets/images/profile_image.png',
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              children: [
                                Expanded(child: Text(pub.title)),
                                Text(
                                  DateFormat('MMM yyyy').format(pub.date),
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
