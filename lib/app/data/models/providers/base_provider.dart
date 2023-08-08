import 'package:get/get.dart';

import '../../constants.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = SERVER_API_URL;
    //当前项目不需要处理所以暂时不进行处理
    // 请求拦截
    // httpClient.addRequestModifier<void>((request) {
    //   request.headers['Authorization'] = 'xxx';
    //   return request;
    // });

    // 响应拦截
    httpClient.addResponseModifier((request, response) {
      return response;
    });
  }
}
