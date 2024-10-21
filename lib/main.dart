import 'package:flutter/material.dart';

import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'FlutLab Animated Design',

      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),

      home: AnimatedDesign(),

    );

  }

}

class AnimatedDesign extends StatefulWidget {

  @override

  _AnimatedDesignState createState() => _AnimatedDesignState();

}

class _AnimatedDesignState extends State<AnimatedDesign> {

  double _width = 100.0;

  double _height = 100.0;

  Color _color = Colors.blue;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  void _animateContainer() {

    setState(() {

      final random = Random();

      _width = random.nextInt(300).toDouble() + 50;

      _height = random.nextInt(300).toDouble() + 50;

      _color = Color.fromRGBO(

        random.nextInt(256),

        random.nextInt(256),

        random.nextInt(256),

        1,

      );

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

    });

  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('FlutLab Animated Design'),

      ),

      body: Center(

        child: GestureDetector(

          onTap: _animateContainer,

          child: AnimatedContainer(

            width: _width,

            height: _height,

            decoration: BoxDecoration(

              color: _color,

              borderRadius: _borderRadius,

            ),

            duration: Duration(seconds: 1),

            curve: Curves.fastOutSlowIn,

          ),

        ),

      ),

    );

  }

}