import 'package:flutter/material.dart';

class WalletItem extends StatelessWidget {
  const WalletItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 130,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PiggyBank",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "NGN 0.00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
              ),
            )
          ]
      ),
    );
  }
}