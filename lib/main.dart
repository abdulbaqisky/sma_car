import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sma_car/firebase_options.dart';
import 'screens/welcome.dart';
import 'package:sma_car/screens/add_lot.dart';
import 'package:sma_car/screens/add_sensor_space.dart';
import 'package:sma_car/screens/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'screens/login.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '',
    initialRoute: WelcomeScreen.id,
    routes: {
      WelcomeScreen.id : (context) => const WelcomeScreen(),
      LoginScreen.id : (context) => LoginScreen(),
      SignUpScreen.id : (context) => SignUpScreen(),
      AddCarLotScreen.id : (context) => const AddCarLotScreen(),
      AddParkingSpaceScreen.id : (context) => const AddParkingSpaceScreen(),
    },
    );

  }
}


