import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 17,
          ),
        ),
        title: Text('My Calendar'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_horiz_outlined),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(value: 'Daily', child: Text('Daily')),
              const PopupMenuItem<String>(
                  value: 'Weekly', child: Text('Weekly')),
              const PopupMenuItem<String>(
                  value: 'Monthly', child: Text('Monthly')),
            ],
            onSelected: (String value) {
              // print(value);
            },
            color: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 10,
          )
//IconButton(onPressed: () {},)
        ],
        elevation: 0,
      ),
    );
  }
}
