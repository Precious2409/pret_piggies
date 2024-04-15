import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pret_piggies/features/home/pages/home_screen.dart';
import 'package:pret_piggies/features/login/pages/login_page.dart';
import 'package:pret_piggies/features/signup/bloc/signup_bloc.dart';
import 'package:pret_piggies/features/signup/bloc/signup_state.dart';
import 'package:pret_piggies/features/signup/widgets/custom_text_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String fullName = "";
  String emailAddress = "";
  String password = "";
  
  @override
  Widget build(BuildContext context) {
    SignupBloc bloc = context.watch<SignupBloc>();
    SignupState state = bloc.state;

    switch(state.signupStatus){

      case SignupStatus.Initial:
        // TODO: Handle this case.
        break;
      case SignupStatus.Processing:
        // TODO: Handle this case.
        break;
      case SignupStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
              context,
              HomeScreen.route());
          bloc.reset;
        });
        break;
      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("An error occurred")));
        });
        break;
    }

    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      _navigateToLoginPage(context);
                    },
                    icon: Icon(
                      Icons.cancel_outlined,
                      size: 45,
                    )
                ),
              ),
              Text(
                "Create Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Theme
                        .of(context)
                        .primaryColor
                ),
              ),
              Text(
                "Create a Free Account and Start a Proper Financial with PiggyVest",
              ),
              CustomTextField(
                label: 'Full Name',
                onChanged: (newText) {
                  fullName = newText;
                },
              ),
              CustomTextField(
                label: 'Email address',
                onChanged: (newText) {
                  emailAddress = newText;
                },
                textInputType: TextInputType.emailAddress,
              ),
              CustomTextField(
                label: 'Password',
                onChanged: (newText) {
                  password = newText;
                },
                isAPassword: true
              ),
              CustomTextField(
                  label: 'Referral Phone or Promo Code (Optional)',
                  onChanged: (newText) {}
              ),
              CustomTextField(
                  label: 'How Did You Hear about Us?(Optional)',
                  onChanged: (newText) {}
              ),
              SizedBox(height: 24,),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16)
                          )
                      ),
                      backgroundColor: Theme
                          .of(context)
                          .primaryColor,
                      foregroundColor: Colors.white
                  ),
                  onPressed: state.signupStatus == SignupStatus.Processing ? null : () {
                    if (_isUserInputValid()) {
                    bloc.registerUser(
                        fullName: fullName,
                        emailAddress: emailAddress,
                        password: password
                    );
                    }
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (state.signupStatus == SignupStatus.Processing)
                        CircularProgressIndicator(),
                      Text("CREATE ACCOUNT"),
                    ],
                  )
              ),
              TextButton(
                onPressed: () {
                  _navigateToLoginPage(context);
                },
                child: Text("Already have an account? Login"),
              )
            ],
          ),
        )
    );
  }

  void _navigateToLoginPage(BuildContext context) {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) {
          return LoginPage();
        },));
  }
    bool _isUserInputValid(){
    String errorMessage = "";
    if(fullName.isEmpty){errorMessage = "Full name cannot be empty";}
    else if (emailAddress.isEmpty){errorMessage = "Email is required";}
    else if(password.isEmpty || password.length < 8){errorMessage = "Enter a strong password of atleast six characters";}
    if(errorMessage.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(errorMessage))
      );
      return false;}
    return true;
  }
}

