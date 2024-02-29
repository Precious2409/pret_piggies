import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suggestions For You",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54
            ) ,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 80,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Image.asset("assets/images/save_for_rent.png"),
                SizedBox(width: 8),
                Image.asset("assets/images/save_for_business.png"),
                SizedBox(width: 8),
                Image.asset("assets/images/save_for_vacation.png"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
