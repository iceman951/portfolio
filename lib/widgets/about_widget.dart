import 'package:flutter/material.dart';
import 'package:portfolio/models/user.dart';

Widget buildAbout(User user, double width) => Container(
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
                          'About Me',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Date of Birth: ' + user.birthDate,
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Personality: ' + user.personality,
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Language: ' + user.language,
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Hobbies: ' + user.hobbies,
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Skills',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Back-end',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Node.js ,Express.js, MongoDB, Mongoose, PostgreSQL',
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Mobile',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Flutter, Hive',
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Cloud',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Use Nginx host Web Server on Digital Ocean, Azure App Service',
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Others',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Git & Github, JWT, OAuth, Socket.IO, bcrypt',
                          style: TextStyle(fontSize: 16, height: 1.4),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: Container())
                ])),
          )
        ],
      ),
    );
