import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption_app/item_pet.dart';
import 'package:pet_adoption_app/screen_pet_detail.dart';

import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40: 0)
      ),
      duration: Duration(milliseconds: 500),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  !isDrawerOpen
                      ? IconButton(
                          icon: Icon(
                            Icons.pets,
                            color: Colors.white70,
                          ),
                          onPressed: () {
                            setState(() {
                              xOffset = 225;
                              yOffset = 140;
                              scaleFactor = 0.6;
                              isDrawerOpen = !isDrawerOpen;
                            });
                          })
                      : IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white70,
                          ),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = !isDrawerOpen;
                            });
                          }),
                  Column(
                    children: <Widget>[
                      SizedBox(height: 40),
                      Text('Location'),
                      Row(
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.location_on,
                                color: Colors.blue,
                              ),
                              onPressed: null),
                          Text(
                            "Indonesia",
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 40.0),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: Colors.white54)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white54,
                    ),
                    hintText: 'Search Pet',
                    filled: true,
                    fillColor: Colors.white10),
              ),
            ),
            Container(
              height: 90,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                boxShadow: shadowList,
                                borderRadius: BorderRadius.circular(10)),
                            child: Image.asset(
                              categories[index]['iconPath'],
                              color: Colors.white,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Text(categories[index]['name'])
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              height: 350,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                        //crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, PetDetailScreen.routeName, arguments: PetDetailArgument(index));
                            },
                            child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                height: 145,
                                margin: EdgeInsets.only(top: 90, bottom: 90),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: shadowList,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                              ),
                              Container(
                                height: 200,
                                width: 200,
                                margin: EdgeInsets.only(top: 60),
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    boxShadow: shadowList,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20))),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                  child: Hero(
                                    tag: "tag$index",
                                    child: Image.asset(
                                      'assets/pet-cat2.png',
                                      height: 250,
                                    ),
                                  ),

                              ),
                            ],
                          ),
                          ),

                        ]);
                  }),
            ),

            /*Container(
            height: 240,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: <Widget>[
                Expanded(
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
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 60, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: shadowList,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                ),
              ],
            ),
          ),*/
          ],
        ),
      ),
    );
  }
}
