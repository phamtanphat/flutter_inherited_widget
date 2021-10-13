import 'dart:math';

import 'package:flutter/material.dart';
class DemoBuildContextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Build Context"),
      ),
      body: Container(
        child: OngBa(
          child: Chame(
          ),
        ),
      ),
    );
  }
}

class OngBa extends StatelessWidget {

  Widget child;
  String title = "abc";

  OngBa({required this.child});

  static OngBa? of(BuildContext context){
    return context.findAncestorWidgetOfExactType<OngBa>();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Ong ba"),
          child
        ],
      ),
    );
  }
}

class Chame extends StatefulWidget {



  @override
  _ChameState createState() => _ChameState();

  static _ChameState of(BuildContext context){
    return context.findAncestorStateOfType<_ChameState>()!;
  }
}
// state object

class _ChameState extends State<Chame> {

  int number = 123;

  void updateNumber(int value){
    setState(() {
      number = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    OngBa? ongBa = OngBa.of(context);
    print(number);
    return Container(
      child: Column(
        children: [
          Text("Cha me"),
          Concai()
        ],
      ),
    );
  }
}

class Concai extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    _ChameState state = Chame.of(context);
    print("Build con cai");
    return Container(
      child: Column(
        children: [
          Text("Con cai"),
          Text(state.number.toString()),
          TextButton(onPressed: (){
            state.updateNumber(Random().nextInt(10) + 1);
          }, child: Text("Random"))
        ],
      ),
    );
  }
}




