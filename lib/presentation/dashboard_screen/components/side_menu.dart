import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/utils/app_colors.dart';
import 'package:flutter_spotify_ui/utils/app_images.dart';

import 'library_playlist.dart';
import 'list_tile_widget.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: AppColors.primaryColor,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  AppImages.logo,
                  height: 55,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
          ListTileWidget(
            text: 'Home',
            icon: Icons.home,
            onPressed: () {},
          ),
          ListTileWidget(
            text: 'Search',
            icon: Icons.search,
            onPressed: () {},
          ),
          ListTileWidget(
            text: 'Radio',
            icon: Icons.audiotrack,
            onPressed: () {},
          ),
          SizedBox(height: 12),
          LibraryPlaylist(),
        ],
      ),
    );
  }
}
