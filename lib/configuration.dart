import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Color(0xff1d1d1d);

List<Map> drawerMenuItem = [
  {'icon':FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': FontAwesomeIcons.donate, 'title': 'Donation'},
  {'icon' : FontAwesomeIcons.plus, 'title': 'Add Pet'},
  {'icon': Icons.favorite, 'title':'Favorites' },
  {'icon': FontAwesomeIcons.user, 'title':'Profile'}
];


List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.white12, blurRadius: 30, offset: Offset(0,10))
];


List<Map> categories = [
  {'name':'Cats','iconPath':'assets/cat.png'},
  {'name': 'Dog', 'iconPath': 'assets/dog.png'},
  {'name':'Horse', 'iconPath':'assets/horse.png'},
  {'name': 'Parrot', 'iconPath': 'assets/parrot.png'},
  {'name': 'Rabbit', 'iconPath': 'assets/rabbit.png'}
];

