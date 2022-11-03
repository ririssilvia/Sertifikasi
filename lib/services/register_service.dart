import 'package:sertifikasi/database/sqlhelper.dart';
import 'package:sertifikasi/model/user.dart';

//insert data register user
class RegisterService {
  static register(UserModel userModel) async {
    var data = await SqlHelper.insertData(userModel);
  }
}
