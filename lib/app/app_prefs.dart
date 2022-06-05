import 'package:advanced_flutter_arabic/app/extentions.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String prefsKeyValue = 'PREF_KEY_LANG';

class AppPreferences {
  final SharedPreferences sharedPreferences;

  AppPreferences(this.sharedPreferences);

  String getLanguage() {
    String language = sharedPreferences.getString(prefsKeyValue) ??
        LanguageType.english.getLanguage();
    if (language.isEmpty) {
      return LanguageType.english.getLanguage();
    }
    return language;
  }
}
