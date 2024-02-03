import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/utils/app_styles.dart';
import 'package:flutter_spotify_ui/widgets/custom_text.dart';

class PlaylistButtons extends StatelessWidget {
  final String followers;

  PlaylistButtons({required this.followers});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Colors.green,
          ),
          onPressed: () {},
          child: CustomText(text: 'Play'),
        ),
        SizedBox(width: 8),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            size: 30,
          ),
        ),
        Spacer(),
        CustomText(
          text: 'FOLLOWERS\n$followers',
          textAlign: TextAlign.right,
          style: AppStyles.headline2,
        ),
      ],
    );
  }
}
