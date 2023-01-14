import 'package:flutter/material.dart';

import '../classes/todo_item.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
   createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final List<TodoItem> _todoItems = [];

  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      backgroundColor:const  Color(0xFF001f3f) ,
      appBar: AppBar(
        title: const Text('Todo List'),
        backgroundColor: const Color(0xFF001f3f),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.5),
          ),
          child: ListView.builder(
            itemCount: _todoItems.length,
            itemBuilder: (context, index) {
              return  CheckboxListTile(
                value: _todoItems[index].completed,
                onChanged: (newValue) =>{
                  setState(() {
                    _todoItems[index].completed = true; 
                    _todoItems.removeAt(index);
                  })
                } ,
                  tileColor: const Color(0xFF083358),
                  title: Text(_todoItems[index].title, style: const TextStyle(color: Colors.white)),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.5))
                    ) ,
                  controlAffinity: ListTileControlAffinity.leading,
              );
            },
          ),
        ),
      ),
      floatingActionButton: _textFieldButton()
  );
  }

  Widget _textFieldButton(){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const SizedBox(width: 30.0),
          Expanded(
            child: TextField(
                 controller: myController,
                 style: TextStyle(color: Colors.amber),
                 decoration: const InputDecoration(
                    //counterStyle: TextStyle(color: Color.fromARGB(255, 145, 69, 69)),
                    contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    border: OutlineInputBorder(),
                    hintText: 'Write a quick task',
                    hintStyle:TextStyle(color: Colors.white),  
                    fillColor: Color(0xFF083358),
                    filled: true,
                 ),
           )),
          IconButton(
            onPressed:  () => {
              setState(() {
                myController.text.isEmpty ? null : _todoItems.add(
                  TodoItem(title: myController.text, completed: false)
                );
                myController.clear();
              })
            },
            icon: const Icon(Icons.send),
            color: const Color(0xFF0da574),
          )
      ],
    );
  }
}
