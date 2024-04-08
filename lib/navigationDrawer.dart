import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "NavDrawer",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        backgroundColor: const Color(0xff1D1E22),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildHeader(),
            _buildItem(
                icon: Icons.home_rounded,
                title: 'Home',
                onTap: () => Navigator.pop(context)),
            _buildItem(
                icon: Icons.notifications_rounded,
                title: 'Notifications',
                onTap: () => Navigator.pushNamed(context, 'Notifications')),
            _buildItem(
                icon: Icons.person,
                title: 'Profile',
                onTap: () => Navigator.pushNamed(context, 'Profile')),
            _buildItem(
                icon: Icons.settings,
                title: 'Settings',
                onTap: () => Navigator.pushNamed(context, 'Setting'))
          ],
        ),
      ),
    );
  }

  _buildHeader() {
    return const DrawerHeader(
      decoration: BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage('assets/images/demo.png'), fit: BoxFit.fill)
          color: Color(0xff1D1E22)),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/demo.png'),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'John Doe',
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ],
      ),
    );
  }

  _buildItem(
      {required IconData icon,
      required String title,
      required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
      minLeadingWidth: 5,
    );
  }
}
