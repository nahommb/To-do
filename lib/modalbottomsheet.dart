import 'package:flutter/material.dart';
import 'package:todo/task.dart';
import 'package:todo/task_data.dart';
import 'task_tile.dart';
import 'task_list.dart';
import 'package:provider/provider.dart';

class modalbottom extends StatelessWidget {
//final Function addtask;

//modalbottom({required this.addtask});

late String newtaskname;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(

            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        ),
      child:  Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            Text("Add tasks" ,style: TextStyle(fontSize: 20,color: Colors.amber),),
            SizedBox(height: 20,),
            TextField(
            style: TextStyle(color: Colors.amber),
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor:Colors.amber,
              decoration: InputDecoration(
                  focusedBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
              ),
              onChanged: (value){
                  newtaskname=value!;
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(Size(200,50)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
                child: Text("Add"),
                onPressed: (){
                    // addtask(newtaskname);
                  Provider.of<taskData>(context ,listen: false).addTask(newtaskname);
                  Navigator.pop(context);
                }


      ),
          ],
        ),
      ),
    );
  }
}

