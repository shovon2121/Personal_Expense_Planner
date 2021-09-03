import 'package:flutter/cupertino.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {


  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  @override
  final List<Transaction> _userTransactions = [
    Transaction(id: 'dd', title: "ttit", amount: 20.22, date: DateTime.now()),
    Transaction(id: 'dd', title: "ttit", amount: 20.22, date: DateTime.now()),
  ];
  void _addNewTransaction(String txTitle, double txAmount){
    final newTx = Transaction(id: DateTime.now().toString(), amount: txAmount, title: txTitle, date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }


  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        //////////////////INPUT///////////
        NewTransaction(_addNewTransaction),
    ///////////////List of TX///////////////////////
        TransactionList(_userTransactions),
      ]
    );
  }
}
