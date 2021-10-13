import 'package:flutter/material.dart';
class DemoBuildContextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Build Context"),
      ),
      body: Container(
        child: ,
      ),
    );
  }
}

class OngBa extends StatelessWidget {

  Widget child;

  OngBa({required this.child});

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

class Chame extends StatelessWidget {

  Widget child;

  Chame({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Cha me"),
          child
        ],
      ),
    );
  }
}

class Concai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Con cai"),
    );
  }
}


