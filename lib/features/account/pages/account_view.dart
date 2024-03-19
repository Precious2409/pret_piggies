import 'package:flutter/material.dart';
import 'package:pret_piggies/features/account/widgets/account_grid.dart';
import 'package:pret_piggies/features/account/widgets/account_settings.dart';
import 'package:pret_piggies/features/account/widgets/account_settings_2.dart';
import 'package:pret_piggies/features/account/widgets/account_toggles.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Account",
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Precious Toti",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade600
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
        padding: EdgeInsets.only(bottom: 16),
        children: const [
          AccountToggles(),
          AccountGrid(),
          AccountSettings(),
          SizedBox(height: 16),
          AccountSettings2(),
        ],
      ),

    );
  }
}



