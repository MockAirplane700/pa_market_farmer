import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:pa_market_farmer/pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    bool obscure = true;
    String password = '';
    String email = '';
    String firstName = '';
    String lastName = '';
    String farmName = '';
    String farmDescription = '';
    String farmAddress = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up', style: TextStyle(color: primaryTextBackgroundColor),),
        backgroundColor: primaryAppBarColor,
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
      ),
      body: Padding(padding: EdgeInsets.zero, child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //Create an account
          const Text('Create an account', style: TextStyle(color: primaryTextBackgroundColor, fontSize: 30),),
          //form details
          Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //First name
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      }
                      return null;
                    },
                    onChanged: (value) {

                      setState(() {
                        firstName = value;
                      });

                    },
                    decoration: const InputDecoration(hintText: 'First name'),
                  ),
                  //last name
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your last name';
                      }
                      return null;
                    },
                    onChanged: (value) {

                      setState(() {
                        lastName = value;
                      });

                    },
                    decoration: const InputDecoration(hintText: 'Last name'),
                  ),
                  //email
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                    onChanged: (value) {

                      setState(() {
                        email = value;
                      });

                    },
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                  //farm name
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the name of your farm';
                      }
                      return null;
                    },
                    onChanged: (value) {

                      setState(() {
                        farmName = value;
                      });

                    },
                    decoration: const InputDecoration(hintText: 'Enter the name of your farm'),
                  ),
                  //farm description
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your farm description';
                      }
                      return null;
                    },
                    onChanged: (value) {

                      setState(() {
                        farmDescription = value;
                      });

                    },
                    decoration: const InputDecoration(hintText: 'Enter your farm description'),
                  ),
                  //farm address
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your farm address';
                      }
                      return null;
                    },
                    onChanged: (value) {

                      setState(() {
                        farmAddress = value;
                      });

                    },
                    decoration: const InputDecoration(hintText: 'Enter farm description'),
                  ),
                  //password
                  Row(children: [
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty || value.length < 9) {
                            return 'Please enter a password between 8 - 15 characters';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        obscureText: obscure,
                        decoration: const InputDecoration(hintText: 'Password'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            obscure = false;
                          });
                        },
                        child: const Text('Show', style: TextStyle(color: primaryTextBackgroundColor),)
                    )
                  ],),

                  //Sign up - end of row
                  Padding(
                    padding:EdgeInsets.all(MediaQuery.of(context).size.width/100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              //todo: Signup
                            },
                            child: const Text('Sign up')
                        )
                      ],
                    ),
                  )
                ],
              )
          ),

          //Already have an account login
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Already have an account?  ", style: TextStyle(color: primaryTextBackgroundColor),),
              TextButton(
                  onPressed: () {
                    //go to log in page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const CustomLogIn()));
                  },
                  child: const Text('Login')
              )
            ],
          ),
        ],
      ),),
    );
  }
}
