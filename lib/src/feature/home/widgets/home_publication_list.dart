import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/home/widgets/publication_list_tile.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePublicationList extends StatelessWidget {
  const HomePublicationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                (pub) => PublicationListTile(
                  publication: pub,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
