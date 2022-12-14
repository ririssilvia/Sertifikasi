

import 'package:sertifikasi/database/sqlhelper.dart';
import 'package:sertifikasi/model/user.dart';

class LoginService {
  //proses login untuk mencocokan data 
  static login(UserModel userModel) async {
    var data = await SqlHelper.findByUsername(userModel);

    if (data.length != 0) {
      if (data[0]['username'] != userModel.username) {
        data = [];
        return data;
      } else if (data[0]['username'] == userModel.username &&
          data[0]['password'] == userModel.password) {
        return data;
      } else if (data[0]['username'] == userModel.username ||
          data[0]['password'] == userModel.password) {
        data = [];
        return data;
      }
    } else {
      data = [];
      return data;
    }
  }
  
  static findAll() async {
    final users = await SqlHelper.findAll();
    print(users);
  }
}
