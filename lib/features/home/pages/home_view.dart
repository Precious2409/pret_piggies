import 'package:flutter/material.dart';
import 'package:pret_piggies/features/home/widgets/my_todo_section.dart';
import 'package:pret_piggies/features/home/widgets/saving_details_card.dart';
import 'package:pret_piggies/features/home/widgets/suggestions_sections.dart';
import 'package:pret_piggies/features/home/widgets/top_savings_section.dart';
import 'package:pret_piggies/features/home/widgets/user_balance_card.dart';
import 'package:pret_piggies/features/home/widgets/vetted_opportunities_section.dart';
import 'package:pret_piggies/features/invest/widgets/invest_details_card.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Toti",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Do more with your finances",
              style: TextStyle(
                fontSize: 12,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.red,
              onPressed: (){},
              icon: Icon(
                  Icons.account_circle_sharp,
              size: 40,)
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          UserBalanceDetails(),
          MyTodoSection(),
          TopSavingsSection(),
          SuggestionSection(),
          VettedOpportunitiesSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
      ),

    );
  }
}

