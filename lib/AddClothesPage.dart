import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddClothesPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _Page();

}

class _Page extends State<AddClothesPage> {



  var _Image = null;
  String dropdownValue = 'One';

  Future getImage() async {
    var galleryFile = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      // maxHeight: 50.0,
      // maxWidth: 50.0,
    );
    print("You selected gallery image : " + galleryFile.path);
    setState(() {
      _Image = galleryFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(

          children: <Widget>[
            Material(
              child: InkWell(
                onTap: (){
                  print("tapped image");
                  getImage();
                },
                child: new Container(
                  height: 300,
                  child: _Image == null ? Center(
                    child: Icon(Icons.add_photo_alternate,size: 50,),
                  )
                      : Image.file(_Image),
                ),
                splashColor: Color.fromRGBO(0, 0, 0, 0.05),
                highlightColor: Color.fromRGBO(0, 0, 0, 0.01),
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Column(
                children: <Widget>[
                  new TextFormField(
                      obscureText: false, // Use secure text for passwords.
                      decoration: new InputDecoration(
                          labelText: 'Name'
                      ),
                      //validator: this._validatePassword,
                      onSaved: (String value) {
                        print(value);
                      }
                  ),
                  new TextFormField(
                    maxLines: 2,
                      obscureText: false, // Use secure text for passwords.
                      decoration: new InputDecoration(
                          labelText: 'Description'
                      ),
                      //validator: this._validatePassword,
                      onSaved: (String value) {
                        print(value);
                      }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Text("Type "),
                      DropdownButton<String>(
                        value: dropdownValue,
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['One', 'Two', 'Free', 'Four','djhdjdfjhdhjdfjhds']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
  
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.done),
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey,
      ),
      
    );
  }

}