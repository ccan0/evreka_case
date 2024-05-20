class UrlConstants {
  static final UrlConstants _instance = UrlConstants._internal();

  factory UrlConstants() {
    return _instance;
  }

  UrlConstants._internal();

  final String baseUrl = "";
  final String containers = "/containers";

}