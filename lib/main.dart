//10 styling container
import 'package:flutter/material.dart';
import './transaction.dart';

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

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutterrr"),
        ),
        body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ///////////////////Chart////////////////////////
                Card(
                  child: Container(
                    width: 100,
                    child: Text("Chart"),
                  ),
                ),
                ///////////////List of TX///////////////////////
                Column(
                 children: transactions.map((tx){
                    return Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.purple,
                                width: 2
                              ),

                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                                "\$${tx.amount}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.purple,
                            )
                            ),

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
                                  tx.date.toString(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                              ),
                            ],
                          )
                        ],
                      ),

                    );
                 }).toList()

                )
              ]),
        ));
  }
}
