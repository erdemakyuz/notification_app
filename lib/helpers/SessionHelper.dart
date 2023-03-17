import 'package:firebase_messaging/firebase_messaging.dart';

class SessionHelper {
  static Future<String> GetRegistrationId() async {
    var token = (await FirebaseMessaging.instance.getToken()) ?? "";
    return token;
  }

  static String? RegistrationId;
}
