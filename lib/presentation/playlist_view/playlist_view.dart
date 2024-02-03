import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:flutter_spotify_ui/presentation/playlist_view/components/playlist_header.dart';
import 'package:flutter_spotify_ui/presentation/playlist_view/components/track_list.dart';
import 'package:flutter_spotify_ui/widgets/custom_text.dart';

class PlaylistView extends StatefulWidget {
  final Playlist playlist;

  PlaylistView({required this.playlist});

  @override
  State<PlaylistView> createState() => _PlaylistViewState();
}

class _PlaylistViewState extends State<PlaylistView> {
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
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 140,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                customBorder: CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.chevron_left,
                    size: 28,
                  ),
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                customBorder: CircleBorder(),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.chevron_right,
                    size: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: CustomText(
              text: 'Abid Ullah',
            ),
          ),
          SizedBox(width: 8),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 30,
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffAF1018),
              Colors.black,
            ],
            stops: [0, 0.3],
          ),
        ),
        child: Scrollbar(
          controller: _scrollController,
          trackVisibility: true,
          child: ListView(
            controller: _scrollController,
            children: [
              PlaylistHeader(playlist: widget.playlist),

              ///this is the list of songs
              TrackList(tracks: widget.playlist.songs),
            ],
          ),
        ),
      ),
    );
  }
}
