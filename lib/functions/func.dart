import 'package:flutter/material.dart';

void showdia(BuildContext context) {
  showDialog(
      context: (context),
      builder: (_) => AlertDialog(
            title: Text('Dialog Title'),
            content: Text('This is my content'),
            actions: [
              FloatingActionButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ));
}

void showsnack(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text("You cannot exit"),
    action: SnackBarAction(
      label: "Dismiss",
      onPressed: () {
        // Navigator.pop(context);
      },
    ),
  ));
}
