part of '../register_page.dart';

class PhotoField extends StatelessWidget {
  final String? imgUrl;
  final Function() onTapGallery;
  final Function() onTapCamera;
  final bool isFromNetwork;

  const PhotoField({
    this.imgUrl,
    required this.onTapCamera,
    required this.onTapGallery,
    this.isFromNetwork = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    I10n i10n = I10n.of(context);
    void showPicker(context) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext bc) {
            return SafeArea(
              child: Container(
                color: cColorGrey3,
                child: Wrap(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.photo_library),
                      title: Text(i10n.photoLib),
                      onTap: onTapGallery,
                    ),
                    ListTile(
                      leading: const Icon(Icons.photo_camera),
                      title: Text(i10n.photoCam),
                      onTap: onTapCamera,
                    ),
                  ],
                ),
              ),
            );
          });
    }

    if (imgUrl == null) {
      return GestureDetector(
        onTap: () async {
          showPicker(context);
        },
        child: Container(
          alignment: Alignment.center,
          padding: padding(all: Sizes.p12),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: cColorGrey4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              const Icon(Icons.photo),
              gapH12,
              Text(
                i10n.takePicture,
                style: cTextRegXS,
              ),
            ],
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: () async {
        showPicker(context);
      },
      child: Container(
        padding: padding(all: Sizes.p8),
        decoration: BoxDecoration(
            border: Border.all(color: cColorGrey3),
            borderRadius: BorderRadius.circular(8)),
        child: isFromNetwork
            ? CachedNetworkImage(imageUrl: imgUrl ?? '')
            : Image.file(
                File(imgUrl ?? ''),
                width: 175,
                height: 150,
              ),
      ),
    );
  }
}
