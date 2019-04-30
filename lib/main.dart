import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:a42_project/Item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  final String pos = "pos";

  final mPageController = new PageController(
    initialPage: 0,
    keepPage: true,
    viewportFraction: 1
  );

  final mItemPageController = new PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1
  );

  @override
  Widget build(BuildContext context) {
     return new Scaffold(
       backgroundColor: Colors.white,
       body: Stack(
         children: <Widget>[
           Placeholder(),
           PageView(
             controller: mPageController,
             scrollDirection: Axis.vertical,
             children: <Widget>[

               Scaffold(
                 backgroundColor: Colors.transparent,
                 body: Stack(
                   alignment: AlignmentDirectional.bottomCenter,
                   children: <Widget>[
                     PageView(
                       controller: mItemPageController,
                       children: <Widget>[
                         ItemWidget(),
                         ItemWidget(),
                       ],
                     ),
                     Hero(
                       tag: pos,
                       child: Container(
                         padding: EdgeInsets.all(12),
                         child: Text("All Clothes",
                           style: TextStyle(
                               fontSize: 24
                           ),
                         ),
                       ),
                     )
                   ],
                 )
               ),

               Scaffold(
                   backgroundColor: Colors.transparent,
                   body: Stack(
                     alignment: AlignmentDirectional.topCenter,
                     children: <Widget>[
                       PageView(
                         controller: mItemPageController,
                         children: <Widget>[
                           ItemWidget(),
                           ItemWidget(),
                         ],
                       ),
                       Hero(
                         tag: pos,
                         child: Container(
                           padding: EdgeInsets.all(12),
                           child: Text("All Clothes",
                             style: TextStyle(
                                 fontSize: 24
                             ),
                           ),
                         ),
                       )
                     ],
                   )
               ),

             ],
           )
         ],
       ),
     );
  }
}
