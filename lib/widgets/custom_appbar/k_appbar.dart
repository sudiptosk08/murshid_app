import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:murshid_app/utils/colors/app_colors.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? backgroundColor;
  final bool? centerTitle;
  final TextStyle? titleTextStyle;
  final double topBarHeight;

  const KAppBar({
    super.key,
    this.leading,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.backgroundColor,
    this.centerTitle,
    this.titleTextStyle,
    this.topBarHeight = 65,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: topBarHeight,
      title: title,
      centerTitle: centerTitle,
      actions: actions,
      leadingWidth: 0,
      bottom: bottom,
      elevation: elevation,
      titleTextStyle: titleTextStyle,
      backgroundColor: KColors.background,
      flexibleSpace: flexibleSpace,
      automaticallyImplyLeading: false,
      leading: leading ?? _buildLeadingWidget(context),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(topBarHeight);

  Widget? _buildLeadingWidget(BuildContext context) {
    final ScaffoldState scaffold = Scaffold.of(context);
    final ModalRoute<Object?>? parentRoute = ModalRoute.of(context);

    final bool canPop = ModalRoute.of(context)?.canPop ?? false;
    final bool hasDrawer = scaffold.hasDrawer;
    final bool useCloseButton =
        parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    if (hasDrawer) {
      return IconButton(
        icon: const Icon(Icons.menu_rounded),
        onPressed: Scaffold.of(context).openDrawer,
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    } else {
      if (canPop) {
        if (useCloseButton) {
          return IconButton(
              color: Theme.of(context).colorScheme.onBackground,
              icon: const Icon(Icons.close_rounded),
              onPressed: () => Navigator.of(context).maybePop());
        } else {
          return Container(
            margin: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              border: Border.all(
                color: KColors.white,
              ),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              iconSize: 18.sp,
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: KColors.white,
              ),
              onPressed: Navigator.of(context).pop,
            ),
          );
        }
      }
    }
    return null;
  }
}
