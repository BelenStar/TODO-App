import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
   createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        backgroundColor: Color(0xFF3b4a6b),
      ),
      body:   
      Container(
        width: 600,
        height: 100,
        margin: EdgeInsets.only(top: 600),
        color: Color(0xFF3b4a6b),
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: TextField(
                 decoration: InputDecoration(
                //contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                  border: OutlineInputBorder(),
               hintText: 'Write a quick task',
               fillColor: Color(0xFF22b2da),
               filled: true
               // 
                ) ,

    ),
    )],
    )
    

    /* TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'Enter a search term',
  ), */
),
);
    /* return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        backgroundColor: Color(0xFF3b4a6b),
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
       onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    ); */
  }
}
