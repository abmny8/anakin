/*import 'package:firebase_auth/firebase_auth.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signIn(String email, String password) async {
  try {
    UserCredential result =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    User user = result.user;
    return Future.value(true);
  } catch (e) {
    switch (e.code) {
      case 'ERROR_INVALID_EMAIL':
        print('error');
    }
  }
}

Future<void> signOutUser() async {
  User user = await auth.currentUser();

  await auth.signOut();
}*/
