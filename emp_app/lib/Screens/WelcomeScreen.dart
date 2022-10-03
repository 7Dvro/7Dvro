// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:emp_app/constnats/strings.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('assets/images/Helal.png'),
                ),
                Text(
                  'Ambulance Tracking',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.blue[900],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width - 35,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(children: [
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 10,
                          primary: Colors.red[800],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 90,
                            vertical: 10,
                          ),
                        ),
                        onPressed: () {
                          Navigator.popAndPushNamed(
                            context,
                            homeScreen,
                          );
                        },
                        child: Text(
                          'Emergency',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        'You can log in to app with accounts..!',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 9,
                              primary: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 10,
                              ),
                            ),
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                context,
                                wrapper,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.popAndPushNamed(
                                      context,
                                      loginWithEmailScreen,
                                    );
                                  },
                                  icon: const Icon(Icons.email)),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 9,
                              primary: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 10,
                              ),
                            ),
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                context,
                                loginWithEmailScreen,
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.popAndPushNamed(
                                      context,
                                      loginWithPhoneNumberScreen,
                                    );
                                  },
                                  icon: const Icon(Icons.phone)),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 9,
                              primary: Colors.red[800],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(35),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 9,
                                vertical: 10,
                              ),
                            ),
                            onPressed: () {
                              Navigator.popAndPushNamed(
                                  context, registertionScreen);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red[800],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(0),
                              child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.popAndPushNamed(
                                      context,
                                      registertionScreen,
                                    );
                                  },
                                  icon:
                                      const Icon(Icons.app_registration_sharp)),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
