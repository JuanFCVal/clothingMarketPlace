import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseService {
  static Future<dynamic> signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final googleUser = await GoogleSignIn().signIn();
      // Obtain the auth details from the request
      final googleAuth = await googleUser?.authentication;
      print(googleAuth?.idToken ?? "No hay token");
      if (googleAuth != null) {
        // Create a new credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        // Once signed in, return the UserCredential

        final val =
            await FirebaseAuth.instance.signInWithCredential(credential);
        print(val);
      }
    } on FirebaseAuthException {
      return {
        "status": false,
        "message": "Ha ocurrido un error en la validación, vuelve a intentarlo",
      };
    } catch (e) {
      print(e);
      return {
        "status": false,
        "message": "Ha ocurrido un error en la validación, vuelve a intentarlo",
      };
    }
  }
}
