// ignore_for_file: avoid_unnecessary_containers, implementation_imports, use_build_context_synchronously, unused_field, prefer_final_fields, unused_element

import 'dart:async';
import 'dart:collection';

import 'package:emp_app/business_logic/cubit/phone_auth/phone_auth_cubit.dart';
import 'package:emp_app/constnats/my_colors.dart';
import 'package:emp_app/constnats/strings.dart';
import 'package:emp_app/helpers/location_helpers.dart';
import 'package:emp_app/presentation/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  FloatingSearchBarController controller = FloatingSearchBarController();

  static Position? position;
  Completer<GoogleMapController> _mapController = Completer();

  static final CameraPosition _myCurrentLocationCameraPosition = CameraPosition(
    bearing: 0.0,
    target: LatLng(position!.latitude, position!.longitude),
    tilt: 0.0,
    zoom: 17,
  );

  Future<void> getMyCurrentLocation() async {
    await LocationHelper.getCurrentLocation();

    position = await Geolocator.getLastKnownPosition().whenComplete(() {
      setState(() {});
    });
  }

  @override
  initState() {
    super.initState();
    getMyCurrentLocation();
  }

  Widget buildMap() {
    return GoogleMap(
      mapType: MapType.normal,
      myLocationEnabled: true,
      zoomControlsEnabled: false,
      myLocationButtonEnabled: false,
      initialCameraPosition: _myCurrentLocationCameraPosition,
      onMapCreated: (GoogleMapController controller) {
        _mapController.complete(controller);
      },
    );
  }

  Future<void> _goToMyLocation() async {
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(_myCurrentLocationCameraPosition),
    );
  }

  Widget buildFloatingSearchBar() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      controller: controller,
      elevation: 6,
      hintStyle: const TextStyle(fontSize: 18),
      queryStyle: const TextStyle(fontSize: 18),
      hint: 'Find a place...',
      border: const BorderSide(style: BorderStyle.none),
      margins: const EdgeInsets.fromLTRB(20, 70, 20, 0),
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      height: 52,
      iconColor: MyColors.blue,
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(microseconds: 600),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {},
      onFocusChanged: (_) {},
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: Icon(Icons.place, color: Colors.black.withOpacity(0.6)),
            onPressed: () {},
          ),
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: const []),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MyDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.blueGrey,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.map,
                  color: Colors.blueGrey,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.blueGrey,
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                label: ''),
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            position != null
                ? buildMap()
                : Center(
                    child: Container(
                      child:
                          const CircularProgressIndicator(color: MyColors.blue),
                    ),
                  ),
            buildFloatingSearchBar(),
          ],
        ),
        floatingActionButton: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 8, 30),
            child: FloatingActionButton(
              onPressed: _goToMyLocation,
              backgroundColor: MyColors.blue,
              child: const Icon(Icons.place, color: Colors.white),
            )),
      ),
    );
  }
}
