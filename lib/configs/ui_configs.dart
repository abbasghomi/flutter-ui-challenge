import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

///UiConfigs contains font style, colors for main page ui
class UiConfigs {
  // on screen resizing, for making app responsive, font size change should be limited to prevent clutters
  static const fontResizeLimit = 4.0;

  //global setting to apply font size change limiting
  static const applyLimit = true;

  static double getAdaptiveFortSize(
      {required double fontSize, bool withLimit = true}) {
    if (withLimit) {
      return fontSize.w > fontSize + fontResizeLimit
          ? fontSize + fontResizeLimit
          : fontSize.w;
    }
    return fontSize.w;
  }

  //font weights
  static FontWeight get thinFontWeight => FontWeight.w100;

  static FontWeight get extraLightFontWeight => FontWeight.w200;

  static FontWeight get lightFontWeight => FontWeight.w300;

  static FontWeight get regularFontWeight => FontWeight.w400;

  static FontWeight get mediumFontWeight => FontWeight.w500;

  static FontWeight get semiBoldFontWeight => FontWeight.w600;

  static FontWeight get boldFontWeight => FontWeight.w700;

  static FontWeight get extraBoldFontWeight => FontWeight.w800;

  static FontWeight get blackFontWeight => FontWeight.w900;

  //colors
  static Color get pageBackColor => Color(0xFF00172E);

  static Color get topMenuBackColor => Color(0x3C00172E);

  static Color get whiteTextColor => Colors.white;

  static Color get hoverTextColor => Color(0xffacd5ff);

  static Color get searchbarHintTextColor => Color(0xFF8f99a3);

  static Color get searchBarIconColor => Color(0xFF00172E);

  static Color get buttonColor => Color(0xFF0682FF);

  static Color get eventDescriptionTextColor => Color(0x99FFFFFF);

  static Color get eventBackColor => Color(0xFF192e42);

  static Color get eventMoreButtonBackColor => Color(0xFF334558);

  static Color get footerLicenseSectionBackColor => Color(0x0AFFFFFF);

  //text styles
  static TextStyle get topMenuTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 16.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get topMenuTextHoverStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: hoverTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 16.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get searchbarHintTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: searchbarHintTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 20.0, withLimit: applyLimit),
          fontWeight: regularFontWeight,
        ),
      );

  static TextStyle get searchbarSearchButtonTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 18.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get eventTitleTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 32.0, withLimit: applyLimit),
          fontWeight: blackFontWeight,
        ),
      );

  static TextStyle get eventTileTitleTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 24.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get eventTileDescriptionTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: eventDescriptionTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 16.0, withLimit: applyLimit),
          fontWeight: regularFontWeight,
        ),
      );

  static TextStyle get eventTileButtonTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 18.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get downloadOverTitleTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: eventDescriptionTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 24.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
          letterSpacing: 0.2,
        ),
      );

  static TextStyle get downloadTitleTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 44.0, withLimit: applyLimit),
          fontWeight: blackFontWeight,
          letterSpacing: -0.5,
        ),
      );

  static TextStyle get downloadBelowTitleTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: eventDescriptionTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 20.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get downloadBenefitTitleTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 24.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get downloadBenefitDescriptionTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: eventDescriptionTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 16.0, withLimit: applyLimit),
          fontWeight: regularFontWeight,
        ),
      );

  static TextStyle get footerMenuGroupTitleTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 24.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
        ),
      );

  static TextStyle get footerMenuTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: eventDescriptionTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 16.0, withLimit: applyLimit),
          fontWeight: regularFontWeight,
        ),
      );

  static TextStyle get footerMenuDownloadButtonTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: whiteTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 16.0, withLimit: applyLimit),
          fontWeight: boldFontWeight,
          letterSpacing: 0.3,
        ),
      );

  static TextStyle get footerLicenseSectionTextStyle => GoogleFonts.lato(
        textStyle: TextStyle(
          color: eventDescriptionTextColor,
          fontSize: getAdaptiveFortSize(fontSize: 12.0, withLimit: applyLimit),
          fontWeight: regularFontWeight,
        ),
      );
}
