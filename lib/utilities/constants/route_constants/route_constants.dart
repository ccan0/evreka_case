class RouteConstants {
  static final RouteConstants _instance = RouteConstants._internal();

  factory RouteConstants() {
    return _instance;
  }

  RouteConstants._internal();

  final String initial = "/";
  final String loginView = "/login_view";
  final String homeView = "/home_view";

}