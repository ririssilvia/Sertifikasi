import 'package:sertifikasi/database/sqlhelper.dart';
import 'package:sertifikasi/model/user.dart';

class UserService {
//update data profile user
  static Future<int> updateData(UserModel userModel , id) async {
    return SqlHelper.updateData(userModel , id);
  }
}
