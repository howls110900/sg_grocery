import 'package:sg_grocery/main.dart';

class PrefsKey  {
  static const String isLogin = "IS_LOGIN";
  //TODO:
}

void setLogin (bool value){
  prefs?.setBool(PrefsKey.isLogin, value);
}

bool checkLogin() {
  return prefs?.getBool(PrefsKey.isLogin) == true;
  // if(prefs == null
  //     || prefs?.getBool(PrefsKey.isLogin) == null
  //     || prefs?.getBool(PrefsKey.isLogin) == false
  // ){
  //   return false;
  // }
  // else
  //   return true;
}
