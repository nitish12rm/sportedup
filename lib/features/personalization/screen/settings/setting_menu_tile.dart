import 'package:flutter/material.dart';
import 'package:sportedup/utils/constants/colors.dart';
class TSettingMenuTile extends StatelessWidget {
  const TSettingMenuTile({super.key, required this.title, required this.subtitle, required this.icon, this.trailing,  this.onTap});
 final String title,subtitle;
 final IconData icon;
 final Widget? trailing;
 final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,color: TColors.primary,size: 28,),
      title: Text(title,style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subtitle,style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
