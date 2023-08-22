import 'package:shopping/models/user.dart';
import 'data.dart';

class Authentication {
  static User? loggedInUser; // Store the logged-in user

  // Implement login and logout methods here
  static bool login(String username, String password) {
    for (var user in Data.users) {
      if (user.name == username && user.password == password) {
        loggedInUser = user;
        return true;
      }
    }
    return false;
  }

  static void logout() {
    loggedInUser = null;
  }
}
