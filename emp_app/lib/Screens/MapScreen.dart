// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../constnats/strings.dart';

class Map_Screen extends StatefulWidget {
  const Map_Screen({Key? key}) : super(key: key);

  @override
  State<Map_Screen> createState() => Map_ScreenState();
}

class Map_ScreenState extends State<Map_Screen> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(15.625648, 32.528383),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(15.625648, 32.528383),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/images/ambulance.png',
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('Ambulance Tracking'),
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(6),
            child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.popAndPushNamed(
                    context,
                    welcomeScreen,
                  );
                },
                icon: const Icon(Icons.login)),
          )
        ],
      ),
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
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
