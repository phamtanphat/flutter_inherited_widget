import 'dart:math';

import 'package:flutter/material.dart';

class DemoInheritedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited Widget"),
      ),
      body: CounterPage(
        child: CounterText(),
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  Widget child;

  CounterPage({required this.child});

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;
  int number = 0;

  void inCrease(){
    setState(() {
      count += 1;
    });
  }

  void deCrease(){
    setState(() {
      count -= 1;
    });
  }

  void reset(){
    setState(() {
      count = 0;
    });
  }

  void randomNumber(){
    setState(() {
      number = Random().nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ContainerInheritedWidget(child: widget.child, count: count, number: number,),
            ElevatedButton(onPressed: inCrease, child: Text("Increase")),
            ElevatedButton(onPressed: deCrease, child: Text("Decrease")),
            ElevatedButton(onPressed: reset, child: Text("Reset")),
            ElevatedButton(onPressed: randomNumber, child: Text("Random Number")),
          ],
        ),
      ),
    );
  }
}

class ContainerInheritedWidget extends InheritedNotifier {
  Widget child;
  int number;
  int count;

  ContainerInheritedWidget({required this.child, required this.number , required this.count})
      : super(child: child);

  static ContainerInheritedWidget of (BuildContext context){
    // truy cap vao lop inherited o day
    return context.dependOnInheritedWidgetOfExactType(aspect: ContainerInheritedWidget)!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    if ((oldWidget as ContainerInheritedWidget).count != count ){
      return true;
    }
    return false;
  }
}

class CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Counter text build");
    ContainerInheritedWidget inheritedWidget = ContainerInheritedWidget.of(context);
    return Container(
      child: Center(
        child: Text("Count : ${inheritedWidget.count}"),
      ),
    );
  }
}
