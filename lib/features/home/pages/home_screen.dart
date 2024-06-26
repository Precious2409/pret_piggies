import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pret_piggies/features/account/pages/account_view.dart';
import 'package:pret_piggies/features/home/bloc/home_bloc.dart';
import 'package:pret_piggies/features/home/bloc/home_state.dart';
import 'package:pret_piggies/features/home/pages/home_view.dart';
import 'package:pret_piggies/features/invest/pages/invest_view.dart';
import 'package:pret_piggies/features/savings/pages/savings_view.dart';

class HomeScreen extends StatefulWidget{

  static route()=> MaterialPageRoute(builder: (context) => HomeScreen());

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
    HomeBloc homeBloc = context.watch<HomeBloc>();
    HomeState homeState = homeBloc.state;
    int selectedIndex = homeState.tabIndex;

    return Scaffold(
      body: IndexedStack(
        children: listOfPages,
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          homeBloc.updateTabIndex(value);
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