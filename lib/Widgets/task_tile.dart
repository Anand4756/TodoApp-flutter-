import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Study flutter state'),
      trailing: Checkbox(
        onChanged: (bool? value) {},
        value: true,
        activeColor: Colors.red,
      ),
    );
  }
}
