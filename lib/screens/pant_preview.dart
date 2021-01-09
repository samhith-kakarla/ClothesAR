import 'package:flutter/material.dart'; 
import 'package:clothes_ar/models/pant.dart'; 
import 'package:clothes_ar/widgets/unity_ar.dart'; 

class PantPreviewScreen extends StatefulWidget {

  final Pant pant; 

  PantPreviewScreen({this.pant}); 

  @override
  _PantPreviewScreenState createState() => _PantPreviewScreenState();
}

class _PantPreviewScreenState extends State<PantPreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return UnityViewPage(entryID: widget.pant.entryID);
  }
}
