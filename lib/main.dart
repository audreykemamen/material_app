import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MaterialAppTest',
      theme: new ThemeData(
        primarySwatch:  Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: new Home()
    );
  }

}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }



}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text('MaterialApp'),
        backgroundColor: Colors.blue,
        leading: new Icon(Icons.account_circle),
        actions: <Widget>[
          new Icon(Icons.directions_bike),
          new Icon(Icons.motorcycle)
        ],
        elevation: 20.0,
      ),
      body: new Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width ,
        margin: EdgeInsets.all(10.0),
        child: new Container(
          color: Colors.blue,
          child :  new Center(
              child: new Card(
                color: Colors.white,
                elevation: 10.0,
                child: new Container(
                  width: 175.0,
                  height: 175.0,
                  child: new FloatingActionButton(onPressed: onPressed)
                  //child: new Image.network(
                    //'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdvsT66DJfTHQA_-pI39zQlcmcUDnKMeJX1NYnAt-nFwb0BIn7&s',
                   // fit: BoxFit.cover,
                  //),
                ),
              ),
            ),
        ),
      ),
    );
  }

  void onPressed(){
    print("Pressed");
  }
}
