import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:multivendor_food_delivery_app/ui/Home/mt_home.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import 'mt_confirm_location.dart';

class EnterLocation extends StatefulWidget {
  EnterLocation({Key? key}) : super(key: key);

  @override
  State<EnterLocation> createState() => _EnterLocationState();
}

class _EnterLocationState extends State<EnterLocation> {
  TextEditingController textEditingController = TextEditingController();
  GoogleMapController? mapController; //contrller for Google map
  Set<Marker> markers = Set(); //markers for google map
  LatLng showLocation = const LatLng(27.7089427, 85.3086209);

  @override
  void initState() {
    markers.add(Marker(
      //add marker on google map
      markerId: MarkerId(showLocation.toString()),
      position: showLocation, //position of marker
      infoWindow: const InfoWindow(
        //popup info
        title: 'Your Current Location',
        snippet: 'Set it as Delivery Address',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            titleSpacing: 0.0,
            iconTheme: const IconThemeData(color: kTitleColor),
            // The search area hereå
            title: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: kButtonFBGColor, borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(controller: textEditingController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 4.0),
                      suffixIcon: IconButton(
                        icon: const Icon(FeatherIcons.crosshair,),
                        onPressed: () {
                          textEditingController.clear();
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Search...',
                      border: InputBorder.none),
                ),
              ),
            )),
        body: Stack(alignment: Alignment.bottomCenter, children: [
          GoogleMap(
            //Map widget from google_maps_flutter package
            zoomGesturesEnabled: true,
            //enable Zoom in, out on map
            initialCameraPosition: CameraPosition(
              //innital position in map
              target: showLocation, //initial position
              zoom: 10.0, //initial zoom level
            ),
            markers: markers,
            //markers to show on map
            mapType: MapType.normal,
            //map type
            onMapCreated: (controller) {
              //method called when map is created
              setState(() {
                mapController = controller;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, left: 24, right: 24),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: kMainColor,
                minimumSize: const Size(372, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              child: const Text("Confirm"),
            ),
          ),
        ]),
      ),
    );
  }
}
