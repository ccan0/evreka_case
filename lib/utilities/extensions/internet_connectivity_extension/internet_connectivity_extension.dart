import 'package:connectivity_plus/connectivity_plus.dart';

extension InternetConnectivityExtension on ConnectivityResult {
  bool get hasInternetConnection {
    return this == ConnectivityResult.wifi || this == ConnectivityResult.mobile || this == ConnectivityResult.vpn;
  }
}