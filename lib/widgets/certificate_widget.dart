import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildCertificate(double width) => Container(
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
                          'Certificates',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        InkWell(
                            child: const Text(
                              '1. Microsoft Certified: Azure AI Fundamentals',
                              style: TextStyle(fontSize: 16, height: 1.4),
                            ),
                            onTap: () => launch(
                                'https://www.credly.com/badges/e164f8c6-535f-4da4-b947-e88cdb6ddde7?source=linked_in_profile')),
                        const SizedBox(height: 8),
                        InkWell(
                            child: const Text(
                              '2. Microsoft Certified: Azure Data Fundamentals',
                              style: TextStyle(fontSize: 16, height: 1.4),
                            ),
                            onTap: () => launch(
                                'https://www.credly.com/badges/a5ab4ead-7e03-464a-9d40-944842a972ff?source=linked_in_profile')),
                        const SizedBox(height: 8),
                        InkWell(
                            child: const Text(
                              '3. Information Technology Passport Examination (IP)',
                              style: TextStyle(fontSize: 16, height: 1.4),
                            ),
                            onTap: () => launch(
                                'https://www.nstdaacademy.com/itpe/letters/letters_6302/75997513452f37221c14379344531133.pdf')),
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
