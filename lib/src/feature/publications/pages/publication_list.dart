import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/feature/home/widgets/publication_list_tile.dart';
import 'package:anthony/src/feature/navbar_overlay/pages/navbar_overlay.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PublicationList extends StatelessWidget {
  const PublicationList({super.key});

  static Route<dynamic> route(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => const PublicationList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Publication> allPub = Publication.all;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.r),
          child: Text(
            'Publications',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: allPub.length,
            padding: EdgeInsets.fromLTRB(4.r, 2.r, 4.r, 4.r),
            itemBuilder: (context, index) {
              return PublicationListTile(publication: allPub[index]);
            },
          ),
        ),
      ],
    );
  }
}
