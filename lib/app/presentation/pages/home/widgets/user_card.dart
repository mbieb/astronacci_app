part of '../home_page.dart';

class _UserCard extends StatelessWidget {
  final User data;
  const _UserCard({
    required this.data,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(64)),
            child: Image.network(
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const CircularProgressIndicator();
              },
              errorBuilder: (context, error, stackTrace) =>
                  const CircleAvatar(),
              data.imgUrl ?? '',
              fit: BoxFit.fill,
              height: 64,
              width: 64,
            ),
          ),
          gapW16,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name ?? '-',
                  style: cTextBoldLg,
                  maxLines: 1,
                ),
                Text(
                  data.gender ?? '-',
                  style: cTextRegSM,
                ),
                Text(
                  data.province ?? '-',
                  style: cTextMedSM,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
