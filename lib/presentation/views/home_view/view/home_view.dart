// ignore_for_file: invalid_use_of_protected_member

import 'package:evreka_case/presentation/views/home_view/components/cards/container_detail_card.dart';
import 'package:evreka_case/presentation/views/home_view/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final HomeViewModel homeViewModel = Get.find<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Obx(
            () => GoogleMap(
              mapType: MapType.terrain,
              initialCameraPosition: const CameraPosition(
                target: LatLng(40.993389, 29.123470),
                zoom: 17.0,
              ),
              markers: homeViewModel.containerMarkers.value,
              mapToolbarEnabled: false,
              onMapCreated: (GoogleMapController controller) {
                homeViewModel.mapController.complete(controller);
              },
            ),
          ),
          Obx(
            () => ContainerDetailCard(
              isCardVisible: homeViewModel.selectedMarker.value.markerId.value != "default",
              container: homeViewModel.selectedContainer.value,
            ),
          ),
        ],
      ),
    );
  }
}
