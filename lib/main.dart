import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pret_piggies/features/home/bloc/home_bloc.dart';
import 'package:pret_piggies/features/home/pages/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pret_piggies/features/login/pages/login_page.dart';
import 'package:pret_piggies/features/signup/bloc/signup_bloc.dart';
import 'firebase_options.dart';

void main() async{
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>HomeBloc()),
          BlocProvider(create: (context)=>SignupBloc()),
        ],
    child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.blueGrey
        ),
        home: LoginPage(),
      ),
    );
  }
}
