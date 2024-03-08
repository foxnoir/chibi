import 'package:chibi/core/theme/colours.dart';
import 'package:chibi/core/theme/fonts.dart';
import 'package:flutter/material.dart';

class Consts {
  // padding
  static const double globalContentPaddingS = 6.0;
  static const double globalContentPaddingM = 12.0;
  static const double globalContentPaddingL = 24.0;
  static const double globalWidgetpaddingS = 6.0;
  static const double globalWidgetpaddingM = 8.0;
  static const double globalWidgetpaddingL = 12.0;
  static const double globalWidgetpaddingXL = 16.0;
  static const double materialBubblePadding = 3.0;

  // global BoxShadow
  static const globalBoxShadow = BoxShadow(
    spreadRadius: 1,
    blurRadius: 2,
    color: Colours.midgray,
    offset: Offset(0, 1),
  );
  static const bottomBtnBoxShadow = BoxShadow(
      color: Colours.lightgray, blurRadius: 10.0, offset: Offset(0, -5));
  static final bottomNavBoxShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 4,
      offset: const Offset(0, 4), // bottom shadow
    ),
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 4,
      offset: const Offset(0, -4), // top shadow
    ),
  ];

// radius
  static const double radius = 6.0;
  static const double tabItemRadius = 13.0;

// elevation
  static const double elevation = 4.0;
  static const double bottomNavBarElevation = 20.0;

  // border width
  static const double borderTiny = 0.6;
  static const double borderThin = 1;
  static const double borderMedium = 1.5;
  static const double borderThick = 2;
  static const double borderXThick = 4;

  // button height
  static double btnHeight = 42;
  static double btnHeightL = 50;

  // primary and secondary buttons
  static double primaryBtnWidthS = 185;
  static double primaryBtnWidthM = 250;
  static double devSettingsBtn = 80;

  // ring size buttons
  static Color ringSizeBtnEnabledBg = Colours.white;
  static Color ringSizeBtnDisabledBg = Colours.gray;
  static Color ringSizeBtnOutlineEnabled = Colours.midgray;
  static Color ringSizeBtnOutlineDisabled = Colours.lightgray;
  static Color ringSizeBtnOutlineSelected = Colours.gray;

  static TextStyle ringSizeBtnTextStyle = const TextStyle(
    color: Colours.gray,
    fontSize: FontSize.small,
    fontWeight: FontWeights.medium,
  );

  // overlay
  static Color overlayColor =
      createMaterialColor(Colours.gray).withOpacity(0.2);

  //ringsizer
  static double ringsizerCoinRadiusInPx1 = 34;
  static double ringsizerCoinRadiusInPx2 = 38;
  static double ringsizerCoinRadiusInPx50 = 35;
  static double ringsizerCoinRadiusInPx20 = 30;
  static double ringsizerCoinRadiusMin = 50;
  static double ringsizerCoinRadiusMax = 250;
  static double ringsizerRingsizeContainerHeight = 200;
  static double ringsizerRingMinDiameterPx = 25;
  static double ringsizerRingMaxDiameterPx = 250;
  static double ringsizerMinCircumferencePx = 0;
  static double ringsizerMaxCircumferencePx = 500;

  // metal variant
  static double metalVariantHeight = 40;
  static double metalVariantHeightS = 38;

  // basic Textbutton Style
  static final btnTextStyle = MaterialStateProperty.all(const TextStyle(
      fontWeight: FontWeights.light, fontSize: FontSize.medium));

  // warning label
  static const double warningLabelHeight = 15;

  // icon text buttons
  static double iconBtnWith = primaryBtnWidthS / 3;
  static TextStyle iconBtnTextStyleLight = const TextStyle(
      fontSize: FontSize.small,
      fontWeight: FontWeights.light,
      color: Colours.secondaryColor2);
  static TextStyle iconBtnTextStyleBold = const TextStyle(
      fontSize: FontSize.small,
      fontWeight: FontWeights.bold,
      color: Colours.secondaryColor2);

  // bottom bar
  static double navIconWidth = 24;

  // SVG Icons colors can not be controlled directly from the theme.
  // Var to control icon and label colors at selected / not selected globally.
  static Color bottomNavItemSelected = Colours.secondaryColor2;
  static Color bottomNavItemNotSelected = Colours.gray;
  static Color iconColor = Colours.secondaryColor2;

  // global icons
  static double globalIconSizeL = 20;
  static double globalIconSizeM = 18;
  static double globalIconSizeS = 12;
  static double globalIconSizeXS = 10;

  // Spinner
  static Color spinnerColor = Colours.secondaryColor2;
  static double spinnerStrokeW = 3;
  static double spinnerHeightS = 42;
  static double spinnerHeightM = 132;

  // Check Box
  static double checkboxHeight = 25;
  static double checkboxTextPadding = 2;

  // Tag
  static double tagHeight = 24;
  static double tagLabelPadding = 4;

  // Taops
  static double tapLength = 60;
  static double tapPaddingBottom = 10;

  static double tabIndicatorWeight = 3;

  // Video Player
  static double videoAspectRatio = 1.067;
  static double videoContainerBottomMargin = 30;

  // Video Play Control
  static double playControlHeight = 55;
  static double playControlHeightWithoutProgressBar = 35;
  static double playControlHorizentalPadding = 70;
  static double playControlBottomPadding = 2;
  static double playControlDurationLabelHorientalPading = 5;
  static int playControlPresentingAnimationDuration = 500;
  static int playControlDisappearDuration = 5000;

  // Conntainer
  static Color containerLight = Colours.white;
  static double listItemHeight = 164;
  static double listItemImageSize = 120;
  static double similarProductsContainerHeight = 128;
  static double similarProductsImageSize = 52;

  // Product Grid
  static double productGridItemHeight = 430;
  static double productGridBrandHeight = 40;
  static double productGridIProductNameHeight = 40;
  static double productGridVariantHeight = 16;

  //Slider
  static double globalSliderTrackLimiterHeightS = 22.0;
  // static double globalSliderTrackLimiterHeightL = 98.0;
  static double globalSliderTrackStrokeSizeS = 2.0;
  static double globalSliderTrackStrokeSizeL = 16.0;
}
