import 'package:flutter/material.dart';
import 'package:sma_car/screens/sign_up.dart';

import 'login.dart';

class WelcomeScreen extends StatefulWidget {

  static const String id = 'welcome';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState ();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  late AnimationController controller ;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(vsync: this,
        duration: const Duration(seconds: 1),);

    animation= ColorTween(begin: Colors.grey,
    end: Colors.amber).animate(controller);

    controller.forward();

    controller.addListener(() {
      setState(() {
      });
      print(controller.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      appBar: AppBar(
        title: const Text('Smart Car Parking'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: controller.value,
                    child: Image.asset('images/car.png'),
                  ),
                ),
                const Text(
                  'Smart Park!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to the signup screen
                Navigator.pushNamed(context, SignUpScreen.id);
              },
              child: const Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}
