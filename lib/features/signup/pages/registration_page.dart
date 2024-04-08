import 'package:flutter/material.dart';
import 'package:pret_piggies/features/login/pages/login_page.dart';
import 'package:pret_piggies/features/signup/widgets/custom_text_field.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
          Text(
          "Create Account",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Theme.of(context).primaryColor
            ),
        ),
            Text(
              "Create a Free Account and Start a Proper Financial with PiggyVest",
            ),
            CustomTextField(
              label: 'Full Name',
              onChanged: (newText ) {  },
            ),
            CustomTextField(
              label: 'Email address',
              onChanged: (newText ) {  },
            ),
            CustomTextField(
              label: 'Phone Number',
              onChanged: (newText) {  },
            ),
            CustomTextField(
              label: 'Password',
              onChanged: (newText) {  },
            ),
            CustomTextField(
                label: 'Referral Phone or Promo Code (Optional)',
                onChanged: (newText){}
            ),
            CustomTextField(
                label: 'How Did You Hear about Us?(Optional)',
                onChanged: (newText){}
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
                child: Text("CREATE ACCOUNT")
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                      },));
                },
              child: Text("Already have an account? Login"),
            )
          ] ,
        ),
      )
    );
  }
}

