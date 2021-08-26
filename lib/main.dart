//18 styling container
import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

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
  final List<Transaction> transactions = [
    Transaction(id: 'dd', title: "ttit", amount: 20.22, date: DateTime.now()),
    Transaction(id: 'dd', title: "ttit", amount: 20.22, date: DateTime.now()),
  ];
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
                Column(
                    children: transactions.map((tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 2),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text("\$${tx.amount}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple,
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              DateFormat.yMMMd().format(tx.date),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList())
              ]),
        ));
  }
}
