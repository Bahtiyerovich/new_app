import 'package:flutter/material.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/constants/font_const.dart';

class NewsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Color? backgroundColor;
  final Color? textColor;
  final bool? isCenter;
  final double? fontSize;
  const NewsAppBar(
      {Key? key,
      this.title,
      this.textColor,
      this.backgroundColor,
      this.fontSize,
      this.isCenter = false})
      : super(key: key);

  @override
  Size get preferredSize => const Size(double.infinity, 70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: isCenter ?? true,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      title: Text(
        title ?? '',
        style: TextStyle(
          color: textColor ?? NewsColor.mainBlack,
          fontSize: fontSize ?? FontConst.small,
        ),
      ),
      iconTheme: IconThemeData(
        color: textColor ?? NewsColor.mainBlack,
      ),
    );
  }
}
