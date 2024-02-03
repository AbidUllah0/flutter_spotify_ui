import 'package:flutter/material.dart';

import '../../data/data.dart';
import '../playlist_view/playlist_view.dart';
import 'components/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ///this is the side dashboard menu (left side)
                SideMenu(),

                ///this is playlist side(right side)
                Expanded(
                  child: PlaylistView(playlist: lofihiphopPlaylist),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
