import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pret_piggies/features/account/pages/account_view.dart';
import 'package:pret_piggies/features/home/pages/home_view.dart';
import 'package:pret_piggies/features/invest/pages/invest_view.dart';
import 'package:pret_piggies/features/savings/pages/savings_view.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var listOfPages = [
    HomeView(),
    SavingsView(),
    InvestView(),
    AccountView(),
  ];
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: listOfPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.savings_rounded),
              label: "Savings"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.rocket_launch),
              label: "Invest"
          ),
         BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Account"
          )
        ],
      ),
    );

  }
}