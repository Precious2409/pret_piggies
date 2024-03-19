import 'package:flutter/material.dart';

class AccountToggles extends StatelessWidget {
  const AccountToggles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text("Enable finger print/face ID"),
            trailing: Switch(
                value: true,
                onChanged: (value){},
                activeColor: Colors.greenAccent
            ),
          ),
          ListTile(
            title: Text("Show dashboard account balance"),
            trailing: Switch(
                value: true,
                onChanged: (value){},
                activeColor: Colors.greenAccent
            ),
          ),
          ListTile(
            title: Text("Interest enabled on savings"),
            trailing: Switch(
              value: true,
              onChanged: (value){},
              activeColor: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}
