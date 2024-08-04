import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NumBUtton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: 20,
              // width: 20,
              //color: Colors.blueAccent,
              child: TextButton(
                onPressed: () {},
                child: Expanded(
                  child: Text('1'),
                ),
              ),
            ));
      },
      itemCount: 42,
    )));
  }
}
