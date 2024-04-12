import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'package:my_app/screens/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isChecked = false;

  void _login() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    // You can implement your login logic here
    print('Username: $username');
    print('Password: $password');

    // For demonstration purposes, just clear the text fields
    _usernameController.clear();
    _passwordController.clear();

    // Navigate to HomeScreen when login button is pressed
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) =>  MyHomePage(title: 'MyHomePage',)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 254, 1),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/logo_aplikasi.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  child: Text(
                    'Welcome to Healthy Living',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 136, 104, 233),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                filled: true,
                fillColor: Color.fromRGBO(231, 228, 239, 1),
                labelStyle: TextStyle(color: Color.fromARGB(255, 84, 52, 98)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                filled: true,
                fillColor: Color.fromRGBO(231, 228, 239, 1),
                labelStyle: TextStyle(color: Color.fromARGB(255, 84, 52, 98)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                ),
                SizedBox(width: 1),
                TextButton(
                  onPressed: () {
                    // Navigate to Forgot Password Page
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color.fromARGB(255, 136, 104, 233)),
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    // Navigate to Create Account Page
                  },
                  child: Text(
                    'Create New Account',
                    style: TextStyle(color: Color.fromARGB(255, 136, 104, 233)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
