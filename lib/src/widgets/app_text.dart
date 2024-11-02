import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppText {
  static const String fontFamily = "Sf-Pro-Display";

  static Text sp41(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 40.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp31(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 31.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp30(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 30.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp20(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp18(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp16(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp14(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp12(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp11(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );

  static Text sp10(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );
  static Text sp6(String text) => Text(
        text,
        style: TextStyle(
          fontSize: 6.sp,
          fontWeight: FontWeight.w500,
          height: 1.25,
        ),
      );
}

extension TextExtensions on Text {
  Text copyWith({
    FontWeight? fontWeight,
    TextDecoration? decoration,
    Color? color,
    int? maxLines,
    TextAlign? textAlign,
    double? height,
  }) =>
      Text(
        data ?? "",
        textAlign: textAlign ?? this.textAlign,
        maxLines: maxLines ?? this.maxLines,
        // style: style?.merge(this.style) ?? this.style,
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: fontWeight,
          color: color,
          decoration: decoration,
          height: height,
        ),
      );

  Text get white => copyWith(color: Colors.white);
  Text get black => copyWith(color: Colors.black);
  Text get blue => copyWith(color: Colors.blue);
  Text get red => copyWith(color: Colors.red);
  Text get grey => copyWith(color: Colors.grey);
  Text get green => copyWith(color: Colors.green);
  Text setColor(Color color) => copyWith(color: color);
  Text get centerText => copyWith(textAlign: TextAlign.center);
  Text get endAlign => copyWith(textAlign: TextAlign.end);

  Text get justify => copyWith(textAlign: TextAlign.justify);
  Text get w200 => copyWith(fontWeight: FontWeight.w200);
  Text get w300 => copyWith(fontWeight: FontWeight.w300);
  Text get w400 => copyWith(fontWeight: FontWeight.w400);
  Text get w500 => copyWith(fontWeight: FontWeight.w500);
  Text get w600 => copyWith(fontWeight: FontWeight.w600);
  Text get w700 => copyWith(fontWeight: FontWeight.w700);
  Text get w800 => copyWith(fontWeight: FontWeight.w800);
  Text get w900 => copyWith(fontWeight: FontWeight.w900);
  Text setMaxLines(int lines) => copyWith(maxLines: lines);
  Text get strikeThrough => copyWith(decoration: TextDecoration.lineThrough);
  Text get underline => copyWith(decoration: TextDecoration.underline);
  Text setLineHeight(double height) => copyWith(height: height);
}
