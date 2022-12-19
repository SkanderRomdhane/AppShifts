import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const appFont = "MyriadPro";

const darkTextColor = Color(0xFF666666);
//
const lightWidgetBackground = Color(0xFFD2D3DB);
const darkWidgetBackground = Colors.black54;
const darkScaffoldColor = Color(0xFF2E2E2E);
//input text colors
const darkFocusedBorderColor = Color(0xFFF2F2F2);
const darkUnFocusedBorderColor = Color(0xFF454545);
const lightUnFocusedBorderColor = Color(0xFF454545);
const lightFocusedBorderColor = Color(0xFFF2F2F2);
// Button room colors
const purpleColor = Color(0xff664B86);
const greenButtonColor = Color(0xff1DA722);

//DARK MODE COLORS
const darkAccentColor = Color(0xfff94740);
const darkPrimaryColor = Color(0xFF287EF5);
// const errorColorForDarkMode = Color(0xfff94740);

//LIGHT MODE COLORS
const lightTextColor = Color(0xFF666666);
const lightPrimaryColor = Color(0xFF287EF5);
const lightAccentColor = Color(0xFFD00000);
const whiteColor = Colors.white;
const successColor = Color(0xFF1FB40B);
const completeStateColor = Color(0xFF19CC95);

const warningColor = Color(0xFFFA9438);
const yellowLight = Color(0xFFF5EDCF);
const yellowDark = Color(0xFFE1C45D);
const greyDark = Color(0xFF9394A5);
const greyLight = Color.fromARGB(255, 235, 235, 235);
const blueLight = Color(0xFF1F7AF9);
const meduimGrey = Color(0xFF484B6A);

const dashboardNewOrange = Color(0xFFf0a933);
const dashboardNewBlueDark = Color(0xFF00589f);
const dashboardNewGreen = Color(0xFF61aa12);
const dashboardNewRed = Color(0xFF940000);
const dashboardNewBlueLight = Color(0xFF1b8de9);

const darkDividerColor = Color(0xFF171717);

//color header container
const headerBlueLight = Color(0xFF00a2e4);
const headerBlueDark = Color(0xFF0086bd);
// color input
const inputGrey = Color(0xFFA9A9A9);
// color text checkbox
const colorTextCheckbox = Color(0xFF436d6f);

///THESE TOW COLORS ARE FOR THE BACKGROUND GEY_LIGHT FOR LIGHT_THEME AND BLACK FOR DARCK TEME
///// color card
const lightModeBackgroundColor = Color(0xFFE4E5F1);
const darkModeBackgroundColor = Color(0XFF262626);
final ThemeData lightTheme = ThemeData(
  bottomSheetTheme: const BottomSheetThemeData(backgroundColor: Colors.white),
  iconTheme: const IconThemeData(color: darkTextColor),
  scaffoldBackgroundColor: lightModeBackgroundColor,
  cardColor: lightWidgetBackground,
  colorScheme: const ColorScheme.light(),
  brightness: Brightness.light,
  backgroundColor: Colors.white70,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black87,
  ),
  radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
          (states) => darkUnFocusedBorderColor)),
  buttonTheme: const ButtonThemeData(
    buttonColor: lightPrimaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  primaryColor: lightPrimaryColor,
  errorColor: lightAccentColor,
  snackBarTheme: const SnackBarThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2))),
    backgroundColor: successColor,
  ),
  cupertinoOverrideTheme: const CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: lightPrimaryColor,
    cursorColor: lightPrimaryColor,
    selectionHandleColor: lightPrimaryColor,
  ),
  highlightColor: meduimGrey,
  dialogTheme: const DialogTheme(
    backgroundColor: lightTextColor,
    elevation: 50,
  ),
  dialogBackgroundColor: lightTextColor,
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.black),
    labelStyle: TextStyle(color: inputGrey),
    fillColor: Colors.white,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 3.0,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: inputGrey,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      borderSide: BorderSide(color: lightAccentColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      borderSide: BorderSide(color: blueLight, width: 1.5),
    ),
  ),
  focusColor: lightAccentColor,
  hintColor: Colors.black,
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 20.0,
      color: lightTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w800,
    ),
    headline2: TextStyle(
        fontFamily: appFont,
        color: Colors.black87,
        fontSize: 18.0,
        fontWeight: FontWeight.w700),
    headline3: TextStyle(
      fontSize: 16.0,
      color: meduimGrey,
      fontFamily: appFont,
      fontWeight: FontWeight.w600,
    ),
    headline4: TextStyle(
        fontSize: 15.0,
        color: Colors.black,
        fontFamily: appFont,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal),
    headline5: TextStyle(
      fontSize: 14.0,
      color: Color(0xff5f5f5f),
      fontFamily: appFont,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      fontSize: 12.0,
      color: lightTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w200,
    ),
    subtitle1: TextStyle(
        fontSize: 12.0,
        color: lightTextColor,
        fontFamily: appFont,
        fontWeight: FontWeight.w200),
    subtitle2: TextStyle(
        fontSize: 10.0,
        color: lightTextColor,
        fontFamily: appFont,
        fontWeight: FontWeight.w100),
    bodyText1: TextStyle(
        fontSize: 13.0,
        color: lightTextColor,
        fontFamily: appFont,
        fontWeight: FontWeight.w300),
    bodyText2: TextStyle(
      fontSize: 11.0,
      color: lightTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w300,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: lightPrimaryColor,
      textStyle: const TextStyle(
          fontFamily: appFont,
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w800),
      onPrimary: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  ),
  dividerTheme: const DividerThemeData(
    space: 10,
    thickness: 1,
    color: meduimGrey,
    indent: 10,
    endIndent: 10,
  ),
  dividerColor: Colors.white,
);
final ThemeData darkTheme = ThemeData(
  bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.grey.shade900),
  iconTheme: const IconThemeData(color: lightWidgetBackground),
  scaffoldBackgroundColor: Colors.grey.shade900,
  brightness: Brightness.dark,
  cardColor: darkModeBackgroundColor,
  colorScheme: const ColorScheme.dark(),
  primaryColor: darkPrimaryColor,
  errorColor: darkAccentColor,
  hintColor: darkTextColor,
  highlightColor: greyDark,
  backgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white24,
  ),
  radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith(
          (states) => darkUnFocusedBorderColor)),
  buttonTheme: const ButtonThemeData(
    buttonColor: darkPrimaryColor,
    textTheme: ButtonTextTheme.primary,
  ),
  cardTheme: CardTheme(
    color: darkWidgetBackground,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    hintStyle: TextStyle(color: darkTextColor),
    labelStyle: TextStyle(color: darkTextColor),
    fillColor: darkScaffoldColor,
    filled: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      borderSide: BorderSide(color: darkUnFocusedBorderColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      borderSide: BorderSide(color: darkAccentColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
      borderSide: BorderSide(color: darkFocusedBorderColor),
    ),
  ),
  snackBarTheme: const SnackBarThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2))),
    backgroundColor: completeStateColor,
  ),
  cupertinoOverrideTheme: CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    scaffoldBackgroundColor: Colors.grey.shade900,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    selectionColor: darkPrimaryColor,
    cursorColor: darkPrimaryColor,
    selectionHandleColor: darkPrimaryColor,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 20.0,
      color: darkTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w800,
    ),
    headline2: TextStyle(
        fontFamily: appFont,
        color: Colors.white,
        fontSize: 18.0,
        fontWeight: FontWeight.w700),
    headline3: TextStyle(
      fontSize: 16.0,
      color: darkTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w600,
    ),
    headline4: TextStyle(
      fontSize: 15.0,
      color: greyDark,
      fontFamily: appFont,
      fontWeight: FontWeight.w500,
    ),
    headline5: TextStyle(
      fontSize: 14.0,
      color: darkTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      fontSize: 12.0,
      color: darkTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w200,
    ),
    subtitle1: TextStyle(
        fontSize: 12.0,
        color: darkTextColor,
        fontFamily: appFont,
        fontWeight: FontWeight.w200),
    subtitle2: TextStyle(
        fontSize: 10.0,
        color: darkTextColor,
        fontFamily: appFont,
        fontWeight: FontWeight.w100),
    bodyText1: TextStyle(
        fontSize: 13.0,
        color: darkTextColor,
        fontFamily: appFont,
        fontWeight: FontWeight.w300),
    bodyText2: TextStyle(
      fontSize: 11.0,
      color: darkTextColor,
      fontFamily: appFont,
      fontWeight: FontWeight.w300,
    ),
  ),
  focusColor: lightTextColor,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: darkPrimaryColor,
      textStyle: const TextStyle(
          fontFamily: appFont,
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.w800),
      onPrimary: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    ),
  ),
  dividerTheme: const DividerThemeData(
    space: 10,
    thickness: 1,
    color: darkDividerColor,
    indent: 10,
    endIndent: 10,
  ),
  dividerColor: darkDividerColor,
);
