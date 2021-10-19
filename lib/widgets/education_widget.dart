import 'package:flutter/material.dart';
import 'package:portfolio/models/user.dart';

Widget buildEducation(User user, double width) => Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width / 2,
            child: Card(
                margin: const EdgeInsets.only(top: 18.0),
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 20,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 24),
                          const Text(
                            'Education',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            user.highschool,
                            style: TextStyle(fontSize: 16, height: 1.4),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            user.university,
                            style: TextStyle(fontSize: 16, height: 1.4),
                          ),
                          const SizedBox(height: 24),
                        ]),
                  ),
                  Expanded(flex: 1, child: Container())
                ])),
          )
        ],
      ),
    );
