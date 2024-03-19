import 'package:flutter/material.dart';
import 'package:pret_piggies/features/invest/widgets/explore_investments_item.dart';

class ExploreInvestmentsPage extends StatelessWidget {
  const ExploreInvestmentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Explore Investments",

        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ExploreInvestmentsItem()
        ],
      ),
    );
  }
}
