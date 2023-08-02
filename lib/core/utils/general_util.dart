import 'package:get/get.dart';
import 'package:impty_project/app/my_app_controller.dart';
import 'package:impty_project/core/Data/repositories/shared_prefernce_repository.dart';
import 'package:impty_project/core/enums/connectivity_status.dart';
import 'package:impty_project/core/enums/message_type.dart';
import 'package:impty_project/core/services/connectivity_service.dart';
import 'package:impty_project/core/services/location_service.dart';
import 'package:impty_project/core/services/notifction_service.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_toast.dart';
import 'package:url_launcher/url_launcher.dart';

SharedPreferencesRepository get storage =>
    Get.find<SharedPreferencesRepository>();

// CartService get cartService => Get.find<CartService>();
LocationService get locationService => Get.find<LocationService>();
ConnectivityService get connectivityService => Get.find<ConnectivityService>();
NotificationService get notificationService => Get.find<NotificationService>();

Future cLaunchUrl(Uri url) async {
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    CustomToast.showMessage(
        message: 'Cant lunch url', messageType: MessageType.REJECTED);
  }
}

double get taxAmount => 0.18;

double get deliverAmount => 0.1;

bool get isOnline =>
    Get.find<MyAppController>().connectivityStatus == ConnectivityStatus.ONLINE;

bool get isOffline =>
    Get.find<MyAppController>().connectivityStatus ==
    ConnectivityStatus.OFFLINE;

void checkConnection(Function function) {
  if (isOnline)
    function();
  else
    showNoConnectionMessage();
}

void showNoConnectionMessage() {
  CustomToast.showMessage(
      message: 'Please check internet connection',
      messageType: MessageType.WARNING);
}
