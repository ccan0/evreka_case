import 'package:connectivity_plus/connectivity_plus.dart';

abstract class IInternetConnectivityController {
  abstract ConnectivityResult  connectivityStatus;

  void listenInternetConnectivity();
  void checkInternetConnectivity();
}