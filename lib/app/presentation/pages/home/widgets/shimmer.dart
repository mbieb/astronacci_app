part of '../home_page.dart';

class _Shimmer extends StatelessWidget {
  const _Shimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 10,
          padding: padding(all: 4),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.4,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: ((context, index) {
            return Padding(
              padding: padding(all: 4),
              child: Container(
                decoration: const BoxDecoration(
                  color: cColorRed40,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
