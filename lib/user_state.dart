import 'package:dev_job/Jobs/jobs_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'config_screen.dart';
import 'screens/login/login_screen.dart';

class UserState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      //checa si hay un cambio de estado, logeado, no logeado, error, o en proceso
      //segun el estado es la pantalla que enviara.



      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (ctx, userSnapshot) {
        if (userSnapshot.data == null) {
          print('user is not logged in yet');
          return Login();
        }

        else if (userSnapshot.hasData) {
          print('user is already logged in yet');
          return JobScreen();
        }

        else if (userSnapshot.hasError) {
          return const Scaffold(
            body: Center(
              child: Text('Error, try again latter'),
            ),
          );
        }

        else if (userSnapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return const Scaffold(
          body: Center(
            child: Text('Something went wrong'),
          ),
        );
      },
    );
  }
}
