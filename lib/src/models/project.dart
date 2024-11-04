import 'package:anthony/src/utils/routes.dart';

class Project {
  static const String _path = Routes.projects;

  final String name;
  final String url;
  final String description;
  final String displayImg;
  final List<String> images;

  Project({
    required this.name,
    required this.url,
    required this.description,
    required this.displayImg,
    required this.images,
  });

  String get namedRoute => '$_path/${name.toLowerCase().replaceAll(' ', '_')}';
  String get path => name.toLowerCase().replaceAll(' ', '_');

  static List<Project> get all => [
        Project(
          name: 'Sensor Fusion for Realtime Spatial Object Detection',
          url:
              'https://github.com/AnthonyAniobi/Sensor-Fusion-for-Real-Time-Detection',
          description: 'description',
          displayImg:
              'https://res.cloudinary.com/aniobi/image/upload/v1730475271/hardware_projects/sensor_fusion_realtime_spatial_detection/6.png',
          images: [
            'https://res.cloudinary.com/aniobi/image/upload/v1730475271/hardware_projects/sensor_fusion_realtime_spatial_detection/1.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730475271/hardware_projects/sensor_fusion_realtime_spatial_detection/2.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730475271/hardware_projects/sensor_fusion_realtime_spatial_detection/3.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730475271/hardware_projects/sensor_fusion_realtime_spatial_detection/4.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730475271/hardware_projects/sensor_fusion_realtime_spatial_detection/5.png',
          ],
        ),
        Project(
          name: 'AI Robot Assistant',
          url: 'https://github.com/AnthonyAniobi/AI_Robot_Assistant',
          description:
              'An AI robotic assistant that makes use of tensorflow models from the mobile device to perform commands',
          displayImg:
              'https://res.cloudinary.com/aniobi/image/upload/v1730301514/hardware_projects/robot_assistant/5.png',
          images: [
            'https://res.cloudinary.com/aniobi/image/upload/v1730301514/hardware_projects/robot_assistant/1.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730301514/hardware_projects/robot_assistant/2.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730301514/hardware_projects/robot_assistant/3.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730301514/hardware_projects/robot_assistant/4.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730301514/hardware_projects/robot_assistant/6.png',
          ],
        ),
        Project(
          name: 'Flutter Home Automation',
          url: 'https://github.com/AnthonyAniobi/Flutter-home-automation',
          description: 'description',
          displayImg:
              'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation7.png',
          images: [
            'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation1.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation2.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation3.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation4.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation5.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation6.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730296439/hardware_projects/flutter_home_automation/flutter_home_automation8.png',
          ],
        ),
        Project(
          name: 'Automatic Chicken Brooder',
          url: 'https://github.com/AnthonyAniobi/Automatic_Chicken_Brooder',
          description: 'description',
          displayImg:
              'https://res.cloudinary.com/aniobi/image/upload/v1730300812/hardware_projects/chicken_brooder/3.png',
          images: [
            'https://res.cloudinary.com/aniobi/image/upload/v1730300812/hardware_projects/chicken_brooder/1.png',
            'https://res.cloudinary.com/aniobi/image/upload/v1730300812/hardware_projects/chicken_brooder/2.png',
          ],
        ),
      ];
}
