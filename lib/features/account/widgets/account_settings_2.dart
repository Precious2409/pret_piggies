import 'package:flutter/material.dart';
import 'package:pret_piggies/features/account/widgets/account_settings_items.dart';

class AccountSettings2 extends StatelessWidget {
  const AccountSettings2 ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          AccountSettingsItems(
            title: "Refer & Earn ",
            icon: Icon(Icons.card_giftcard),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "Withdraw Funds",
            icon: Icon(Icons.settings),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "Linked debut cards",
            icon: Icon(Icons.lock),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "Withdrawal Bank",
            icon: Icon(Icons.settings),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "View Piggyvest Library",
            icon: Icon(Icons.settings),
          ),
          AccountSettingsItems(
            title: "Contact Us",
            icon: Icon(Icons.phone),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
                "Log Out",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red.shade700
            ),
            ),

          )

        ],
      ),
    );
  }
}
