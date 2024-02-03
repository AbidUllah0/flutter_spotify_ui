import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/models/current_track_model.dart';
import 'package:flutter_spotify_ui/utils/app_styles.dart';
import 'package:flutter_spotify_ui/widgets/custom_text.dart';
import 'package:provider/provider.dart';

import '../../../data/data.dart';

class TrackList extends StatelessWidget {
  final List<Song> tracks;

  TrackList({required this.tracks});

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<CurrentTrackModel>(context, listen: false);
    final provider = context.watch<CurrentTrackModel>();
    return DataTable(
      dataRowHeight: 54.0,
      headingTextStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      showCheckboxColumn: false,
      columns: [
        DataColumn(label: CustomText(text: 'TITLE')),
        DataColumn(label: CustomText(text: 'ARTIST')),
        DataColumn(label: CustomText(text: 'ALBUM')),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: tracks.map((e) {
        final selected = provider.selected?.id == e.id;
        final textStyle = TextStyle(
          color: selected ? Colors.green : Colors.white,
        );
        return DataRow(
          cells: [
            DataCell(
              CustomText(
                text: e.title,
                style: textStyle,
              ),
            ),
            DataCell(
              CustomText(
                text: e.artist,
                style: textStyle,
              ),
            ),
            DataCell(
              CustomText(
                text: e.album,
                style: textStyle,
              ),
            ),
            DataCell(
              CustomText(
                text: e.duration,
                style: textStyle,
              ),
            ),
          ],
          selected: selected,
          onSelectChanged: (change) {
            provider.selectedSong(e);
          },
        );
      }).toList(),
    );
  }
}
