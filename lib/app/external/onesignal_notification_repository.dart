import 'package:onesignal_flutter/onesignal_flutter.dart';

import '../domain/notification_repository.dart';

class OneSignalNotificationRepository extends NotificationRepository {

  final appKey = '';

  init(){
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize(appKey);
    OneSignal.Notifications.requestPermission(true);
  }

  @override
  Future<void> getNotifications() {
    throw UnimplementedError();
  }



}