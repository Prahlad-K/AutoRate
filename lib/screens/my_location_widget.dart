import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<DashboardScreen> {
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position _currentPosition;
  String _currentAddress;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      List<Placemark> p = await geolocator.placemarkFromCoordinates(
          40.7491, -73.9893);

      Placemark place = p[0];

      setState(() {
        _currentAddress =
        "40.7491, -73.9893, \n${place.locality}, ${place.postalCode}, ${place.country}";
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            //color: Colors.deepOrange,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Align(
            alignment: Alignment(0.00,-0.50,),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.location_on),
                SizedBox(
                  width: 8,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Location',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    if (_currentPosition != null &&
                        _currentAddress != null)
                      Text(_currentAddress,
                          style:
                          Theme.of(context).textTheme.bodyText2),
                  ],
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          )
        )
    );
  }
}
