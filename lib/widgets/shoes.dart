import 'package:flutter/material.dart'; 
import 'package:clothes_ar/models/shoe.dart'; 
import 'package:clothes_ar/screens/shoe_preview.dart'; 

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
              Text(
                'Shoes', 
                style: TextStyle(
                  fontSize: 22.0, 
                  fontWeight: FontWeight.bold, 
                  letterSpacing: 1.5, 
                ),
              ), 
            ],
          ),
        ),
        Container(
          height: 200.0, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: shoes.length, 
            itemBuilder: (BuildContext context, int index) {
              Shoe shoe = shoes[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (_) => ShoePreviewScreen(shoe: shoe))
                ),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210.0, 
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget> [
                      Positioned(
                        bottom: 15.0,
                        child: Container(
                          height: 120.0, 
                          width: 200.0, 
                          decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end, 
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget> [
                                Text(
                                  shoe.entryID, 
                                  style: TextStyle(
                                    color: Colors.grey, 
                                  )
                                ), 
                              ],
                            ),
                          )
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26, 
                              offset: Offset(0.0, 2.0), 
                              blurRadius: 6.0,
                            )
                          ]
                        ), 
                        child: Stack(
                          children: <Widget> [
                            Positioned(
                              left: 10.0, 
                              bottom: 10.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget> [
                                  Text(
                                    'shoe', 
                                    style: TextStyle(
                                      color: Colors.white, 
                                      fontSize: 24.0, 
                                      fontWeight: FontWeight.w600, 
                                      letterSpacing: 1.2
                                    )
                                  ), 
                                  Row(
                                    children: <Widget> [
                                      SizedBox(width: 20.0), 
                                      Text(
                                        'more shoe', 
                                        style: TextStyle(
                                          color: Colors.white, 
                                        )
                                      ),
                                    ],
                                  ), 
                                ]
                              ),
                            )
                          ],
                        )
                      ) 
                    ]
                  )
                ),
              );
            }
          )
        )
      ]
    );
  }
}