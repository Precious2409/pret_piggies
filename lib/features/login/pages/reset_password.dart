import 'package:flutter/material.dart';
import 'package:pret_piggies/features/signup/widgets/custom_text_field.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                "Reset Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Theme.of(context).primaryColor
                ),
              ),
              Text(
                "Enter reset code and your new password",
              ),
              CustomTextField(
                label: 'Enter code',
                onChanged: (newText ) {  },
              ),
              CustomTextField(
                label: 'New Password',
                onChanged: (newText ) {  },
              ),
              CustomTextField(
                label: 'Retype new password',
                onChanged: (newText ) {  },
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
                  child: Text("RESET PASSWORD")
              ),
              TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context){
                      return ResetPassword();
                    },));
                },
                child: Text("Go Back",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ]
        )
    );
  }
}

