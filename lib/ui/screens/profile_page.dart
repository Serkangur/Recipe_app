import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/ui/screens/widgets/profile.widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Constants.primaryColor.withOpacity(.5),
                    width: 5.0,
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * .3,
              child: Row(
                children: [
                  Text(
                    'Serkan Gür',
                    style: TextStyle(
                      color: Constants.blackColor,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                    child: Image.asset("assets/images/verified.png"),
                  ),
                ],
              ),
            ),
            Text(
              'serkangur002@gmail.com',
              style: TextStyle(
                color: Constants.blackColor.withOpacity(.3),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  ProfileWidget(icon: Icons.person, title: 'Profilim'),
                  ProfileWidget(icon: Icons.settings, title: 'Ayarlar'),
                  ProfileWidget(
                      icon: Icons.notifications, title: 'Bildirimler'),
                  ProfileWidget(icon: Icons.chat, title: 'FaQs'),
                  ProfileWidget(icon: Icons.share, title: 'Paylaşma'),
                  ProfileWidget(icon: Icons.logout, title: 'Çıkış'),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
