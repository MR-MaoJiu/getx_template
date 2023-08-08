import 'package:get/get.dart';
import 'package:getx_template/app/data/models/providers/base_provider.dart';

import '../user_model.dart';

class UserProvider extends BaseProvider {
  Future<Response> getUser(String url) => get(url);
  Future<Response<User>> postUser(User user) async => await post('user', user);
  Future<Response> deleteUser(int id) async => await delete('user/$id');
}
