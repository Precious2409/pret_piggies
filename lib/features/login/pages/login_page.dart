import 'package:flutter/material.dart';
import 'package:pret_piggies/features/signup/pages/registration_page.dart';
import 'package:pret_piggies/features/signup/widgets/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
        Align(
        alignment: Alignment.topLeft,
        child: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.cancel_outlined,
              size: 45,
            )
        ),
      ),
          SizedBox(height: 40,),
          Text(
            "Login",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Theme.of(context).primaryColor
        ),
      ),
          Text(
        "Securely Login To your PiggyVest",
          ),
          CustomTextField(
            label: 'Email',
            onChanged: (newText ) {  },
          ),
          CustomTextField(
            label: 'Password',
            onChanged: (newText) {  },
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
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white
              ),
              onPressed: (){},
              child: Text("LOGIN")
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context){
                return RegistrationPage();
              },));
            },
            child: Text("Don't have an account? Register"),
          ),
          TextButton(
            onPressed: (){},
            child: Text("Forgot Password?"),
          )
        ]
      )
    );
  }
}