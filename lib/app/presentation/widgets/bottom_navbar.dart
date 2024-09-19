part of '../app.dart';

class _BottomNavigationBar extends StatelessWidget {
  const _BottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void onPressed(MainTabView tab) {
      context.read<MainTabCubit>().update(tab);
    }

    return BlocBuilder<MainTabCubit, MainTabView>(
      builder: (context, state) {
        return BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          padding: const EdgeInsets.all(0),
          child: Container(
            decoration: const BoxDecoration(
              color: cColorGrey,
            ),
            child: Row(
              children: [
                Expanded(
                  child: _BottomNavbarItem(
                    icon: Icons.home_outlined,
                    activeIcon: Icons.home,
                    onPressed: () {
                      onPressed(const MainTabView.home());
                    },
                    isActive: state == const MainTabView.home(),
                  ),
                ),
                Expanded(
                  child: _BottomNavbarItem(
                    icon: Icons.account_circle_outlined,
                    activeIcon: Icons.account_circle,
                    onPressed: () => onPressed(const MainTabView.profile()),
                    isActive: state == const MainTabView.profile(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BottomNavbarItem extends StatelessWidget {
  final IconData activeIcon;
  final IconData icon;
  final Function() onPressed;
  final bool isActive;
  const _BottomNavbarItem({
    required this.activeIcon,
    required this.icon,
    required this.onPressed,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isActive ? activeIcon : icon,
            color: isActive ? Colors.blue : themeData.colorScheme.onBackground,
          ),
          isActive
              ? Container(
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(2.5))),
                  height: 5,
                  width: 5,
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
