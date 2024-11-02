import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PublicationListTile extends StatelessWidget {
  const PublicationListTile({
    super.key,
    required this.publication,
  });

  final Publication publication;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.r),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, publication.namedRoute,
              arguments: publication);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.r, vertical: 2.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(child: Text(publication.title)),
                  2.minHorizontalSpace,
                  Text(
                    DateFormat('MMM yyyy').format(publication.date),
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              ),
              Text(
                publication.publicationName,
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
    );
  }
}
