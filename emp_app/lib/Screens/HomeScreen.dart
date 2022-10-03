// ignore: file_names
import 'package:emp_app/constnats/strings.dart';
import 'package:flutter/material.dart';
import 'package:emp_app/Screens/MapScreen.dart';
import 'package:emp_app/Screens/WelcomeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          iconSize: 30,
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.popAndPushNamed(
              context,
              myDrawer,
            );
          },
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/images/ambulance.png',
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text('Ambulance Tracking'),
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue[800],
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(6),
            child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.popAndPushNamed(
                    context,
                    welcomeScreen,
                  );
                },
                icon: const Icon(Icons.login)),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.blueGrey,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.blueGrey,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add,
                color: Colors.blueGrey,
              ),
              label: ''),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.account_box,
                color: Colors.blueGrey,
              ),
              label: ''),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 95,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            primary: Colors.red[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 90,
                              vertical: 10,
                            ),
                          ),
                          onPressed: () {
                            Navigator.popAndPushNamed(
                              context,
                              mapScreen,
                            );
                          },
                          child: const Text(
                            'Dangerous Situation',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            primary: Colors.yellow[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 90,
                              vertical: 10,
                            ),
                          ),
                          onPressed: () {
                            Navigator.popAndPushNamed(
                              context,
                              mapScreen,
                            );
                          },
                          child: const Text(
                            'Medium Situation',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 10,
                            primary: Colors.green[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 90,
                              vertical: 10,
                            ),
                          ),
                          onPressed: () {
                            Navigator.popAndPushNamed(
                              context,
                              mapScreen,
                            );
                          },
                          child: const Text(
                            'Normal Situation',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
