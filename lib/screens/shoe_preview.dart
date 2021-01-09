import 'package:flutter/material.dart'; 
import 'package:clothes_ar/models/shoe.dart'; 
import 'package:clothes_ar/widgets/unity_ar.dart'; 

class ShoePreviewScreen extends StatefulWidget {

  final Shoe shoe; 

  ShoePreviewScreen({this.shoe}); 

  @override
  _ShoePreviewScreenState createState() => _ShoePreviewScreenState();
}

class _ShoePreviewScreenState extends State<ShoePreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityViewPage(entryID: widget.shoe.entryID);
  }
}
