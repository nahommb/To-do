import 'package:flutter/material.dart';
import 'package:todo/task_data.dart';
import 'task_tile.dart';
import 'task.dart';
import 'package:provider/provider.dart';
class Task_list extends StatefulWidget {

  late final List<Task> tasks;
  //Task_list(this.tasks);

  @override
  State<Task_list> createState() => _Task_listState();
}

class _Task_listState extends State<Task_list> {

  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(
      builder: (context,tskdata,child){
        return ListView.builder(itemBuilder: (context,index){
             return Task_tile(
                  tasktile: tskdata.tasks[index].name,  //tskdata for Provider.of<taskdata>(context)
                  ischecked: tskdata.tasks[index].isDone,
                  checkbox: (bool val){
                        tskdata.updateTask(tskdata.tasks[index]);
                  },
                  deletecallback: (){
                    tskdata.delatTask(tskdata.tasks[index]);
                  },
                  );
                  },
                  itemCount: tskdata.taskcount,);
      },
    );
  }
}
