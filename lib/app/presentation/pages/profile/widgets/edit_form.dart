part of '../edit_profile_page.dart';

class _EditForm extends StatelessWidget {
  final AuthState state;
  const _EditForm(this.state);

  @override
  Widget build(BuildContext context) {
    var i10n = I10n.of(context);
    ThemeData themeData = Theme.of(context);

    final bloc = context.read<AuthBloc>();
    return Padding(
      padding: padding(all: Sizes.p24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryReadOnlyTextField(
              icon: Icon(
                Icons.email_outlined,
                color: cColorGrey4,
              ),
              value: state.user?.email ?? ''),
          PrimaryTextField(
            onChanged: (val) => bloc.add(AuthEvent.fullNameChanged(val)),
            controller: bloc.fullNameController,
            keyboardType: TextInputType.text,
            hintText: i10n.fullName,
            textInputAction: TextInputAction.next,
            prefixIcon: const Icon(
              Icons.account_circle_outlined,
              size: 22,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter,
            ],
          ),
          PrimaryDropdownField(
            hintText: i10n.gender,
            icon: const Icon(
              Icons.male,
              size: 22,
            ),
            value: state.genderFormValue,
            items: CommonUtils().getGendeRList(),
            onChanged: (val) => bloc.add(AuthEvent.genderChanged(val!)),
          ),
          PrimaryCustomizedOnTapField(
            onPressed: () async {
              DateTime? date = await showDatePicker(
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        onSurface: Colors.black,
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                      ),
                    ),
                    child: child!,
                  );
                },
                context: context,
                initialDate: state.birthDateFieldValue ?? DateTime(1990, 1),
                firstDate: DateTime(1900, 1),
                lastDate: DateTime.now(),
              );
              if (date is DateTime) {
                bloc.add(AuthEvent.birthDateChanged(date));
              }
            },
            hintText: i10n.birthDate,
            prefixIcon: Icon(
              Icons.calendar_month,
              size: 22,
              color: themeData.colorScheme.onBackground.withOpacity(0.7),
            ),
            value: state.birthDateFieldValueToString,
          ),
          PrimaryDropdownField(
            hintText: i10n.province,
            icon: const Icon(
              Icons.account_balance_outlined,
              size: 22,
            ),
            value: state.provinceFormValue,
            items: state.provinceList,
            onChanged: (val) => bloc.add(AuthEvent.provinceChanged(val!)),
          ),
          PhotoField(
            imgUrl: state.imageUrlFormValue,
            isFromNetwork: state.isPhotoFromNetwork,
            onTapCamera: () {
              bloc.add(const AuthEvent.takePicture(ImageSource.camera));
            },
            onTapGallery: () {
              bloc.add(const AuthEvent.takePicture(ImageSource.gallery));
            },
          ),
          gapH16,
          PrimaryButton(
            onPressed: state.enableButton
                ? () {
                    bloc.add(const AuthEvent.updateProfile());
                  }
                : null,
            text: i10n.submit,
          ),
          gapH32,
        ],
      ),
    );
  }
}
