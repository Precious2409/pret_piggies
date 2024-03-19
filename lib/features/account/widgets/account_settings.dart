import 'package:flutter/material.dart';
import 'package:pret_piggies/features/account/widgets/account_settings_items.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({
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
            title: "Today's rates",
            icon: Icon(Icons.percent),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "My Account Settings",
            icon: Icon(Icons.settings),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "Generate Account Statement",
            icon: Icon(Icons.settings),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "Enable Dark Mode",
            icon: Icon(Icons.dark_mode),
            trailingIcon: Switch(
              value: false,
              onChanged: (value){},
            ),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "Self help",
            icon: Icon(Icons.info),
          ),
          Divider(color: Colors.blueGrey.shade300,),
          AccountSettingsItems(
            title: "Security",
            icon: Icon(Icons.lock_outline),
          ),
        ],
      ),
    );
  }
}
