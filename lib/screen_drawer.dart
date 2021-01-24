import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_adoption_app/configuration.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 16, bottom: 16),
      color: Colors.white10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(FontAwesomeIcons.paw, color: Colors.white,),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pet Adoption App', style: TextStyle(color: Colors.white, fontSize: 18),)
                  ],
                ),
              )
            ],
          ),
          Column(
            children:
              drawerMenuItem.map((e) => Row(
                children: <Widget>[

                  Icon(e['icon'], color: Colors.white, size: 30,),
                  SizedBox(width: 8, height: 48,),
                  Text(e['title'], style: TextStyle(color: Colors.white, fontSize: 18),)
                ],
              )).toList(),

          ),
          Row(
            children: [
              Icon(Icons.settings, color: Colors.white, size: 30,),
              SizedBox(width: 10,),
              Text('Settings', style: TextStyle(color: Colors.white)),
              SizedBox(width: 10,),
              Container(width: 1.5, height: 20, color: Colors.white,),
              SizedBox(width: 10,),
              Text('Log out', style: TextStyle(color: Colors.white)),


            ],
          )
        ],

      )
    );
  }
}
