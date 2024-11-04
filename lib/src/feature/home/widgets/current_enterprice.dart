import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/utils/app_utils.dart';
import 'package:anthony/src/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CurrentEnterprice extends StatelessWidget {
  const CurrentEnterprice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppText.sp14('Current Enterprice: '),
        InkWell(
          onTap: () => AppUtils.openUrl(AppConstants.aniobiTech),
          child: AppText.sp14('Aniobi Technologies').underline.blue,
        )
      ],
    );
  }
}
