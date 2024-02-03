import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/presentation/playlist_view/components/playlist_buttons.dart';
import 'package:flutter_spotify_ui/utils/app_styles.dart';
import 'package:flutter_spotify_ui/widgets/custom_text.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;

  PlaylistHeader({required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              playlist.imageURL,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'PLAYLIST',
                    style: AppStyles.bodyText1.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 12),
                  CustomText(
                    text: playlist.name,
                    style: AppStyles.headline2,
                  ),
                  SizedBox(height: 16),
                  CustomText(
                    text: playlist.description,
                    style: AppStyles.headline2,
                  ),
                  SizedBox(height: 16),
                  CustomText(
                    text:
                        'Created By ${playlist.creator} . ${playlist.songs.length} songs. ${playlist.duration}',
                    style: AppStyles.headline2,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        PlaylistButtons(followers: playlist.followers),
      ],
    );
  }
}
