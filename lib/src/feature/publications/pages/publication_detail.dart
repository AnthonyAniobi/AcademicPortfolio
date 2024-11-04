import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:anthony/src/utils/app_utils.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';

class PublicationDetail extends StatelessWidget {
  const PublicationDetail({super.key, required this.publication});

  final Publication publication;

  @override
  Widget build(BuildContext context) {
    final detail = publication.details;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.sp14(
                    '${publication.type.name}${publication.status.isInReview ? ' (In Review)' : ''}')
                .w400
                .blue,
            1.minVerticalSpace,
            AppText.sp16(publication.title),
            if (publication.publicationName.isNotEmpty)
              Row(
                children: [
                  AppText.sp14('${publication.type.name} name: ').w600,
                  AppText.sp14(publication.publicationName).w400.italic,
                ],
              ),
            2.minVerticalSpace,
            Wrap(
              runSpacing: 2.r,
              spacing: 2.r,
              children: [
                ...publication.authors.map((author) {
                  return author.isMe
                      ? AppText.sp12('${authorInitals(author.name)};').w600
                      : AppText.sp12('${authorInitals(author.name)};');
                })
              ],
            ),
            2.minVerticalSpace,
            AppText.sp14(detail.$1).w600,
            AppText.sp12(detail.$2),
            2.minVerticalSpace,
            if (publication.url != null)
              InkWell(
                onTap: () => AppUtils.openUrl(publication.url!),
                child: AppText.sp14(publication.type.urlName).underline.blue,
              ),
            2.minVerticalSpace,
            if (publication.image != null) ...[
              AppText.sp14('Image:').w600,
              Image.network(
                publication.image!,
                width: 35.r,
              ),
            ],
            5.verticalSpace,
          ],
        ),
      ),
    );
  }

  String authorInitals(String name) {
    final names = name.split(' ');
    if (names.length > 1) {
      final initals =
          names.sublist(0, names.length - 1).fold('', (name, newName) {
        if (name.isNotEmpty) {
          return '$name .${newName.isEmpty ? '' : newName[0]}';
        } else {
          return newName.isEmpty ? '' : newName[0];
        }
      });
      return '$initals ${names.last}';
    } else {
      return names.firstOrNull ?? '';
    }
  }
}
