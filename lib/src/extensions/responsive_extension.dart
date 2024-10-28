import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

extension ResponsiveExtension on num {
  double get r => math.min(w, h);

  SizedBox get verticalSpace => SizedBox(height: h);
  SizedBox get horizontalSpace => SizedBox(width: w);
  SizedBox get minVerticalSpace => SizedBox(height: r);
  SizedBox get minHorizontalSpace => SizedBox(width: r);
}
