import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pret_piggies/features/home/bloc/home_bloc.dart';
import 'package:pret_piggies/features/home/bloc/home_state.dart';
import 'package:pret_piggies/features/home/widgets/hide_todo_sheet.dart';
import 'package:pret_piggies/features/home/widgets/my_todo_item.dart';

class MyTodoSection extends StatelessWidget {
  const MyTodoSection({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;


    return homeState.hideToDo==true ? Container(): Container(
      padding: EdgeInsets.symmetric(vertical: 16
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("My To-do List",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54
                ),
              ),
              TextButton(
                  onPressed: (){
                    showModalBottomSheet(
                        context: context,
                        showDragHandle: true,
                        builder: (context){
                          return HideTodoSheet();
                        },
                    );
                    },
                  child:
                  Row(
                    children: [
                      Text("Hide",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      Icon(
                          Icons.arrow_drop_down_sharp,
                        size: 18,
                        color: Colors.redAccent,
                      )
                    ],
                  ),
              )
            ],
          ),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MyTodoItem(
                  title: "Add Debit Card",
                  progress: 0.3,
                ),
                MyTodoItem(
                  title: "Enable Autosave",
                  progress: 0.9,
                  onPressed: (){},
                ),
                MyTodoItem(
                  title: "Enable FaceID/Fingerprint",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Add A Picture",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Add your BVN",
                  progress: 0.3,
                ),
                MyTodoItem(
                  title: "Verify Your Identity",
                  progress: 0,
                ),
                MyTodoItem(
                  title: "Add Your Address",
                  progress: 0.3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

