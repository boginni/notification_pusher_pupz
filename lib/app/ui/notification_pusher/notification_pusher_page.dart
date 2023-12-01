import 'package:flutter/material.dart';

import 'notification_pusher_controller.dart';

class NotificationPusherPage extends StatefulWidget {
  const NotificationPusherPage({super.key});

  @override
  State<NotificationPusherPage> createState() => _NotificationPusherPageState();
}

class _NotificationPusherPageState extends State<NotificationPusherPage> {
  final NotificationPusherController controller = NotificationPusherController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Notification Pusher'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.notifications,
                  size: 64,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Text(
                'Pupz Notification Pusher',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                controller: controller.titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                onChanged: (String value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: controller.bodyController,
                decoration: const InputDecoration(
                  labelText: 'Body',
                ),
                onChanged: (String value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: controller.tokenController,
                decoration: const InputDecoration(
                  labelText: 'Token',
                ),
                onChanged: (String value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              FilledButton(
                onPressed: controller.onPressedSendNotification,
                child: const Text('Send Notification'),
              ),
              const Expanded(
                child: SizedBox(
                  height: 32,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: _SwichButton(
                      isSelected: false,
                      onPressed: controller.firebaseOnPressed,
                      child: const Text('Firebase'),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: _SwichButton(
                      isSelected: true,
                      onPressed: controller.oneSignalOnPressed,
                      child: const Text('OneSignal'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _SwichButton extends StatelessWidget {
  const _SwichButton({
    super.key,
    required this.isSelected,
    required this.child,
    required this.onPressed,
  });

  final bool isSelected;

  final Widget child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return FilledButton(
        onPressed: onPressed,
        child: child,
      );
    }

    return OutlinedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
