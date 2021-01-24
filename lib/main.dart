import 'package:flutter/material.dart';
import 'package:pet_adoption_app/screen_drawer.dart';
import 'package:pet_adoption_app/screen_home.dart';
import 'package:pet_adoption_app/screen_pet_detail.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      PetDetailScreen.routeName : (context) => PetDetailScreen()
    },
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: PetAdoptionHome()));
}

class PetAdoptionHome extends StatelessWidget {
  PetAdoptionHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            DrawerScreen(),
            HomeScreen(),

          ],
        )
    );
  }
}

