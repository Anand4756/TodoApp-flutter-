import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[500],
          onPressed: () {
            print("clicked");
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.red,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      color: Colors.red,
                      size: 30.0,
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Your Todo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10.0,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
            )
          ],
        ));
  }
}
