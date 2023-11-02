import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:kiwi/kiwi.dart';
import '../api/api.dart';

final KiwiContainer container = KiwiContainer();

Future registerApiInstance() async {
  final Api api = Api(Dio());
  Get.put(api);
  api.setUpInterceptors();
  container.registerInstance(api);
}
