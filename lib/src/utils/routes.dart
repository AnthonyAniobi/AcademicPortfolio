import 'package:anthony/src/feature/contact/pages/contact.dart';
import 'package:anthony/src/feature/home/pages/home.dart';
import 'package:anthony/src/feature/home/pages/not_found.dart';
import 'package:anthony/src/feature/projects/pages/project_detail.dart';
import 'package:anthony/src/feature/projects/pages/project_list.dart';
import 'package:anthony/src/feature/publications/pages/publication_detail.dart';
import 'package:anthony/src/feature/publications/pages/publication_list.dart';
import 'package:anthony/src/models/project.dart';
import 'package:anthony/src/models/publication.dart';
import 'package:flutter/material.dart';

class Routes {
  static const home = '/';
  static const publication = '/publication';
  static const projects = '/projects';
  static const contact = '/contact';

  static String currentRoute = home;

  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  static Future push(String name, {dynamic arguments}) async =>
      await navKey.currentState?.pushNamed(name, arguments: arguments);

  static Map<String, WidgetBuilder> get routes => {
        home: (context) => const HomePage(),
        publication: (context) => const PublicationList(),
        projects: (context) => const ProjectList(),
        contact: (context) => const Contact(),
      };

  static Route<dynamic>? onGenerateRouted(RouteSettings routeSettings) {
    currentRoute = routeSettings.name ?? '';
    if (routeSettings.name == home) {
      return HomePage.route(routeSettings);
    } else if (routeSettings.name?.startsWith(publication) ?? false) {
      final name = routeSettings.name!.replaceAll(publication, '');
      if (name == publication) {
        return PublicationList.route(routeSettings);
      } else {
        final pubPath = name.replaceFirst('/', '');
        int idx = Publication.all.indexWhere((path) => path.path == pubPath);
        if (idx >= 0) {
          return MaterialPageRoute(
            builder: (_) => PublicationDetail(
              publication: Publication.all[idx],
            ),
          );
        }
      }
    } else if (routeSettings.name?.startsWith(projects) ?? false) {
      final name = routeSettings.name!.replaceAll(projects, '');
      if (name == projects) {
        return ProjectList.route(routeSettings);
      } else {
        final projPath = name.replaceFirst('/', '');
        int idx = Project.all.indexWhere((path) => path.path == projPath);
        if (idx >= 0) {
          return MaterialPageRoute(
            builder: (_) => ProjectDetail(
              project: Project.all[idx],
            ),
          );
        }
      }
    } else if (routeSettings.name == contact) {
      return Contact.route(routeSettings);
    }
    return NotFoundPage.route(routeSettings);
  }
}
