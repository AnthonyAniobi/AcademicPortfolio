import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/utils/app_utils.dart';
import 'package:flutter/material.dart';

class ContactsListWidget extends StatelessWidget {
  const ContactsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _linkButton('LinkedIn', AppImages.linkedin,
            'https://www.linkedin.com/in/anthony-aniobi'),
        2.minHorizontalSpace,
        _linkButton('Google Scholar', AppImages.googleScholar,
            'https://scholar.google.com/citations?user=2uUmtYUAAAAJ&hl=en'),
        2.minHorizontalSpace,
        _linkButton('Github', AppImages.github,
            'https://www.linkedin.com/in/anthony-aniobi'),
      ],
    );
  }

  Widget _linkButton(String name, String image, String url) {
    return InkWell(
      onTap: () => AppUtils.openUrl(url),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            width: 3.r,
          ),
          0.5.minHorizontalSpace,
          Text(name),
        ],
      ),
    );
  }
}
