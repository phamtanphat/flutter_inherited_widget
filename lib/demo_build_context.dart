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
            child: Concai(),
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

class Chame extends StatelessWidget {

  Widget child;

  Chame({required this.child});

  @override
  Widget build(BuildContext context) {
    OngBa? ongBa = OngBa.of(context);
    print(ongBa?.title);
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




