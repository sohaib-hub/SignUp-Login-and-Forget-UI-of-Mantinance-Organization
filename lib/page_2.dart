import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_page/forget_design.dart';
import 'package:login_page/login_page.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

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
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Login into your existing account! ',
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
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForGet(),
                  ));
            },
            child: const Text(
              'forget password ?',
              style: TextStyle(color: Colors.black),
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
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account ?'),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.orange),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
