import 'package:flutter/material.dart';
class NewTransaction extends StatelessWidget {

  final titleController = TextEditingController();
  final amountController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: "Title"),
                controller: titleController,

              ),
              TextField(
                decoration: InputDecoration(labelText: "Amount"),
                controller: amountController,

              ),
              OutlinedButton(
                onPressed: () {
                  print(titleController.text);
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
