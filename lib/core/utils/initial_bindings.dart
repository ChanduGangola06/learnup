import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:learnup/core/network/network_info.dart';
import 'package:learnup/core/utils/pref_utils.dart';
import 'package:learnup/data/api_client/api_client.dart';

class InitialBindings extends Bindings {
  var context;
  InitialBindings({required this.context});
  @override
  void dependencies() {
    // Get.put(PrefUtils());
    // Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
  }
}
