import 'package:impty_project/core/enums/connectivity_status.dart';
import 'package:impty_project/core/services/base_controller.dart';
import 'package:impty_project/core/utils/general_util.dart';

class MyAppController extends BaseController {
  ConnectivityStatus connectivityStatus = ConnectivityStatus.ONLINE;

  set setConnectivityStatus(ConnectivityStatus value) {
    connectivityStatus = value;
  }

  void listenForConnectivityStatus() {
    connectivityService.connectivityStatusController.stream.listen((event) {
      setConnectivityStatus = event;
    });
  }

  @override
  void onInit() {
    listenForConnectivityStatus();
    super.onInit();
  }

  // @override
  // void onClose() {
  //   listenForConnectivityStatus();

  //   super.onClose();
  // }
}
