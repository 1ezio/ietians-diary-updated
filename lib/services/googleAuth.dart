import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class Authentication{

  FirebaseAuth instance =FirebaseAuth.instance;
  final GoogleSignIn auth = GoogleSignIn();
  Stream<User?> get user{
    // print(instance.currentUser);
    return instance.userChanges();
  }


  String? email;
  String? username;


  Future signOut() async {
    try{
      GoogleSignIn().signOut();
      instance.signOut();
    }
    catch(e){
      print(e.toString());
    }
  }


  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

      email = googleUser?.email;
      username = googleUser?.displayName;

    // Once signed in, return the UserCredential
    // print("done");
     return await instance.signInWithCredential(credential);
  }
}


