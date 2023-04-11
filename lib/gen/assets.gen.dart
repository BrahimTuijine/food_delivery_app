/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/burger.png
  AssetGenImage get burger => const AssetGenImage('assets/images/burger.png');

  /// File path: assets/images/cloche.png
  AssetGenImage get cloche => const AssetGenImage('assets/images/cloche.png');

  /// File path: assets/images/delivery.png
  AssetGenImage get delivery =>
      const AssetGenImage('assets/images/delivery.png');

  /// File path: assets/images/discount.png
  AssetGenImage get discount =>
      const AssetGenImage('assets/images/discount.png');

  $AssetsImagesDonutGen get donut => const $AssetsImagesDonutGen();

  /// File path: assets/images/donut.png
  AssetGenImage get donutPng => const AssetGenImage('assets/images/donut.png');

  /// File path: assets/images/fast-delivery.png
  AssetGenImage get fastDelivery =>
      const AssetGenImage('assets/images/fast-delivery.png');

  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();

  /// File path: assets/images/logo.png
  AssetGenImage get logoPng => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/pizza-slice.png
  AssetGenImage get pizzaSlice =>
      const AssetGenImage('assets/images/pizza-slice.png');

  /// File path: assets/images/temp_donat.jpg
  AssetGenImage get tempDonat =>
      const AssetGenImage('assets/images/temp_donat.jpg');

  /// File path: assets/images/temp_donut.png
  AssetGenImage get tempDonut =>
      const AssetGenImage('assets/images/temp_donut.png');

  /// File path: assets/images/temp_vendor_bg.png
  AssetGenImage get tempVendorBg =>
      const AssetGenImage('assets/images/temp_vendor_bg.png');

  /// File path: assets/images/temp_vendor_logo.png
  AssetGenImage get tempVendorLogo =>
      const AssetGenImage('assets/images/temp_vendor_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        burger,
        cloche,
        delivery,
        discount,
        donutPng,
        fastDelivery,
        logoPng,
        pizzaSlice,
        tempDonat,
        tempDonut,
        tempVendorBg,
        tempVendorLogo
      ];
}

class $AssetsImagesDonutGen {
  const $AssetsImagesDonutGen();

  /// File path: assets/images/donut/donut_2.png
  AssetGenImage get donut2 =>
      const AssetGenImage('assets/images/donut/donut_2.png');

  /// File path: assets/images/donut/donut_3.png
  AssetGenImage get donut3 =>
      const AssetGenImage('assets/images/donut/donut_3.png');

  /// File path: assets/images/donut/donut_4.png
  AssetGenImage get donut4 =>
      const AssetGenImage('assets/images/donut/donut_4.png');

  /// File path: assets/images/donut/donut_5.png
  AssetGenImage get donut5 =>
      const AssetGenImage('assets/images/donut/donut_5.png');

  /// File path: assets/images/donut/donut_6.png
  AssetGenImage get donut6 =>
      const AssetGenImage('assets/images/donut/donut_6.png');

  /// File path: assets/images/donut/donut_7.png
  AssetGenImage get donut7 =>
      const AssetGenImage('assets/images/donut/donut_7.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [donut2, donut3, donut4, donut5, donut6, donut7];
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/donut2_logo.jpg
  AssetGenImage get donut2Logo =>
      const AssetGenImage('assets/images/logo/donut2_logo.jpg');

  /// File path: assets/images/logo/gladis_logo.jpg
  AssetGenImage get gladisLogo =>
      const AssetGenImage('assets/images/logo/gladis_logo.jpg');

  /// File path: assets/images/logo/leliuious_logo.jpg
  AssetGenImage get leliuiousLogo =>
      const AssetGenImage('assets/images/logo/leliuious_logo.jpg');

  /// File path: assets/images/logo/lila_logo.png
  AssetGenImage get lilaLogo =>
      const AssetGenImage('assets/images/logo/lila_logo.png');

  /// File path: assets/images/logo/monginis-logo.png
  AssetGenImage get monginisLogo =>
      const AssetGenImage('assets/images/logo/monginis-logo.png');

  /// File path: assets/images/logo/sweet-shop-logo.jpg
  AssetGenImage get sweetShopLogo =>
      const AssetGenImage('assets/images/logo/sweet-shop-logo.jpg');

  /// File path: assets/images/logo/tasties_logo.jpg
  AssetGenImage get tastiesLogo =>
      const AssetGenImage('assets/images/logo/tasties_logo.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        donut2Logo,
        gladisLogo,
        leliuiousLogo,
        lilaLogo,
        monginisLogo,
        sweetShopLogo,
        tastiesLogo
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
