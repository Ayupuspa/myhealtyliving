import 'package:flutter/material.dart';
import 'package:my_app/screens/login.dart';

class HealthSplash extends StatefulWidget {
  @override
  _HealthSplashState createState() => _HealthSplashState();
}

class _HealthSplashState extends State<HealthSplash> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3)); // Delay for 3 seconds
    // Navigate to the next screen after the delay
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 254, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           const SizedBox(height: 30),
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_aplikasi.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Healthy Living',
              style: TextStyle(
                color: Color.fromARGB(255, 136, 104, 233),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

