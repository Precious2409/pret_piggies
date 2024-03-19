import 'package:flutter/material.dart';
import 'package:pret_piggies/features/savings/widgets/strict_savings_item.dart';

class FlexibleSavingsSection extends StatelessWidget {
  const FlexibleSavingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "Flexible Savings",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54
            ) ,
          ),
          SizedBox(
            height: 250,
            child: GridView.count(
                crossAxisCount: 2,
              crossAxisSpacing: 16,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                StrictSavingsItem(
                    textOnButton: "\$100",
                    title: "Flex Dollar",
                    subtitle: "Save in dollars, earn interest",
                    color: Colors.black87
                ),
                StrictSavingsItem(
                    textOnButton: "NGN 40000",
                    title: "Flex Naira",
                    subtitle: "Your emergency funds with interest",
                    color: Colors.pinkAccent
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
