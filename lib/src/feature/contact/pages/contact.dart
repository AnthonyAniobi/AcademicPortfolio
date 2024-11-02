import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  static Route<dynamic> route(RouteSettings routeSettings) {
    return MaterialPageRoute(
      builder: (_) => const Contact(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Contact'),
      ],
    );
  }
}
