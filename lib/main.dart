import 'package:calender/screen/home.dart';
import 'package:calender/screen/numButton.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {'/home': (context) => Home(), '/num': (context) => NumBUtton()},
    ));
