//20 styling container
import 'package:Expense_Planner_App/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

 // String titleInput;
  //String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutterrr"),
        ),
        body: Container(
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ///////////////////Chart////////////////////////
                Card(
                  child: Container(
                    width: 100,
                    child: Text("Chart"),
                  ),
                ),
                //////////////////INPUT///////////
                Card(
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
                ),
                ///////////////List of TX///////////////////////
                TransactionList()
              ]),
        ));
  }
}
