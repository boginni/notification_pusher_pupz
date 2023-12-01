import 'package:flutter/material.dart';
import 'package:pupz_notification_pusher/app/domain/notification_repository.dart';
import 'package:pupz_notification_pusher/app/external/firebase_notification_repository.dart';
import 'package:pupz_notification_pusher/app/external/onesignal_notification_repository.dart';

class NotificationPusherController {
  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  final tokenController = TextEditingController();

  NotificationRepository _notificationRepository = OneSignalNotificationRepository();

  Future<void> _sendNotification(String title, String body, String token) async {}

  void onPressedSendNotification() {
    _sendNotification(
      titleController.text,
      bodyController.text,
      tokenController.text,
    );
  }

  void firebaseOnPressed() {
    _notificationRepository = FirebaseNotificationRepository();
  }

  void oneSignalOnPressed() {
    _notificationRepository = OneSignalNotificationRepository();
  }
}
