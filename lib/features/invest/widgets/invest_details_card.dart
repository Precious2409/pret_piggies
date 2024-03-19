import 'package:flutter/material.dart';

class InvestDetailsCard extends StatelessWidget {
  const InvestDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Chip(
            label: Text("Up to 85%return"),
            shape: StadiumBorder(),
          ),
          SizedBox(height: 16),
          Text(
              "Total investment",
            style: TextStyle(color: Colors.white),
          ),
          Text(
              "NGN 0",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
