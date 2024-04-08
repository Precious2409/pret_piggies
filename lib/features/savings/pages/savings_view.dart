import 'package:flutter/material.dart';
import 'package:pret_piggies/features/home/widgets/saving_details_card.dart';
import 'package:pret_piggies/features/savings/pages/quick_save_page.dart';
import 'package:pret_piggies/features/savings/widgets/flexible_savings_section.dart';
import 'package:pret_piggies/features/savings/widgets/strict_savings_section.dart';
import 'package:pret_piggies/utils.dart';

class SavingsView extends StatelessWidget {
  const SavingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "My Savings",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.info_outline_rounded),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children:[
              SavingDetailsCard(
                balance: "${getNaira}24000",
                topRightWidget: Chip(
                    label: Text(
                        "up to 13% returns",
                    style: TextStyle(
                      color: Colors.white
                    ),
                    ),
                  backgroundColor: Colors.black, 
                  shape: StadiumBorder(),
                ),
                onClick: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                        return QuickSavePage();
                      })
                  );
                },
            ),
          StrictSavingsSection(),
          FlexibleSavingsSection(),
        ],
      ),
    );
  }
}
