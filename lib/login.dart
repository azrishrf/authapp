import 'package:flutter/material.dart';
import 'package:authapp/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _header(context),
                _textField(context),
                _signup(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_header(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('assets/flutter_bird.png', height: 200, width: 200),
      const Text(
        'Flutter First App',
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      const Text(
        'Welcome Back bros!',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ],
  );
}

_textField(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: 'Username',
          hintStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.indigo[600],
          prefixIcon: const Icon(
            Icons.person,
            color: Colors.white,
          ),
          filled: true,
        ),
      ),
      const SizedBox(height: 10),
      TextField(
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: const TextStyle(color: Colors.white),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.indigo[600],
          prefixIcon: const Icon(
            Icons.lock,
            color: Colors.white,
          ),
          filled: true,
        ),
      ),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.fromLTRB(30, 12, 30, 12)),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 18),
        ),
      )
    ],
  );
}

_signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        'Not Registered Yet?',
        style: TextStyle(color: Colors.white),
      ),
      const SizedBox(width: 20),
      TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const SignUp();
          }));
        },
        style: TextButton.styleFrom(
            shape: const StadiumBorder(), backgroundColor: Colors.blue),
        child: const Text(
          'Click Here',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ],
  );
}
