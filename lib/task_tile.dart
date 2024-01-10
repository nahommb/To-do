import 'package:flutter/material.dart';

class Task_tile extends StatelessWidget {
 final bool ischecked;
 final String tasktile;
 final Function checkbox;
 final Function deletecallback;
  Task_tile({required this.tasktile,required this.ischecked,required this.checkbox,required this.deletecallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        deletecallback();
        } ,
      title: Text(tasktile ,style: TextStyle(decoration:ischecked? TextDecoration.lineThrough:null),),
      trailing:  Checkbox(
        value: ischecked,
        onChanged: (val){
         checkbox(val);
        },
        activeColor: Colors.amber,
      )
    );
  }
}

