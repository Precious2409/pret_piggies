import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pret_piggies/utils.dart';


class SavingDetailsCard extends StatelessWidget {
  const SavingDetailsCard({
    super.key,
    required this.topRightWidget, required this.balance, this.onClick,
  });

  final String balance;
  final Widget topRightWidget;
  final Function()? onClick;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0)
        ),
        padding: EdgeInsets.all(16.0),
        height: 160,
        child: Stack(
          children: [
            ElevatedButton.icon(
              onPressed: onClick,
              icon: Icon(Icons.add),
              label: Text("Quick Save"),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 8
                  ),
                  backgroundColor: Colors.yellow.shade800,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: Colors.yellow.shade800,
                  disabledForegroundColor: Colors.black
              ),
            ),
            Positioned(
              top: 0, right: 0,
              child:  topRightWidget
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "My Savings",
                  style: TextStyle(
                    color: Colors.blueGrey.shade50
                  ),
                  ),
                  Text(
                    "${getNaira()}$balance",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.white
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
