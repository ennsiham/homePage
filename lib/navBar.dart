// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:  <Widget> [
          UserAccountsDrawerHeader(accountName: Text('siham',
          style: TextStyle(color: Colors.black,fontSize: 16, fontFamily: 'Sfpro')),
           accountEmail: Text('siham@gmail.com',  style: TextStyle(color: Colors.black,fontSize: 14, fontFamily: 'Sfpro')),
           currentAccountPicture: CircleAvatar(
            child: ClipOval(
            child: Image(image: AssetImage('assets/images/image1.png'),
            width: 50,height: 50,
            fit: BoxFit.cover,),),
           ),
           decoration: BoxDecoration(
            color: Colors.blue,
            image: DecorationImage(image: AssetImage(''))
           ),
           ),
           ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              onTap:() {},
           ),
           ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              onTap:() {},
           ),
           ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              onTap:() {},
           ),
           ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorite'),
              onTap:() {},
           ),
           ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Favorite'),
              onTap:() {},
           ),
           
        ],
      ),
    );
  }
}