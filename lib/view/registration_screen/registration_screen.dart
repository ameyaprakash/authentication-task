import 'package:auth_task/main.dart';
import 'package:auth_task/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Todo : write code  create controllers and form keys
final formkey = GlobalKey<FormState>();
TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();
TextEditingController confirmController = TextEditingController();
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Sign Up for Free",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    hintText: "Your Eamil Address",
                    hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16, fontWeight: FontWeight.normal),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color(0xff1a75d2),
                        )),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red.shade400,
                        )),
                  ),
                validator: (value){
                    if(value == null || value.isEmpty)
                    {
                      return "enter a email address";
                    }else if(value.contains("@")){
                       return null;
                    }else {
                      return "enter a valid email";
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: passController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      hintText: "Your Password",
                      hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16, fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff1a75d2),
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.red.shade400,
                          )),
                      suffixIcon: Icon(
                        Icons.visibility_off_rounded,
                        color: Colors.grey,
                      )),
                      validator: (value) {
                        if(value!= null && value.length>=6){
                        return null;
                        }
                        else{
                        return " enter a password with min 6 characters";
                        }
                        }
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: confirmController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      hintText: "Confirm Your Password",
                      hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 16, fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Color(0xff1a75d2),
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.red.shade400,
                          )),
                      suffixIcon: Icon(
                        Icons.visibility_off_rounded,
                        color: Colors.grey,
                      )),
                 
                    validator: (value) {
                      if(passController.text == confirmController.text){
                        return null;
                      }else {
                        return " password doesnot match";
                      }
                    },

                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    if(formkey.currentState!.validate()){
                          userEmail=emailController.text;
                          userPass=passController.text;
                          // Navigator.push(context, HomeScreen())
                    }
                    // Todo : write code  to navigate to login screen on successful registration
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xff1a75d2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          // Todo : write code  to navigate to Login screen
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Color(0xff1a75d2),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
