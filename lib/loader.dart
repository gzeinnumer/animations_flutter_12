import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loader extends StatefulWidget{
  @override
  State createState() => new LoaderState();
}

class LoaderState extends State<Loader> with SingleTickerProviderStateMixin{

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(duration: new Duration(microseconds: 800), vsync: this);
    animation = new CurvedAnimation(parent: controller, curve: Curves.bounceOut);
    animation.addListener((){
      this.setState((){});
    });
    animation.addStatusListener((AnimationStatus status){
    });

    controller.repeat();
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //garis pertama
        new Container(
          color: Colors.white,
          height: 3.0,
          width: animation.value * 100.0,
        ),
        //memberi jarak
        new Padding(
          padding: new EdgeInsets.only(bottom: 5.0),
        ),
        new Container(
          color: Colors.white,
          height: 3.0,
          width: animation.value * 200.0,
        ),
        new Padding(
          padding: new EdgeInsets.only(bottom: 5.0),
        ),
        new Container(
          color: Colors.white,
          height: 3.0,
          width: animation.value * 50.0,
        )
      ],
    );
  }
}