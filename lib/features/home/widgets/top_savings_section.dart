import 'package:flutter/material.dart';

class TopSavingsSection extends StatelessWidget {
  const TopSavingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Top Savings",
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54
            ) ,
          ),
          ListTile(
            leading: Icon(
                Icons.safety_check_outlined,
              color: Colors.red,
            ),
            title: Text(
                "PiggyBank",
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            subtitle: Text(
                "Auto-save: Daily, weekly or monthly",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black26,
            ),
            ),
            trailing: ElevatedButton(
              onPressed: (){},
              child: Text("SAVE"),
            ),
            contentPadding: EdgeInsets.zero,

          ),
          ListTile(
            leading: Icon(
                Icons.lock_outline,
              color: Colors.red,
            ),
            title: Text(
              "SafeLock",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
                "Lock funds to avoid temptations",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black26,
              ),
            ),
            trailing: ElevatedButton(
              onPressed: (){},
              child: Text("LOCK"),
            ),
            contentPadding: EdgeInsets.zero,
          ),
          ListTile(
            leading: Icon(
                Icons.wallet,
                color: Colors.blue,
            ),
            title: Text(
                "Flex Naira",
              style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            subtitle: Text(
                "Your emergency funds with interest",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black26,
              ),
            ),
            trailing: ElevatedButton(
              onPressed: (){},
              child: Text("FUND"),
            ),
            contentPadding: EdgeInsets.zero,
          )
        ],
      ) ,
    );
  }
}
