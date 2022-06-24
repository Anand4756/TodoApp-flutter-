import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          children: [
            Text(
              "Add Todo",
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.red,
                fontSize: 35.0,
              ),
            ),
            TextField(),
            TextButton(
                onPressed: () {},
                child: Icon(
                  Icons.check,
                  size: 50.0,
                ))
          ],
        ),
      ),
    );
  }
}
