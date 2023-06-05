import 'package:cudo_ride/widget/big_text.dart';
import 'package:cudo_ride/widget/static/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_maps_webservice/places.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _originController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();
  String? _mapStyle;

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  final CameraPosition _KGooglePlex = CameraPosition(
    target: LatLng(4.824167, 7.033611),
    zoom: 14.4746,
  );

  GoogleMapController? myMapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          //top: 150,
          //left: 0,
          //right: 0,
          //bottom: 0,
          child: GoogleMap(
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                myMapController = controller;
                myMapController!.setMapStyle(_mapStyle);
              },
              initialCameraPosition: _KGooglePlex),
        ),
        //buildProfileTile(),
        currentlocation(),
        destination(),
      ]),
    );
  }

  //Widget buildProfileTile() {
  //return //Positioned(
  //    top: 60,
  //    left: 20,
  //    right: 20,
  //    child: Container(
  //      width: 50,
  //      child: Row(
  //        children: [
  //          CircleAvatar(
  //            radius: 30,
  //            backgroundImage: AssetImage('assets/logo.png'),
  //            child: Positioned(
  //              bottom: 5.0,
  //              right: 3.0,
  //              child: InkWell(
  //                onTap: () {},
  //                // ignore: prefer_const_constructors
  //                child: Icon(
  //                  Icons.camera_alt,
  //                  color: AppColors.blueColor,
  //                  size: 15.0,
  //                ),
  //              ),
  //            ),
  //          ),
  //          const SizedBox(
  //            width: 15,
  //          ),
  //          Column(
  //            crossAxisAlignment: CrossAxisAlignment.start,
  //            children: [
  //             RichText(
  //                 text: TextSpan(children: [
  //                TextSpan(
  //                   text: 'Hello ,  ',
  //                   style: TextStyle(color: Colors.black, fontSize: 14)),
  //               TextSpan(
  //                   text: 'Mr. Ozil',
  //                   style: TextStyle(
  //                       color: AppColors.yellowColor,
  //                       fontSize: 18,
  //                       fontWeight: FontWeight.bold))
  //             ])),
  //             BigText(
  //               text: 'Your Destination Please',
  //               fontWeight: FontWeight.bold,
  //               color: AppColors.blueColor,
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   ));
  //}

  void showGoogleAutoComplete() async {
    const kGoogleApiKey = "AIzaSyD6pd200egqH9bcg_nZtjHtmsbwN18iQyw";

    Prediction? p = await PlacesAutocomplete.show(
        offset: 0,
        radius: 1000,
        strictbounds: false,
        region: 'us',
        language: 'en',
        context: context,
        mode: Mode.overlay,
        apiKey: kGoogleApiKey,
        components: [new Component(Component.country, 'us')],
        types: ['(cities)'],
        hint: 'search city');
  }

  Widget destination() {
    return Positioned(
      top: 150,
      left: 15,
      right: 15,
      child: Container(
        width: 10,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [    
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 4,
                blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          controller: _destinationController,
          readOnly: true,
          onTap: () {
            showGoogleAutoComplete();
          },
          style: TextStyle(
              fontSize: 14,
              color: AppColors.blueColor,
              fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              suffixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.search,), )),
        ),
      ),
    );
  }

  Widget currentlocation() {
    return Positioned(
      top: 80,
      left: 15,
      right: 15,
      child: Container(
        width: 10,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 4,
                blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextFormField(
          controller: _originController,
          style: TextStyle(
              fontSize: 14,
              color: AppColors.blueColor,
              fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              suffixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(Icons.search))),
        ),
      ),
    );
  }
}
