import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smedipfess/constants/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool showProfilePhoto;
  final ImageProvider profilePhoto;
  final VoidCallback onProfilePhotoPressed;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.showProfilePhoto,
    required this.profilePhoto,
    required this.onProfilePhotoPressed,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: AppColorTheme.kPrimary,
      title: title,
      elevation: 0,
      actions: <Widget>[
        Visibility(
          child: Container(
            margin: const EdgeInsets.only(right: 16),
            alignment: Alignment.center,
            child: IconButton(
              onPressed: onProfilePhotoPressed,
              icon: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  image: DecorationImage(
                    image: profilePhoto,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
