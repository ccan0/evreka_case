class PngConstants {
  static final PngConstants _instance = PngConstants._internal();

  factory PngConstants() {
    return _instance;
  }

  PngConstants._internal();

  static const String basePngPath = "assets/virtual/pngs";

  final String logo = "$basePngPath/logo.png";
  final String defaultMarker = "$basePngPath/default_marker.png";
  final String selectedMarker = "$basePngPath/selected_marker.png";

}