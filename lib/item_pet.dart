import 'package:flutter/material.dart';
import 'configuration.dart';



List<Map> petList = [
  {'name':'','path':'path'},
  {}
];

class PetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(top: 40),
          ),
          Align(
            child: Image.asset('assets/pet-cat2.png'),
          )
        ],
      ),
    );
  }

}

class PetBackgroundContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 60, bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: shadowList,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
    );
  }

}