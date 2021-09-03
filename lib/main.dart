//27 styling container
import 'package:Expense_Planner_App/widgets/new_transaction.dart';
import 'package:Expense_Planner_App/widgets/transaction_list.dart';
import 'package:Expense_Planner_App/widgets/user_transaction.dart';
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

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutterrr"),
        ),
        body:Container(
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
                  UserTransactions()

                ]),
          ),
        );
  }
}
