import 'package:camera/camera.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              FlatButton.icon(onPressed: (){
               Navigator.pushNamed(context, '/Camera');
              },
                icon:Icon(
                  Icons.camera_alt_outlined,
                ),
                label: Text(
                  'Take Picture',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }



}

