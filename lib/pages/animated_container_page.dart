
import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnimatedContainerPageStete();
  }
}

class _AnimatedContainerPageStete extends State<AnimatedContainerPage>{

  double _width = 50.0;
  double _heigh = 50.0;
  Color _color = Colors.lightGreen;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _heigh,
          decoration: BoxDecoration(
            borderRadius: _borderRadiusGeometry,
            color: _color
          ),
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.play_circle_outline),
        onPressed: (){
          setState(() {
            final random = Random();

            _heigh= random.nextInt(300).toDouble();
            _width= random.nextInt(300).toDouble();

            _color = Color.fromARGB(
            random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);

            _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }

}