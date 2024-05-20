import 'dart:async';
import 'package:evreka_case/core/exception_handler/handler/exception_handler.dart';
import 'package:evreka_case/models/container_model/container_model.dart';
import 'package:evreka_case/services/container_service/service/container_service.dart';
import 'package:evreka_case/services/container_service/type/container_service_interface.dart';
import 'package:evreka_case/utilities/constants/asset_constants/png_constants/png_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeViewModel extends GetxController {
  final IContainerService containerService = ContainerService();

  final Completer<GoogleMapController> mapController = Completer<GoogleMapController>();
  RxSet<Marker> containerMarkers = <Marker>{}.obs;
  late BitmapDescriptor defaultMarkerAsset;
  late BitmapDescriptor selectedMarkerAsset;
  Rx<Marker> selectedMarker = const Marker(markerId: MarkerId("default")).obs;
  List<ContainerModel> containers = [];
  Rx<ContainerModel> selectedContainer = ContainerModel().obs;

  @override
  void onInit() async{
    await createDefaultMarkerAsset();
    await createSelectedMarkerAsset();
    await getContainers();

    createMarker();

    super.onInit();
  }

  Future<void> createDefaultMarkerAsset() async {
    defaultMarkerAsset = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(31, 40)),
      PngConstants().defaultMarker,
    );
  }

  Future<void> createSelectedMarkerAsset() async {
    selectedMarkerAsset = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(31, 40)),
      PngConstants().selectedMarker,
    );
  }

  void createMarker() {
    for (ContainerModel container in containers) {
      containerMarkers.add(
        Marker(
          markerId: MarkerId(container.containerId ?? ""),
          position: LatLng(container.latitude ?? 0, container.longitude ?? 0),
          icon: defaultMarkerAsset,
          onTap: () => markerOnTap(newMarkerId: container.containerId ?? ""),
        ),
      );
    }
  }

  void markerOnTap({required String newMarkerId}) {
    if(selectedMarker.value.markerId.value != "default") {
      containerMarkers.removeWhere((element) => element.markerId.value == selectedMarker.value.markerId.value);

      containerMarkers.add(selectedMarker.value.copyWith(iconParam: defaultMarkerAsset));
    }

    selectedMarker.value = containerMarkers.firstWhere((element) => element.markerId.value == newMarkerId);

    containerMarkers.removeWhere((element) => element.markerId.value == selectedMarker.value.markerId.value);

    containerMarkers.add(selectedMarker.value.copyWith(iconParam: selectedMarkerAsset));

    selectedContainer.value = containers.firstWhere((element) => (element.containerId ?? "") == newMarkerId);

    containerMarkers.refresh();
  }
  
  Future<void> getContainers() async{
    try {
      containers = await containerService.getContainers();
    } on Exception catch (exception) {
      ExceptionHandler().handleException(exceptionMessage: exception.toString());
    }
  }
}
