import 'package:flutter/material.dart';
import 'package:portfolio/models/user.dart';
import 'package:portfolio/my_info.dart';
import 'package:portfolio/widgets/about_widget.dart';
import 'package:portfolio/widgets/appbar.dart';
import 'package:portfolio/widgets/certificate_widget.dart';
import 'package:portfolio/widgets/education_widget.dart';
import 'package:portfolio/widgets/experience_widget.dart';
import 'package:portfolio/widgets/profile_widget.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = UserPreferences.me;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 24,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(user),
          const SizedBox(
            height: 24,
          ),
          buildAbout(user, width),
          const SizedBox(
            height: 8,
          ),
          buildEducation(user, width),
          const SizedBox(
            height: 8,
          ),
          buildExperience(width),
          const SizedBox(
            height: 8,
          ),
          buildCertificate(width),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );
}
