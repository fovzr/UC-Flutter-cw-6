import 'package:flutter/material.dart';
import 'package:flutter_application_cw6/models/building.dart';
import 'package:flutter_application_cw6/screens/building_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var buildings = [
    Building(
      name: 'Kuwait Towers',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg',
    ),
    Building(
      name: 'liberation Tower ',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg',
    ),
    Building(
      name: 'The Grand Mousque',
      imgURL:
          'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kuwait City LandMarks'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  buildings[index].imgURL,
                  width: 80,
                  height: 80,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Text(
                    buildings[index].name,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                BuildingScreen(building: buildings[index])),
                      );
                    },
                    child: Icon(Icons.arrow_right_alt))
              ],
            ),
          );
        },
      ),
    );
  }
}
