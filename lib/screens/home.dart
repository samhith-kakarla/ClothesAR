import 'package:flutter/material.dart'; 
import 'package:clothes_ar/widgets/shirts.dart'; 
import 'package:clothes_ar/widgets/pants.dart'; 
import 'package:clothes_ar/widgets/shoes.dart'; 

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'ClothesAR', 
                style: TextStyle(
                  fontSize: 50.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ), 
            SizedBox(height: 20.0), 
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Pick an item to get started!', 
                style: TextStyle(
                  fontSize: 20.0, 
                  fontWeight: FontWeight.bold, 
                ),
              ),
            ),
            SizedBox(height: 20.0), 
            ShirtsList(), 
            SizedBox(height: 10.0), 
            PantsList(),  
            SizedBox(height: 10.0), 
            ShoesList(), 
          ]
        ),
      )
    );
  }
}