import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/utils/app_styles.dart';
import 'package:flutter_spotify_ui/widgets/custom_text.dart';

class LibraryPlaylist extends StatefulWidget {
  const LibraryPlaylist({super.key});

  @override
  State<LibraryPlaylist> createState() => _LibraryPlaylistState();
}

class _LibraryPlaylistState extends State<LibraryPlaylist> {
  ScrollController? _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        thickness: 15,
        child: ListView(
          controller: _scrollController,
          padding: EdgeInsets.symmetric(vertical: 12),
          physics: ClampingScrollPhysics(),
          children: [
            ///your library col
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: CustomText(
                    text: 'YOUR LIBRARY',
                    style: AppStyles.headline2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ListView.builder(
                    itemCount: yourLibrary.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        dense: true,
                        title: CustomText(
                          text: yourLibrary[index],
                          style: AppStyles.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    })
              ],
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: CustomText(
                    text: 'PLAYLISTS',
                    style: AppStyles.headline2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ListView.builder(
                    itemCount: playlists.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        dense: true,
                        title: CustomText(
                          text: playlists[index],
                          style: AppStyles.bodyText2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
