import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{

  String name;
  String description;

  ItemPage({Key key,
    this.name = "NAME",
    this.description  = "description description description description description description description description description description description description description description description description description description "
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          Hero(
            tag: "ItemImage",
            child: Container(
              alignment: AlignmentDirectional.topCenter,
              height: 500,
              child: Placeholder(),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.transparent,
                  height: 500,
                ),
                Hero(
                  tag: "Box",
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F5F5)
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(

                          alignment: AlignmentDirectional.topStart,

                          padding: EdgeInsets.only(
                              left: 16,
                              top: 16,
                              right: 16
                          ),
                          child: Hero(
                            tag: "ItemName1",
                            child: Material(
                              color: Colors.transparent,
                              child: Text(name),
                            ),
                          ),


                        ),
                        Container(

                          alignment: AlignmentDirectional.topStart,

                          padding: EdgeInsets.only(
                              left: 16,
                              top: 4,
                              right: 16,
                              bottom: 16
                          ),

                          decoration: BoxDecoration(
                          ),

                          child: Hero(
                            tag: "ItemDes1",
                            child: Material(
                              color: Colors.transparent,
                              child: Text(description),
                            ),
                          ),


                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}