import 'package:flutter/material.dart';
import 'package:news_app/core/constants/color_const.dart';
import 'package:news_app/core/constants/font_const.dart';

class NewsTextStyle {
  static get contentGreyTextStyle => TextStyle(
        color: NewsColor.mainGrey,
        fontSize: FontConst.extraSmall + 1.0,
        fontFamily: 'sfpro',
      );

  static get contentBlackTextStyle => TextStyle(
        color: NewsColor.mainBlack,
        fontSize: FontConst.extraSmall + 1.0,
        fontFamily: 'sfpro',
      );

  static get labelTextStyle => TextStyle(
        color: NewsColor.mainBlack,
        fontSize: FontConst.normal,
        fontFamily: 'sfpro',
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
      );

  static get controllerTextStyle => TextStyle(
        color: NewsColor.mainBlack,
        fontSize: FontConst.small,
        fontFamily: 'sfpro',
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
      );
      static get switchTextStyle => TextStyle(
        color: NewsColor.mainBlack,
        fontSize: FontConst.small,
        fontFamily: 'sfpro',
        fontWeight: FontWeight.w600,
        letterSpacing: 1.5,
      );
      static get contentBlueTextStyle => TextStyle(
        color: NewsColor.mainBlue,
        fontSize: FontConst.small,
        fontFamily: 'sfpro',
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
      );
}
