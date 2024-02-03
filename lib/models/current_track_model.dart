import 'package:flutter/cupertino.dart';

import '../data/data.dart';

class CurrentTrackModel extends ChangeNotifier {
  Song? selected;

  void selectedSong(Song track) {
    selected = track;
    notifyListeners();
  }
}
