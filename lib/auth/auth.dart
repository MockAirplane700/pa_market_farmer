/// ---------------------------------------------------------------
///           External Packages
/// -----------------------------------------------------------------
///

import "package:flutter/material.dart";
import 'package:pa_market_farmer/custom_objects/constants.dart';

///------------------------------------------------------------------
///           Auth0 Variables
///
/// -----------------------------------------------------------------


///--------------------------------------------------------------------
///           Profile Widget
///
/// -------------------------------------------------------------------


///----------------------------------------------------------------------
///           Login Widget
///
/// ---------------------------------------------------------------------
class LogIn extends StatelessWidget {

  final loginAction;
  final String loginError;

  const LogIn(this.loginAction, this.loginError);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              //login action
            },
            child: const Text('Login')
        ),
        Text(loginError)
      ],
    );
  }
}


///----------------------------------------------------------------------
///             App
///
/// ----------------------------------------------------------------------
///


class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth', style: TextStyle(color: primaryTextBackgroundColor),),
        backgroundColor: primaryAppBarColor,
        iconTheme: const IconThemeData(color: primaryThemeDataColor),
        elevation: 0,
      ),
      backgroundColor: primaryApplicationBackgroundColor,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // logoutAction();
            },
            child:const Text('Logout')
        ),
      ),
    );
  }
}
