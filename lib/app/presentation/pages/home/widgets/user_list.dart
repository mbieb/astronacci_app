part of '../home_page.dart';

class _UserList extends StatelessWidget {
  final AuthState state;
  const _UserList({
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    var userList = state.userList;

    RefreshController refreshController =
        RefreshController(initialRefresh: false);

    void onRefresh() async {
      bloc.add(const AuthEvent.getUserList());
      refreshController.refreshCompleted();
    }

    void onLoading() async {
      bloc.add(const AuthEvent.nextPage());
      refreshController.loadComplete();
    }

    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: !bloc.state.isLastPage,
      controller: refreshController,
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: userList.isEmpty
          ? const Center(child: Text('No Data'))
          : ListView.separated(
              padding: padding(bottom: 16),
              primary: false,
              shrinkWrap: true,
              itemCount: userList.length,
              itemBuilder: (context, index) => _UserCard(
                data: userList[index],
              ),
              separatorBuilder: (context, index) => gapH12,
            ),
    );
  }
}
