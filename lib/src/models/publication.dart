import 'package:anthony/src/utils/routes.dart';

enum PublicationType {
  journal,
  patent,
  conference;
}

class Publication {
  static const String _path = Routes.publication;

  final String title;
  final String description;
  final String abstract;
  final String publicationName;
  final String? url;
  final DateTime date;
  final PublicationType type;

  Publication({
    required this.title,
    required this.description,
    required this.abstract,
    required this.publicationName,
    required this.date,
    required this.type,
    this.url,
  });

  String get namedRoute => '$_path/${title.toLowerCase().replaceAll(' ', '_')}';
  String get path => title.toLowerCase().replaceAll(' ', '_');

  static List<Publication> get all => [
        Publication(
            title:
                'Sensor Fusion for Real-Time Object Detection and Spatial Positioning in Unmanned Vehicles Using YOLOv8 and ESP32-Cam',
            description: '',
            abstract: '',
            publicationName:
                'International Journal of Engineering Applied Science and Technology',
            date: DateTime(2024, 10),
            type: PublicationType.journal),
        Publication(
          title:
              'AI and Robotics in Surgery: Leveraging Machine Learning for Predictive Analytics and Outcomes',
          description: '',
          abstract: '',
          publicationName: 'Iconic Research and Engineering Journal',
          date: DateTime(2024, 9),
          type: PublicationType.journal,
        ),
        Publication(
          title:
              'Adaptative Design of the Tip-Tilt Dual-axis Solar Tracker (TTDAT) for Efficient Wind Resistance and Improved Power Generation',
          description: '',
          abstract: '',
          publicationName:
              'Conference of Engineering Research Technology Innovation and Practice',
          date: DateTime(2023, 1),
          type: PublicationType.conference,
        ),
        Publication(
          title: 'Fermented Cassava Pulp Extractor',
          description: '',
          abstract: '',
          publicationName: '',
          date: DateTime(2021),
          type: PublicationType.conference,
        ),
      ];
}
