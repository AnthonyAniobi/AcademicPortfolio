import 'package:anthony/src/models/publication.dart';
import 'package:flutter/material.dart';

class PublicationDetail extends StatelessWidget {
  const PublicationDetail({super.key, required this.publication});

  final Publication publication;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Publication'),
        Text(publication.title),
      ],
    );
  }
}
