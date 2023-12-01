import '../domain/notification_repository.dart';

class FirebaseNotificationRepository extends NotificationRepository {
  final appKey = '';

  @override
  Future<void> getNotifications() {
    throw UnimplementedError();
  }
}
