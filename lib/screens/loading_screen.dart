// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, prefer_const_constructors

import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longtude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
