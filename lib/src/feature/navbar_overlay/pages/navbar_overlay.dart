import 'package:anthony/src/contants/app_images.dart';
import 'package:anthony/src/extensions/responsive_extension.dart';
import 'package:anthony/src/utils/app_utils.dart';
import 'package:anthony/src/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavbarOverlay extends StatelessWidget {
  const NavbarOverlay({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      if (sizingInfo.isMobile) {
        return _NavbarMobile(child);
      } else if (sizingInfo.isTablet) {
        return _NavbarTablet(child);
      } else {
        return _NavbarWeb(child);
      }
    });
  }
}

class _NavbarWeb extends StatelessWidget {
  const _NavbarWeb(this.child);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: InkWell(
          onTap: () => Routes.navKey.currentState?.pushNamed(Routes.home),
          child: Text(
            'Anthony Aniobi',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
        ),
        actions: _menu
            .map(
              (menu) => _headerLink(
                menu.$1,
                menu.$2,
              ),
            )
            .toList(),
      ),
      body: child,
    );
  }
}

class _NavbarTablet extends StatelessWidget {
  const _NavbarTablet(this.child);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: InkWell(
          onTap: () => Routes.navKey.currentState?.pushNamed(Routes.home),
          child: Text(
            'Anthony Aniobi',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
        ),
        actions: _menu
            .map(
              (menu) => _headerLink(
                menu.$1,
                menu.$2,
              ),
            )
            .toList(),
      ),
      body: child,
    );
  }
}

class _NavbarMobile extends StatelessWidget {
  const _NavbarMobile(this.child);

  final Widget? child;
  static final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          children: _menu
              .map(
                (menu) => ListTile(
                  onTap: menu.$2,
                  title: Text(menu.$1),
                ),
              )
              .toList(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            if (_key.currentState!.isDrawerOpen) {
              _key.currentState!.closeDrawer();
            } else {
              _key.currentState!.openDrawer();
            }
          },
          icon: const Icon(Icons.menu),
        ),
        centerTitle: false,
        title: InkWell(
          onTap: () => Routes.navKey.currentState?.pushNamed(Routes.home),
          child: Text(
            'Anthony Aniobi',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: child,
    );
  }
}

InkWell _headerLink(String title, void Function() onTap) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(1.r),
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 2.r,
        vertical: 1.5.r,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 12.5.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}

List<(String, void Function())> _menu = [
  ('Home', () => Routes.push(Routes.home)),
  ('Publications', () => Routes.push(Routes.publication)),
  ('Projects', () => Routes.push(Routes.projects)),
  // ('Contact', Routes.contact),
  ('Cv', () => AppUtils.openUrl(AppConstants.academicCv)),
];
