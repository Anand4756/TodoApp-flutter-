import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool ischecked = false;
  void checkboxCallback(bool checkboxstate) {
    setState(() {
      ischecked = checkboxstate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Study flutter state',
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(ischecked, checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxstates;
  final Function togglecheckboxstate;
  TaskCheckbox(this.checkboxstates, this.togglecheckboxstate);

  @override
  Widget build(BuildContext context) {
    print(checkboxstates);
    return Checkbox(
      value: checkboxstates,
      onChanged: (newval) {
        togglecheckboxstate(newval);
      },
      activeColor: Colors.red,
    );
  }
}
