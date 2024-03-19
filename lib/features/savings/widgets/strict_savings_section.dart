import 'package:flutter/material.dart';
import 'package:pret_piggies/features/savings/widgets/strict_savings_item.dart';

class StrictSavingsSection extends StatelessWidget {
  const StrictSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Strict Savings",
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54
                ) ,
              ),
              SizedBox(
                height: 30,
                child: GridView.count(
                    crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Row(
                mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        StrictSavingsItem(
                          title: "PiggyBank",
                          subtitle: "Automatic, daily, weekly and monthly withrawal",
                          color: Colors.red,
                          textOnButton: "SETUP",
                        ),
                        StrictSavingsItem(
                          title: "Safe lock",
                          subtitle: "Lock funds to avoid temptations",
                          color: Colors.blue.shade200,
                          textOnButton: "LOCK MONEY",
                        ),
                        StrictSavingsItem(
                          title: "Target Savings",
                          subtitle: "Smash your saving goals faster",
                          color: Colors.green.shade600,
                          textOnButton: "NEW GOALS",
                        ),
                        StrictSavingsItem(
                          title: "House Money",
                          subtitle: "Save for your housing",
                          color: Colors.yellow,
                          textOnButton: "ADD MONEY",
                        ),

                      ],
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}

