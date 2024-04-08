
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pret_piggies/features/home/bloc/home_bloc.dart';

class HideTodoSheet extends StatelessWidget {
  const HideTodoSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              "assets/images/app_icon.png",
              height: 80,
              width: 80,
          ),
          SizedBox(height: 24,),
          Text(
              "Hide TO-DO List",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 24
            ),
          ),
          SizedBox(height: 24,),
          Text("Temoprarily Hide all to-do list till tomorrow"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Divider(),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Remind me later"),
                        content: Text("Are you sure you want to hide your todo list?"),
                        actions: [
                          TextButton(
                              onPressed: (){
                                //Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: Text("Yes, remove it")
                          ),
                          TextButton(
                              onPressed: (){
                                //Navigator.pop(context);
                                Navigator.pop(context);

                                context.read<HomeBloc>().hideTodoList();
                              },
                              child: Text("Close")
                          ),
                        ],
                      );
                    },
                );
              },
            style: ElevatedButton.styleFrom(
              maximumSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              side: BorderSide(
                  color: Colors.red.shade700,
                width: 2,
              )
            ),
              child: Text(
                  "Hide Todo List",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              ),
          )
        ],
      ),
    );
  }
}
