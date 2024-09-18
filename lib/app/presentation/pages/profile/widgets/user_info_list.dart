part of '../profile_page.dart';

class _UserInfoList extends StatelessWidget {
  final Icon icon;
  final String text;

  const _UserInfoList({
    required this.icon,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        gapW8,
        Expanded(child: Text(text)),
      ],
    );
  }
}
