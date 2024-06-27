import 'package:shared_preferences/shared_preferences.dart';

import 'keys.dart';

class AppPreferences {
  AppPreferences(this.prefs);
  final SharedPreferences prefs;

  //*   >>>>>>>>>>>>>>>>>>>> Authentication <<<<<<<<<<<<<<<<<

  Future<bool> get onSubmittedLogin async =>
      await prefs.setBool(Keys.login, true);
  bool get isLogin => prefs.getBool(Keys.login) ?? false;

  Future<bool> get rememberMe async =>
      await prefs.setBool(Keys.rememberMe, true);
  bool get isRememperMe => prefs.getBool(Keys.rememberMe) ?? false;
  Future<void> get removeRememberMe async =>
      await prefs.remove(Keys.rememberMe);

  //? logoutc
  Future<void> logout() async {
    await removeLoggedUserData();
  }

  Future<void> removeLoggedUserData() async {
    await removeUserDataKeys(
      keys: [
        Keys.login,
        Keys.userEmail,
        Keys.token,
        Keys.cookie,
        Keys.userId,
      ],
    );
  }

  Future<void> removeUserDataKeys({required List<String> keys}) async {
    for (final key in keys) {
      await prefs.remove(key);
    }
  }

  //!   >>>>>>>>>>>>>>>>>>>> Tokens <<<<<<<<<<<<<<<<<
  Future<bool> setUserId(String userId) async =>
      await prefs.setString(Keys.userId, userId);
  String? get getUserId => prefs.getString(Keys.userId).toString();

  //? token
  Future<bool> setToken(String token) async =>
      await prefs.setString(Keys.token, "Bearer $token");
  String get getToken => prefs.getString(Keys.token) ?? "";

  Future<bool> setCookie(String cookie) async =>
      await prefs.setString(Keys.cookie, cookie);
  String get getCookie => prefs.getString(Keys.cookie) ?? "";

  Future<void> removeTokens() async {
    await prefs.remove(Keys.token);
    await prefs.remove(Keys.cookie);
  }

  //*   >>>>>>>>>>>>>>>>>>>> language <<<<<<<<<<<<<<<<<

  //? language key
  Future<bool> setLang(String code) async =>
      await prefs.setString(Keys.languageCode, code);
  String get getLang => prefs.getString(Keys.languageCode) ?? Keys.en;
}
