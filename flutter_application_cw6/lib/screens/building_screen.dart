import 'package:flutter/material.dart';
import 'package:flutter_application_cw6/models/building.dart';

class BuildingScreen extends StatefulWidget {
  const BuildingScreen({Key? key, required this.building}) : super(key: key);

  final Building building;

  @override
  State<BuildingScreen> createState() => _BuildingScreenState();
}

class _BuildingScreenState extends State<BuildingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(widget.building.name),
          ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.network(widget.building.imgURL),
      )),
    );
  }
}
