
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/text_styles.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.drawerGradient,
        ),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/41.jpg",
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.prematal.com/wp-content/uploads/2021/08/Ayurveda-Panchakarma-treatments.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: AppColors.accentOrange),
              title: Text("Home", style: AppTextStyles.drawerItem),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.spa, color: AppColors.accentOrange),
              title: Text("Book a therapy", style: AppTextStyles.drawerItem),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.location_on, color: AppColors.accentOrange),
              title: Text("Find a center", style: AppTextStyles.drawerItem),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings, color: AppColors.accentOrange),
              title: Text("Settings", style: AppTextStyles.drawerItem),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: AppColors.accentOrange),
              title: Text("Logout", style: AppTextStyles.drawerItem),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
