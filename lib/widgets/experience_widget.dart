import 'package:flutter/material.dart';

Widget buildExperience(double width) => Container(
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
                      children: const [
                        SizedBox(height: 24),
                        Text(
                          'Experience',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Back-end Developer Internship, NextHop Co., Ltd. (2021)',
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Part-time, Teaching Assistant of Basic Engineering Programming (Python), Faculty of Engineering, PSU (2021)',
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: Container())
                ])),
          )
        ],
      ),
    );
