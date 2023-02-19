import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

class ForGet extends StatelessWidget {
  const ForGet({Key? key}) : super(key: key);

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
                      'Forgot Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'forget password we send code on your Email ',
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 20.0,
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
          const SizedBox(
            height: 12.0,
          ),
          Container(
            height: 25,
            width: 250,
            color: Color.fromRGBO(255, 152, 0, 1).withOpacity(1),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Send Code To Email',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
