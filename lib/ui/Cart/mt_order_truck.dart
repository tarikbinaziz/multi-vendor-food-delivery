import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:multivendor_food_delivery_app/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({Key? key}) : super(key: key);

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {

  GoogleMapController? mapController; //contrller for Google map
  // ignore: prefer_collection_literals
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        title: const Text(
          "Track Your Order",
          style: TextStyle(color: kTitleColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.xCircle,
              color: kSubTitleColor,
            ),
            alignment: const Alignment(2, 0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.crosshair,
              color: kTitleColor,
            ),
          ),
          //  IconButton(onPressed: () {  },icon: Icon(FeatherIcons.xCircle,color: kSubTitleColor,),),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
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
          Container(
            height: context.height() / 2.2,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: kTrackContainerColor),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListTile(
                leading: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: kContainerManColor),
                    child: Image.asset("assets/images/men.png")),
                title: const Text(
                  "Shaidul Islma",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: kCircleContainer),
                ),
                subtitle: Text(
                  "Food Courier",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: kCircleContainer.withOpacity(0.8)),
                ),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.star,
                      color: kStarColor,
                    ),
                    const Text(
                      " 5.0",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kCircleContainer),
                    ),
                    Text(
                      " (27)",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: kCircleContainer.withOpacity(0.6)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: context.height() / 3,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                color: kCircleContainer),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kTruckColor.withOpacity(0.10),
                      ),
                      child: const Icon(
                        IconlyBold.location,
                        color: kTruckColor,
                      ),
                    ),
                    title: const Text(
                      "Addrass",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kSubTitleColor),
                    ),
                    subtitle: const Text(
                      "421 Duke street, M54ader",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kTitleColor),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kTruckColor.withOpacity(0.10),
                      ),
                      child: const Icon(
                        IconlyBold.timeCircle,
                        color: kMainColor,
                      ),
                    ),
                    title: const Text(
                      "Delivery Time",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kSubTitleColor),
                    ),
                    subtitle: const Text(
                      "20-30 minutes",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kTitleColor),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: kContainerLevelColor.withOpacity(0.10),
                      ),
                      child: const Icon(
                        IconlyBold.shieldDone,
                        color: kContainerLevelColor,
                      ),
                    ),
                    title: const Text(
                      "Order#",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kSubTitleColor),
                    ),
                    subtitle: const Text(
                      "15462",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: kTitleColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
