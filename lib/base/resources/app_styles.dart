import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color darkpri = const Color(0XFF388E3C);
Color lightpri = const Color(0XFFC8E6C9);
Color pricolor = const Color(0XFF4CAF50);
Color texticonscolor = const Color(0XFFFFFFFF);
Color accenticonscolor = const Color(0XFFFFC107);
Color pritext = const Color(0XFF212121);
Color secondarytext = const Color(0XFF757575);
Color dividercolor = const Color(0XFFBDBDBD);

class AppStyles{

  static Color darkPriColor = darkpri;
  static Color lightPriColor = lightpri;
  static Color priColor = pricolor;
  static Color tetIconsColor = texticonscolor;
  static Color accentIconsColor = accentIconsColor;
  static Color priTextColor = pritext;
  static Color secondaryTextColor = secondarytext;
  static Color dividerColor = dividercolor;

  static TextStyle primaryapptext = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: priTextColor,
  );

  static TextStyle headLineStyle1 = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    color: priTextColor,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: 19.0,
    color: priTextColor,
    // fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: priTextColor,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: priTextColor,
  );

  static Color lightPrimaryColor = Color(0xffc8e6c9);
}