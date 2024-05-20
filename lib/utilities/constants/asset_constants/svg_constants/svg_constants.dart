class SvgConstants {
  static final SvgConstants _instance = SvgConstants._internal();

  factory SvgConstants() {
    return _instance;
  }

  SvgConstants._internal();

  static const String basePngPath = "assets/virtual/svgs";

  final String errorIcon = "$basePngPath/error_icon.svg";
  final String clearIcon = "$basePngPath/clear_icon.svg";
  final String passwordVisibilityIcon = "$basePngPath/password_visiblity_icon.svg";

}