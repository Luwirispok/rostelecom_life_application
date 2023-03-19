import 'package:flutter/material.dart';
import 'package:rostelecom_life_application/core/images.dart';

class UploadScreenWidget extends StatelessWidget {
  const UploadScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image(
            width: 200,
            height: 200,
            image: MImages.rostelecom,
          ),
          Text('data'),
        ]),
        // actions: [
        //   SizedBox(
        //     width: 50,
        //   ),
        //   Image(
        //     image: MImages.rostelecom,
        //   ),
        //   Spacer(),
        //   Text('data'),
        // ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0XFF7700FF)),
              child: Center(
                child: Text(
                  'Меню',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            ListTile(
              hoverColor: Color(0XFFFF4F12),
              title: Row(children: [
                Icon(
                  Icons.person_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                const Text(
                  'Профиль',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                )
              ]),
              onTap: () {
                Navigator.of(context).pushNamed('/profile');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              hoverColor: Color(0XFFFF4F12),
              title: Row(children: [
                Icon(
                  Icons.article_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                const Text(
                  'Главный экран',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                )
              ]),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              hoverColor: Color(0XFFFF4F12),
              title: Row(children: [
                Icon(
                  Icons.upload_file_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                const Text(
                  'Загрузить новые данные',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                )
              ]),
              onTap: () {
                Navigator.of(context).pushNamed('/upload');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              hoverColor: Color(0XFFFF4F12),
              title: Row(children: [
                Icon(
                  Icons.info_outline_rounded,
                  size: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                const Text(
                  'О нас',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                )
              ]),
              onTap: () {
                Navigator.of(context).pushNamed('/about');
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
