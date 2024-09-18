part of '../register_page.dart';

class _Form extends StatelessWidget {
  final RegisterState state;
  const _Form(this.state);

  @override
  Widget build(BuildContext context) {
    var i10n = I10n.of(context);
    ThemeData themeData = Theme.of(context);

    final bloc = context.read<RegisterBloc>();
    return Padding(
      padding: padding(horizontal: Sizes.p24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            i10n.register,
            style: cTextBoldLg,
          ),
          gapH12,
          PrimaryTextField(
            onChanged: (val) => bloc.add(RegisterEvent.fullNameChanged(val)),
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
          PrimaryTextField(
            onChanged: (val) => bloc.add(RegisterEvent.emailChanged(val)),
            error: state.emailFieldErrorToString,
            keyboardType: TextInputType.emailAddress,
            hintText: i10n.email,
            textInputAction: TextInputAction.next,
            prefixIcon: const Icon(
              Icons.email_outlined,
              size: 22,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.singleLineFormatter,
              FilteringTextInputFormatter.deny(' '),
            ],
          ),
          PrimaryPasswordField(
            onChanged: (val) => bloc.add(RegisterEvent.passwordChanged(val)),
            error: state.passwordFieldErrorToString,
            hintText: i10n.password,
            textInputAction: TextInputAction.next,
          ),
          PrimaryDropdownField(
            hintText: i10n.gender,
            icon: const Icon(
              Icons.male,
              size: 22,
            ),
            value: state.genderFormValue,
            items: CommonUtils().getGendeRList(),
            onChanged: (val) => bloc.add(RegisterEvent.genderChanged(val!)),
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
                bloc.add(RegisterEvent.birthDateChanged(date));
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
            onChanged: (val) => bloc.add(RegisterEvent.provinceChanged(val!)),
          ),
          PhotoField(
            imgUrl: state.imageUrlFormValue,
            onTapCamera: () {
              bloc.add(const RegisterEvent.takePicture(ImageSource.camera));
            },
            onTapGallery: () {
              bloc.add(const RegisterEvent.takePicture(ImageSource.gallery));
            },
          ),
          gapH16,
          PrimaryButton(
            onPressed: state.enableSignInButton
                ? () {
                    bloc.add(const RegisterEvent.submit());
                  }
                : null,
            text: i10n.register,
          ),
          gapH16,
          Align(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                context.push(AppRouter.signIn);
              },
              child: Text(
                i10n.registerBack,
                style: cTextReg.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          gapH32,
        ],
      ),
    );
  }
}
