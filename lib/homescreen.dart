import 'package:flutter/material.dart';
import 'package:todo/task_data.dart';
import 'task_list.dart';
import 'modalbottomsheet.dart';
import 'package:provider/provider.dart';


class homescreen extends StatefulWidget {

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.amber,
          onPressed: (){
            showModalBottomSheet(shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
                context: context,
                builder:(context)=>modalbottom(),
                isScrollControlled: true
            );

          }),
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            margin: EdgeInsets.only(left: 30,top: 30),
            child: Column(
              children: [
                Icon(Icons.list,color: Colors.amberAccent,size: 60,),
                Text("To do" ,style: TextStyle(fontSize: 25,color: Colors.amberAccent),),
                Text("${Provider.of<taskData>(context).taskcount} tasks"),
              ],
            ),
          ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20 ,),
                padding: EdgeInsets.only(left: 20 ,right: 20),
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                ),
               child: Task_list(),
              ),
            )
        ]
        ),
      ),
    );
  }
}




