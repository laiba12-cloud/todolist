import 'package:flutter/material.dart';



class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  selectDate()
  async //---asynchronous--
      {
    //class   object ----> all access of the given class---
    DateTime? pickedDate= await showDatePicker(
        context: context,
        firstDate: DateTime(2000),
        lastDate: DateTime(2030));
    if(pickedDate!=null){
    //  date=pickedDate;
      setState(() {

      });
    }
  }
  selectTime()
  async
  {
    TimeOfDay? pickedTime=await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child){
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
              child: child!);

        }
    );
    if(pickedTime!=null){
    //  time=pickedTime;
      setState((){});
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Row(children: [
        TextButton(onPressed: ()
        {
          selectTime();
          // TimeOfDay? pickedTime=await showTimePicker(
          //     context: context,
          //     initialTime: TimeOfDay.now(),
          //     builder: (context, child){
          //       return MediaQuery(
          //           data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          //           child: child!);
          //
          //     }
          // );
          // if(pickedTime!=null){
          //   time=pickedTime;
          //   setState((){});
          // }
        }, child: Text('Add Time')),
        TextButton(onPressed: ()  //---asynchronous--
            {
              selectDate();
          //class   object ----> all access of the given class---
          // DateTime? pickedDate= await showDatePicker(
          //     context: context,
          //     firstDate: DateTime(2000),
          //     lastDate: DateTime(2030));
          // if(pickedDate!=null){
          //   date=pickedDate;
          //   setState(() {
          //
          //   });
          // }
        }, child: Text('Rechedule')),
      ],),),
    );
  }
}
