import 'package:flutter/material.dart'; 
import 'package:clothes_ar/models/shirt.dart'; 
import 'package:clothes_ar/widgets/unity_ar.dart'; 

class ShirtPreviewScreen extends StatefulWidget {

  final Shirt shirt; 

  ShirtPreviewScreen({this.shirt}); 

  @override
  _ShirtPreviewScreenState createState() => _ShirtPreviewScreenState();
}

class _ShirtPreviewScreenState extends State<ShirtPreviewScreen> {

  @override
  Widget build(BuildContext context) {
    return UnityViewPage(entryID: widget.shirt.entryID);
  }

}
