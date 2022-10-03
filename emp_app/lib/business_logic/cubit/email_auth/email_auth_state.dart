// // ignore_for_file: unused_field, unused_local_variable, avoid_print, unnecessary_import, dead_code, unused_element
// import 'package:emp_app/models/user.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;

//   // create user obj based on FirebaseUser
//   Users? _authFromFirebaseUser(User? user) {
//     if (user != null) {
//       return Users(uid: user);
//     } else {
//       return null;
//     }
//   }

//   //auth change user stream
//   Stream<User?> get user {
//     return _auth.authStateChanges().map((User? user) => (user));
//   }

//   // sign in anon
//   Future signInAnon() async {
//     try {
//       UserCredential result = await _auth.signInAnonymously();
//       User? user = result.user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//   // sign in with email & password
//   // register with email & password
//   // sign Out
// }
