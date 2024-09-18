part of '../sign_in_page.dart';

class _Form extends StatelessWidget {
  final SignInState state;
  const _Form(this.state);

  @override
  Widget build(BuildContext context) {
    var i10n = I10n.of(context);

    final bloc = context.read<SignInBloc>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryTextField(
          onChanged: (val) => bloc.add(SignInEvent.emailChanged(val)),
          controller: bloc.emailController,
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
          onChanged: (val) => bloc.add(SignInEvent.passwordChanged(val)),
          error: state.passwordFieldErrorToString,
          hintText: i10n.password,
          textInputAction: TextInputAction.go,
          onSubmitted: (_) {
            if (state.enableSignInButton) {
              context.read<SignInBloc>().add(const SignInEvent.submit());
            }
          },
        ),
        PrimaryButton(
          onPressed: state.enableSignInButton
              ? () {
                  bloc.add(const SignInEvent.submit());
                }
              : null,
          text: i10n.signIn,
        ),
        gapH16,
        Align(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              context.push(AppRouter.register);
            },
            child: Text(
              i10n.labelRegister,
              style: cTextMed.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
