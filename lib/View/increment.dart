import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/Counter.dart';


class Increment extends StatelessWidget{

  int counter = 0;
  //final String title;
 // MyHomePage({this.title});
  void incrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).incrementCounter();
  }

  void decrementCounter(BuildContext context) {
    Provider.of<Counter>(context, listen: false).decrementCounter();
  }

  //Provider.of<counter>(context, Listen:false, incrementCouter());
  @override
  Widget build(BuildContext context) {

    var counter = Provider.of<Counter>(context).getCounter;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              RaisedButton(
                // padding: const EdgeInsets.all(20),
                child: Text("Increment"),
                color: Colors.redAccent,
                onPressed: () => incrementCounter(context),
              ),

            RaisedButton(
              // padding: const EdgeInsets.all(20),
              child: Text("decrement"),
              color: Colors.redAccent,
              onPressed: () => decrementCounter(context),
            ),
              Text(
              '$counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => incrementCounter(context),
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }

}