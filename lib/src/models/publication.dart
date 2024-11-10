import 'package:anthony/src/utils/routes.dart';

enum PublicationType {
  journal,
  patent,
  conference;

  bool get isJournal => this == journal;
  bool get isPatent => this == patent;
  bool get isConference => this == conference;

  String get urlName {
    if (this == patent) {
      return 'Certificate Url';
    } else {
      return 'Source Url';
    }
  }
}

enum PublicationStatus {
  inReview,
  published;

  bool get isInReview => this == inReview;
  bool get isPublished => this == published;
}

class Publication {
  static const String _path = Routes.publication;

  final String title;
  final String description;
  final String abstract;
  final String publicationName;
  final String? url;
  final String? image;
  final DateTime date;
  final PublicationType type;
  final PublicationStatus status;
  final List<PubAuthor> authors;

  Publication({
    required this.title,
    required this.description,
    required this.abstract,
    required this.publicationName,
    required this.date,
    required this.type,
    required this.status,
    required this.authors,
    this.url,
    this.image,
  });

  String get namedRoute => '$_path/${title.toLowerCase().replaceAll(' ', '_')}';
  String get path => title.toLowerCase().replaceAll(' ', '_');

  (String, String) get details {
    if (description.isNotEmpty) {
      return ('Description', description);
    } else {
      return ('Abstract', abstract);
    }
  }

  static List<Publication> get all => [
        Publication(
            title:
                'Sensor Fusion for Real-Time Object Detection and Spatial Positioning in Unmanned Vehicles Using YOLOv8 and ESP32-Cam',
            description: '''
This project presents a real-time object detection and spatial positioning system designed for unmanned vehicles, utilizing sensor fusion between an ESP32-CAM module and an ultrasonic sensor. The ESP32-CAM captures visual data and transmits it to a network, where the YOLOv8 object detection algorithm processes each frame to identify and locate objects. Simultaneously, the ultrasonic sensor, managed by an ESP8266 microcontroller, measures the distance to nearby objects, transmitting this information across the same network. By combining YOLOv8's bounding box coordinates with ultrasonic distance measurements, the system calculates the spatial coordinates of detected objects, achieving high accuracy in positioning.

This integrated approach allows unmanned vehicles to detect and position obstacles with low power consumption and minimal cost, suitable for applications such as autonomous navigation and obstacle avoidance. Though limited in long-range detection by the ultrasonic sensor, this system demonstrates a reliable, efficient solution for close-range navigation. With potential future enhancements, including the integration of LiDAR for extended range and calibration to improve edge precision, this setup could advance both the efficiency and reliability of autonomous vehicle navigation in various operational environments.''',
            abstract: '',
            publicationName: 'Preprints',
            date: DateTime(2024, 10),
            type: PublicationType.journal,
            status: PublicationStatus.inReview,
            url: 'https://www.preprints.org/manuscript/202411.0611/v1',
            image:
                'https://res.cloudinary.com/aniobi/image/upload/v1730475271/hardware_projects/sensor_fusion_realtime_spatial_detection/1.png',
            authors: [
              PubAuthor(name: 'Anthony Aniobi', isMe: true),
            ]),
        Publication(
          title:
              'AI and Robotics in Surgery: Leveraging Machine Learning for Predictive Analytics and Outcomes',
          description: '',
          abstract:
              '''Artificial Intelligence (AI) and robotics are revolutionizing the field of surgery, offering unprecedented precision, efficiency, and improved patient outcomes. This article explores the transformative impact of AI and robotics in surgical practices, with a particular focus on machine learning (ML) and predictive analytics. AI algorithms analyze vast amounts of data to assist in decision-making, predict outcomes, and perform certain tasks autonomously, while robotic systems provide enhanced dexterity and control for minimally invasive procedures. The integration of these technologies facilitates personalized treatment plans, reduces recovery times, and enhances patient safety. This article also presents real-world examples and case studies, highlighting the practical benefits and future trends in AI and robotics within the surgical field. Ethical considerations and challenges, such as patient safety, informed consent, data privacy, and bias in AI models, are also discussed.

The findings underscore the potential of AI and robotics to revolutionize surgical procedures and improve healthcare outcomes, encouraging ongoing innovation and adoption in the medical community''',
          publicationName: 'Iconic Research and Engineering Journal',
          date: DateTime(2024, 9),
          type: PublicationType.journal,
          status: PublicationStatus.published,
          url: 'https://www.irejournals.com/formatedpaper/1706332.pdf',
          authors: [
            PubAuthor(name: 'JOSEPH JEREMIAH ADEKUNLE'),
            PubAuthor(name: 'SAMSON OSEIWE AJADALU'),
            PubAuthor(name: 'ANTHONY OGADIMMA ANIOBI', isMe: true),
            PubAuthor(name: 'CHINEDU IBEZIM ONYIA'),
            PubAuthor(name: 'SAMUEL JORDAN TATCHUM KOMGUEM'),
          ],
          image:
              'https://res.cloudinary.com/aniobi/image/upload/v1730761493/hardware_projects/publication_images/robotics_for_medicine.png',
        ),
        Publication(
          title:
              'Adaptative Design of the Tip-Tilt Dual-axis Solar Tracker (TTDAT) for Efficient Wind Resistance and Improved Power Generation',
          description: '',
          abstract: '''
Wind can be a friend or a foe. At an operating velocity above 22.35m/s-
26.83m/s, wind becomes destructive. Its dangerous effect is not limited to but extend
to the destruction posed to solar panels and trackers on roof tops as well as ground
installations. A wind resistant; dual axis solar tracking mechanism, incorporating a flexible
control mechanism that adapts to wind change has been designed as a solution to the
problem. The wind monitoring mechanism is custom-built operating on an Arduino
controller which not only drives the prime
mover but provides the logical operations
that interprets the signals for wind control.
The overall design of the mechanical
structure is based on the Tip-tilt dual axis
tracking mechanism (TTDAT) with material
selection which greatly reduces weight
problems, improves flexibility and yet
guarantees strength. A prime mover using a
L239D motor driver interface is attached to
mechanical gears that control movement
along the two axes of the TTDAT
mechanism. A 24% increment in power
production was recorded over its static
counterpart and this also predicted a
position for maximum power output from
static systems installed in the eastern region
in Nigeria. The work also specified a
maximum operating range for solar trackers
within the location of test: University of
Nigeria, Nsukka (6.8645oN; 7.4083oE) as
between 09:30hrs and 15:00hrs. The
efficiency of the solar tracker was improved
by 10% when operated within the
aforementioned time zone. The design also
had a maximum of force limit of 0.0294N
resistance from wind loading. It also did
recommend a scalable design that can be
used for improvement of tracker resistance
to wind within the prevalent speed in
Nigeria.''',
          publicationName:
              'Conference of Engineering Research Technology Innovation and Practice',
          date: DateTime(2023, 1),
          type: PublicationType.conference,
          status: PublicationStatus.published,
          url:
              'https://acrobat.adobe.com/link/review?uri=urn:aaid:scds:US:556e3c11-5940-4a33-8031-5455acc66799',
          authors: [
            PubAuthor(name: 'Chibeoso Wodi'),
            PubAuthor(name: 'Anthony Ogadimma Aniobi', isMe: true),
            PubAuthor(name: 'Anthony Kpegele Le-ol'),
          ],
          image:
              'https://res.cloudinary.com/aniobi/image/upload/v1730761493/hardware_projects/publication_images/solar_tracker.png',
        ),
        Publication(
            title: 'Fermented Cassava Pulp Extractor',
            description: '''The machine is made of a specially
designed screw conveyor with a digester section along its length. The
conveyor is placed inside a close-fitting cylindrical sieve which is in turn
placed inside a larger enclosing outer cylinder. The machine has a hopper for
fermented cassava pulp inlet, the sieved fine pulp outlet and the chaff outlet,
all externalized through the outer cylinder. The machine achieves its sieving
operation by a combined action of the screw conveyor fitted with beaters and
the perforated inner cylinder mesh on an intermitently wetted cassava pulp.
The machine produces about 3 kg of fine wet pulp within a minute. By
comparing the fine pulp content of the un-sieved pulp and that of the chaff,
the sieving efficiency of the machine was evaluated to be 85% such that the
chaff may be recycled for complete sieving. The machine is simple and
affordable, it holds a great potential to take fermented cassava wet sieving to
the next level''',
            abstract: '',
            publicationName: '',
            date: DateTime(2021),
            type: PublicationType.patent,
            status: PublicationStatus.published,
            authors: [
              PubAuthor(name: 'EDWARD C ANOLIEFO'),
              PubAuthor(name: 'NWOBI DUMEBI'),
              PubAuthor(name: 'VINCENT C. CHIJINDU'),
              PubAuthor(name: 'MAMILUS A. AHANEKU'),
              PubAuthor(name: 'SAMUEL A.UGWU'),
              PubAuthor(name: 'OLISA C. SAMUEL'),
              PubAuthor(name: 'ANTHONY ANIOBI OGADIMMA', isMe: true),
              PubAuthor(name: 'CORNELIUS O. A AGBO'),
              PubAuthor(name: 'SOCHIMA VINCENT EGOIGWE'),
              PubAuthor(name: 'GERALD U. AKUBUE'),
              PubAuthor(name: 'ONYEKWERE OJIKE'),
              PubAuthor(name: 'UGWU IFEANYICHUKWU'),
            ],
            image:
                'https://res.cloudinary.com/aniobi/image/upload/v1730761492/hardware_projects/publication_images/cassava_sifter.png',
            url:
                'https://drive.google.com/file/d/1PzSNMlTUkYcUgqTiEsDSWXNeRkrJiKym/view?usp=sharing'),
      ];
}

class PubAuthor {
  final String name;
  final bool isMe;

  PubAuthor({required this.name, this.isMe = false});
}
