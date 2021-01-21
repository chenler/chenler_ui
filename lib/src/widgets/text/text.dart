import 'package:chenler_ui/src/color/color.dart';
import 'package:flutter/material.dart';

enum CUITextType {
  TitleMain,
  TitleSub,
  TitleSmall,
  TextContent,
  TextHelp,
  TextDisabled,
  TextLink
}

class CUIText extends StatelessWidget {
  CUIText(
    this.content, {
    Key key,
    this.style,
    this.type,
    this.fontColor,
    this.fontSize,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
  })  : assert(
          content != null,
        ),
        super(key: key);

  final String content;
  final CUITextType type;
  final Color fontColor;
  final double fontSize;
  final TextStyle style;
  final StrutStyle strutStyle;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final TextWidthBasis textWidthBasis;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: getStyleByType(type, fontColor, fontSize),
      strutStyle: strutStyle,
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
    );
  }

  TextStyle getStyleByType(CUITextType type, Color fontColor, double fontSize) {
    switch(type) {
      case CUITextType.TitleMain: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 28,
            color: fontColor != null ? fontColor : CUIColor.colorTitle,
            fontWeight: FontWeight.bold
        );
      }
      break;

      case CUITextType.TitleSub: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 24,
            color: fontColor != null ? fontColor : CUIColor.colorTitle,
            fontWeight: FontWeight.bold
        );
      }
      break;

      case CUITextType.TitleSmall: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 20,
            color: fontColor != null ? fontColor : CUIColor.colorTitle,
            fontWeight: FontWeight.bold
        );
      }
      break;

      case CUITextType.TextContent: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 18,
            color: fontColor != null ? fontColor : CUIColor.colorTitle,
            fontWeight: FontWeight.normal
        );
      }
      break;

      case CUITextType.TextContent: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 18,
            color: fontColor != null ? fontColor : CUIColor.colorContent,
            fontWeight: FontWeight.normal
        );
      }
      break;

      case CUITextType.TextHelp: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 16,
            color: fontColor != null ? fontColor : CUIColor.colorSub,
            fontWeight: FontWeight.normal
        );
      }
      break;

      case CUITextType.TextDisabled: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 18,
            color: fontColor != null ? fontColor : CUIColor.colorDisabled,
            fontWeight: FontWeight.normal
        );
      }
      break;

      case CUITextType.TextLink: {
        return TextStyle(
          fontSize: fontSize != null ? fontSize : 18,
            color: fontColor != null ? fontColor : Color(0xff3399ff),
            fontWeight: FontWeight.normal,
            decoration: TextDecoration.underline,
        );
      }
      break;

      default: {
        return TextStyle(
            fontSize: fontSize != null ? fontSize : 18,
            color: fontColor != null ? fontColor : CUIColor.colorContent,
            fontWeight: FontWeight.normal
        );
      }
    }
  }

}
