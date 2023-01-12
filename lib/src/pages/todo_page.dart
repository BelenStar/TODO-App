import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
   createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF001f3f) ,
      appBar: AppBar(
        title: Text('Todo List'),
        backgroundColor: Color(0xFF001f3f),
      ),
      body:  ListView(
        children: [ ],
      ) ,
      floatingActionButton: _textFieldButton()
  );
  }

  Widget _textFieldButton(){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 30.0),
          Expanded(
            child: TextField(
                 decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                  border: OutlineInputBorder(),
                 hintText: 'Write a quick task',
                 hintStyle:TextStyle(color: Colors.white),  
               fillColor: Color(0xFF083358),
               filled: true
                ),
           )
    ),
    IconButton(
      onPressed:  () => {}, 
      icon: Icon(Icons.send),
      color: Color(0xFF0da574),
      )],
    
    );

  }
}
