import 'package:flutter/material.dart';
import 'package:rostelecom_life_application/core/images.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image(
            width: 200,
            height: 200,
            image: MImages.rostelecom,
          ),
          Text('Главная'),
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
            // Divider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [Text('Агент по продажам')],
            // ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80)),
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(19, 119, 0, 255),
                    blurRadius: 4,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.044,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              hintText: "Type in your text",
                              fillColor: Colors.white70),
                        ),
                      ),
                      Spacer(),
                      Container(
                          width: 200,
                          height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: ElevatedButton(
                              onPressed: () {}, child: Text('Найти'))),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                    height: 20,
                  ),
                  FilterChipExample(),
                ],
              )),
            ),
            Spacer(),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.height * 1.7,
                  height: MediaQuery.of(context).size.height * 0.60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(19, 119, 0, 255),
                        blurRadius: 4,
                        spreadRadius: 4,
                      ),
                    ],
                  )),
            ),
            Spacer()
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 80,
            //       child: Container(
            //         width: double.infinity,
            //         height: MediaQuery.of(context).size.height * 0.25,
            //         decoration: BoxDecoration(
            //             gradient: LinearGradient(colors: [
            //           Color(0XFFFF4F12),
            //           Color(0XFF7700FF),
            //         ])),
            //       ),
            //     ),
            //     Expanded(
            //       flex: 20,
            //       child: Container(
            //         width: double.infinity,
            //         height: MediaQuery.of(context).size.height * 0.25,
            //         decoration: BoxDecoration(
            //             borderRadius:
            //                 BorderRadius.only(bottomLeft: Radius.circular(50)),
            //             gradient: LinearGradient(colors: [
            //               Color(0XFFFF4F12),
            //               Color(0XFF7700FF),
            //             ])),
            //       ),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}

class FilterChipExample extends StatefulWidget {
  const FilterChipExample({super.key});

  @override
  State<FilterChipExample> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  bool favorite = false;
  final List<String> _filters = <String>[];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
        child: Row(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.046,
        ),
        Expanded(flex: 10, child: Text('Ищем: ${_filters.join(', ')}')),
        SizedBox(
          width: 50,
        ),
        Expanded(
          flex: 6,
          child: Wrap(
            spacing: 5.0,
            children: ExerciseFilter.values.map((ExerciseFilter exercise) {
              return FilterChip(
                label: Text(exercise.name),
                selected: _filters.contains(exercise.name),
                onSelected: (bool value) {
                  setState(() {
                    if (value) {
                      if (!_filters.contains(exercise.name)) {
                        _filters.clear();

                        _filters.add(exercise.name);
                      }
                    } else {
                      _filters.removeWhere((String name) {
                        return name == exercise.name;
                      });
                    }
                  });
                },
              );
            }).toList(),
          ),
        ),
      ],
    ));
  }
}

enum ExerciseFilter {
  ApplicationNumber,
  INN,
  Organization,
}
