// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import, must_be_immutable, duplicate_ignore, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:async';
import 'dart:ffi';

import 'package:cudo_ride/location_service.dart';
import 'package:cudo_ride/widget/navbar.dart';
import 'package:cudo_ride/widget/static/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'; 
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  TextEditingController _originController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();

  Set<Marker> _markers = Set<Marker>();
  Set<Polygon> _polygons = Set<Polygon>();
  List<LatLng> PolygonLatLngs = <LatLng>[];

  int _polygonIdCounter = 1;

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();
    _setMarker(LatLng(37.42796133580664, -122.085749655962));
  }

  void _setMarker(LatLng point) {
    setState(() {
      _markers.add(Marker(markerId: MarkerId('marker'), position: point));
    });
  }

  void _setPolygon() {
    final String PolygonIdVal = 'polygon_$_polygonIdCounter';
    _polygonIdCounter++;

    _polygons.add(
      Polygon(
        polygonId: PolygonId(PolygonIdVal),
        points: PolygonLatLngs,
        strokeWidth: 2,
        fillColor: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.blueColor,
        title: Text(''),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _originController,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(hintText: 'Origin'),
                      onChanged: (value) {
                        // print(value);
                      },
                    ),
                    TextFormField(
                      controller: _destinationController,
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(hintText: 'Destination '),
                      onChanged: (value) {
                        // print(value);
                      },
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () async {
                  var directions = await LocationService().getDirections(
                    _originController.text,
                    _destinationController.text,
                  );

                  _goToPlace(directions['start_location']['lat'],
                      directions['start_location']['lng']);
                },
                icon: Icon(Icons.search),
              ),
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              markers: _markers,
              polygons: _polygons,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              onTap: (point) {
                setState(() {
                  PolygonLatLngs.add(point);
                  _setPolygon();
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToPlace( 
     double lat,
      double lng
    //Map<String, dynamic> place
      
    )async {
    
    //final double lat = place['geometry']['location']['lat'];
    //final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12)));
    _setMarker(LatLng(lat, lng));
  }
} 

Widget imageProfile(context) {
  return Center(
    child: Stack(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/logo.png'),
        ),
        Positioned(
          bottom: 5.0,
          right: 3.0,
          child: InkWell(
            onTap: () {},
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.camera_alt,
              color: AppColors.blueColor,
              size: 15.0,
            ),
          ),
        ),
      ],
    ),
  );
}
