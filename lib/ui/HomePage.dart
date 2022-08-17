// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musicapp/navBar.dart';
import 'package:musicapp/ui/ObjectBox.dart';

import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        
        child: Padding(
          // ignore: prefer_const_constructors
          padding:  EdgeInsets.all(5),
          child: ListView(
            children: [
              AppBar(
                
                title: Text("Accueil",style: TextStyle(fontFamily: 'Sfpro',fontSize: 20,
                fontWeight: FontWeight.bold),)
              ),
              
               Padding(
                 padding: const EdgeInsets.all(2.0),
                 child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.20,
                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        Image(image: AssetImage('assets/images/logo.png'),width: 180,height: 160,),
                        Text('Solution inovante \net affordable ',style: TextStyle(fontSize: 20,fontFamily: 'Sfpro', 
                        fontWeight: FontWeight.bold,color: Theme.of(context).primaryColor),
                        ),
                       
                        ],
                 ),),
               ),
             
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    ObjectBox(
                      title: 'Maintenance',
                      assetPath: 'assets/images/maintenance.png',
                    ),
                    ObjectBox(
                      title: 'Consultation',
                      assetPath: 'assets/images/consultation.jpg',
                    ),
                    ObjectBox(
                      title: 'Découvrez nos services',
                      assetPath: 'assets/images/services.jpg',
                    ),
                    ObjectBox(
                      title: "Conseils d'utilisation",
                      assetPath: 'assets/images/conseils.jpg',
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
