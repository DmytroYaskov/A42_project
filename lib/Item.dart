import 'package:flutter/material.dart';

import 'ItemPage.dart';

class ItemWidget extends StatelessWidget{

  String name;
  String description;

  ItemWidget({Key key,
    this.name = "NAME",
    this.description  = "description description description description description description description description description description description description description description description description description description "
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
          boxShadow: [
            new BoxShadow(
              color: Colors.black26,
              blurRadius: 12
            )
          ]
        ),
        alignment: AlignmentDirectional.bottomCenter,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Hero(
              tag: "ItemImage",
              child: Placeholder(),
            ),
            Hero(
              tag: "Box",
              child: Container(
                width: 300,
                height: 75,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)
                    )
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
                        tag: "ItemName",
                        child: Material(
                          color: Colors.transparent,
                          child:  Text(name),
                        ),
                      ),


                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: Container(

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
                          tag: "ItemDes",
                          child: Material(
                            color: Colors.transparent,
                            child: Text(description,
                              overflow: TextOverflow.fade,
                              softWrap: false,
                            ),
                          ),
                        ),


                      ),
                    ),
                  ],
                ),
              ),
              flightShuttleBuilder: (flightContext, animation, direction,
                  fromContext, toContext) {
                return Container(
                  height: 75,
                  decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12)
                      )
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
                          tag: "ItemName",
                          child: Material(
                            color: Colors.transparent,
                            child:  Text(name),
                          ),
                        ),


                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(

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
                            tag: "ItemDes",
                            child: Material(
                              color: Colors.transparent,
                              child: Text(description,
                                overflow: TextOverflow.fade,
                                softWrap: false,
                              ),
                            ),
                          ),


                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            new Center(
              child: new Material(
                child: new InkWell(
                  onTap: (){
                    print("tapped");
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return ItemPage();
                    }));
                    },
                  child: new Container(
                    width: 300.0,
                    height: 400.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  splashColor: Color.fromRGBO(0, 0, 0, 0.05),
                  highlightColor: Color.fromRGBO(0, 0, 0, 0.01),
                ),
                color: Colors.transparent,
              ),
            ),
          ],
        )
      ),
    );
  }

}