import 'package:calender/screen/numButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _selectedDate = DateTime.now();
  void PreviousMonth() {
    setState(() {
      _selectedDate = DateTime(_selectedDate.year, _selectedDate.month - 1);
    });
  }

  void NextMonth() {
    setState(() {
      _selectedDate = DateTime(_selectedDate.year, _selectedDate.month + 1);
    });
  }

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
                const PopupMenuItem<String>(
                    value: 'Daily', child: Text('Daily')),
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
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Row(
              //  textDirection:TextDirection.values,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(DateFormat.yMMMM().format(_selectedDate)),
                )),
                //  SizedBox(width: 400),
                IconButton(
                  onPressed: PreviousMonth,
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  ),
                ),
                IconButton(
                  onPressed: NextMonth,
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ),
              ]),
          Row(
            children: [
              Row(children: [
                Text('Sun'),
              ]),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 1000,
                        width: 1000,
                        child: Expanded(
                            child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 7),
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
                        ))),
                  )
                ],
              ))
            ],
          )
        ])));
  }
}
