import 'package:flutter/material.dart';

import '../../core/app_exports.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  const CustomAppbar(
      {super.key,
      this.height,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      surfaceTintColor: appTheme.bgColor,
      toolbarHeight: height ?? 27.v,
      automaticallyImplyLeading: false,
      backgroundColor: appTheme.bgColor,
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? 27.v,
      );
}
