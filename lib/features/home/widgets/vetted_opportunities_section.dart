import 'package:flutter/material.dart';
import 'package:pret_piggies/features/invest/pages/explore_investments.dart';

class VettedOpportunitiesSection extends StatelessWidget {
  const VettedOpportunitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Vetted Opportunities",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black54
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context){
                           return ExploreInvestmentsPage();
                          }
                          )
                      );
                    },
                    child: Row(
                      children: [
                        Text("Find more"),
                        Icon(Icons.arrow_forward_ios,size: 18,)
                      ],
                    ),
                ),
              ],
            ),
            SizedBox(
              height: 210,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  VettedOItems(),
                  VettedOItems(),
                  VettedOItems(),
                  VettedOItems(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VettedOItems extends StatelessWidget {
  const VettedOItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
              "assets/images/ten_percent_returns.png",
            width: 150,
          ),
          Text(
              "Corporate Debt N",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),
          ),
          Text(
              "10% returns in 9 months",
            style: TextStyle(
              color: Colors.black26,
            ),
          )
        ],
      ),
    );
  }
}
