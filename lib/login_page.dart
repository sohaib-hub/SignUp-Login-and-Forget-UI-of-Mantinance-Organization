import 'dart:html';
import 'dart:ui';
import 'page_2.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.settings,
                  size: 40,
                ),
                Column(
                  children: const [
                    Text(
                      'Maintenance',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    Text(
                      'Box',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      'SignUp',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'for creating new account ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                    Text(
                      'please sing up ! ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 600,
            height: 40,
            child: const ListTile(
              title: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  hintText: 'Name',
                  fillColor: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            width: 600,
            height: 40,
            child: const ListTile(
              title: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  hintText: 'Contact',
                  fillColor: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            width: 600,
            height: 40,
            child: const ListTile(
              title: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  hintText: 'Email',
                  fillColor: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            width: 600,
            height: 40,
            child: const ListTile(
              title: TextField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_open),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  hintText: 'Password',
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            height: 25,
            width: 250,
            color: Color.fromRGBO(255, 152, 0, 1).withOpacity(1),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Sign-Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have account ?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyWidget()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.orange),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
