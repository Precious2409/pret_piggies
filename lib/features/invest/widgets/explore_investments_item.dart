import 'package:flutter/material.dart';

class ExploreInvestmentsItem extends StatelessWidget {
  const ExploreInvestmentsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/ten_percent_returns.png",
            height: 120,
            width: 120,

          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Corporate Debt Not Series XX11",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),),
                Text("10% returns in 9 months"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("\$5000"),
                        Text("per unit")
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("625"),
                        Text("Investors")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 4)
              ),
              child: Text("Sold out")
          )
        ],
      ),
    );
  }
}