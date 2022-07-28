import 'package:flutter/material.dart';
import 'package:pa_market_farmer/custom_objects/constants.dart';
import 'package:pa_market_farmer/pages/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _key = GlobalKey<FormState>();

  // Future<void> _incrementCounter() async {
  //   setState(() {
  //
  //   });
  //
  // }
  //
  // void some() {
  //   setState(() {
  //
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';
    bool obscure = true;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: primaryTextBackgroundColor),),
        backgroundColor: primaryAppBarColor,
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body: Padding(padding: EdgeInsets.zero, child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //Login and Please sign in to continue
          Row(
            children: const [
              Text('Login', style: TextStyle(color: primaryTextBackgroundColor, fontSize: 30),),
            ],
          ),
          const Text('Please sign in to continue', style: TextStyle(color: primaryTextBackgroundColor),),
          //form - login details
          Form(
              key: _key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //user name, email
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email to login';
                      }
                      return null;
                    },
                    onChanged: (value) {

                      setState(() {
                        email = value;
                      });

                    },
                    decoration: const InputDecoration(hintText: 'john@pamarket.com'),
                  ),
                  //password - option to show password

                  Row(children: [
                    Expanded(child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password to login';
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
                    )),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            obscure = false;
                          });
                          obscure = false;
                        },
                        child: const Text('Show', style: TextStyle(color: primaryTextBackgroundColor),)
                    )
                  ],),
                  //forgot password
                  TextButton(
                      onPressed: () {
                        //forgot password
                      },
                      child: const Text('Forgot password',style: TextStyle(color: primaryTextBackgroundColor),)
                  ),
                  //Login - end of row
                  Padding(
                    padding:EdgeInsets.all(MediaQuery.of(context).size.width/100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              //todo: login
                            },
                            child: const Text('Login')
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
          //Don't have an account sign up
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account? ", style: TextStyle(color: primaryTextBackgroundColor),),
              TextButton(
                  onPressed: () {
                    //go to sign in page
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
                  },
                  child: const Text('Sign up')
              )
            ],
          ),

        ],
      ),),
    );
  }
}