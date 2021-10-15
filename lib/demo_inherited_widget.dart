import 'package:flutter/material.dart';
class DemoInheritedWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inherited Widget"),
      ),
      body: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {

  Widget widget;

  CounterPage({required this.widget});

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

            Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Increase")),
                ElevatedButton(onPressed: (){}, child: Text("Decrease")),
                ElevatedButton(onPressed: (){}, child: Text("Reset")),
                ElevatedButton(onPressed: (){}, child: Text("Random Number")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ContainerInheritedWidget extends InheritedWidget{

  Widget child;
  _CounterPageState state;


  ContainerInheritedWidget({required this.child , required this.state}) : super(child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

}

