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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            ContainerInheritedWidget(child: widget.child, state: this),
            ElevatedButton(onPressed: () {}, child: Text("Increase")),
            ElevatedButton(onPressed: () {}, child: Text("Decrease")),
            ElevatedButton(onPressed: () {}, child: Text("Reset")),
            ElevatedButton(onPressed: () {}, child: Text("Random Number")),
          ],
        ),
      ),
    );
  }
}

class ContainerInheritedWidget extends InheritedWidget {
  Widget child;
  _CounterPageState state;

  ContainerInheritedWidget({required this.child, required this.state})
      : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Count : 0"),
      ),
    );
  }
}
