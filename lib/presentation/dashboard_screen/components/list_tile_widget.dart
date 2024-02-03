import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import '../../../widgets/custom_text.dart';

class ListTileWidget extends StatelessWidget {
  String text;
  IconData icon;
  VoidCallback onPressed;

  ListTileWidget(
      {required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
      title: CustomText(
        text: text,
        style: AppStyles.bodyText1,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onPressed,
    );
  }
}
