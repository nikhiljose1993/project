import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/screens/bottom_navbar.dart';
import 'package:project/screens/widgets/third_party_auth.dart';
import 'package:project/utils/ui_sizes.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLogin = true, _isChecked = false;
  bool _passWordHidden = true, _confirmPassWordHidden = true;

  void login() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const BottomNavBar();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const svgTheme = SvgTheme(
      currentColor: Color.fromARGB(255, 153, 133, 88),
    );

    final hintStyle = theme.textTheme.bodySmall!.copyWith(
      color: const Color.fromARGB(255, 109, 109, 109),
    );

    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 160, 140, 98),
        width: 2,
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/${_isLogin ? 'login' : 'sign_up'}.png',
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsets.only(top: UiSizes.height_20),
                child: Text(
                  _isLogin ? 'Login' : 'Sign Up',
                  style: theme.textTheme.headlineMedium!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onBackground,
                  ),
                ),
              ),
              SizedBox(height: UiSizes.height_20),
              SizedBox(
                width: 318,
                child: Form(
                  child: Column(
                    children: [
                      if (_isLogin)
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Enter your Email and Password',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  color: const Color.fromARGB(255, 104, 98, 98),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (!_isLogin)
                        Padding(
                          padding: EdgeInsets.only(bottom: UiSizes.height_10),
                          child: TextFormField(
                            textCapitalization: TextCapitalization.words,
                            autocorrect: false,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10),
                              hintText: 'Full Name',
                              hintStyle: hintStyle,
                              prefixIcon: Container(
                                margin: const EdgeInsets.only(
                                    left: 20, right: 14, top: 8, bottom: 8),
                                child: SvgPicture.asset(
                                    'assets/svg/full_name.svg',
                                    theme: svgTheme),
                              ),
                              border: inputBorder,
                              enabledBorder: inputBorder,
                              focusedBorder: inputBorder,
                            ),
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: UiSizes.height_10),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            hintText: 'Email ID',
                            hintStyle: hintStyle,
                            prefixIcon: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 14, top: 8, bottom: 8),
                              child: SvgPicture.asset('assets/svg/mail_id.svg',
                                  theme: svgTheme),
                            ),
                            border: inputBorder,
                            enabledBorder: inputBorder,
                            focusedBorder: inputBorder,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: UiSizes.height_10),
                        child: TextFormField(
                          autocorrect: false,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                          obscureText: _passWordHidden,
                          decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            hintText: 'Password',
                            hintStyle: hintStyle,
                            prefixIcon: Container(
                              margin: const EdgeInsets.only(
                                  left: 20, right: 14, top: 8, bottom: 8),
                              child: SvgPicture.asset('assets/svg/password.svg',
                                  theme: svgTheme),
                            ),
                            suffixIcon: Container(
                              margin: const EdgeInsets.only(
                                  left: 14, right: 20, top: 8, bottom: 8),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _passWordHidden = !_passWordHidden;
                                  });
                                },
                                child: SvgPicture.asset(
                                    'assets/svg/${_passWordHidden ? 'visibility_off' : 'visibility'}.svg',
                                    theme: svgTheme),
                              ),
                            ),
                            border: inputBorder,
                            enabledBorder: inputBorder,
                            focusedBorder: inputBorder,
                          ),
                        ),
                      ),
                      if (!_isLogin)
                        Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: UiSizes.height_10),
                          child: TextFormField(
                            autocorrect: false,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                            obscureText: _confirmPassWordHidden,
                            decoration: InputDecoration(
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 10),
                              hintText: 'Confirm Password',
                              hintStyle: hintStyle,
                              prefixIcon: Container(
                                margin: const EdgeInsets.only(
                                    left: 20, right: 14, top: 8, bottom: 8),
                                child: SvgPicture.asset(
                                    'assets/svg/password.svg',
                                    theme: svgTheme),
                              ),
                              suffixIcon: Container(
                                margin: const EdgeInsets.only(
                                    left: 14, right: 20, top: 8, bottom: 8),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _confirmPassWordHidden =
                                          !_confirmPassWordHidden;
                                    });
                                  },
                                  child: SvgPicture.asset(
                                      'assets/svg/${_confirmPassWordHidden ? 'visibility_off' : 'visibility'}.svg',
                                      theme: svgTheme),
                                ),
                              ),
                              border: inputBorder,
                              enabledBorder: inputBorder,
                              focusedBorder: inputBorder,
                            ),
                          ),
                        ),
                      if (_isLogin)
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'Forgot Password?',
                                style: theme.textTheme.bodySmall!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color.fromARGB(255, 113, 109, 109),
                                ),
                              )
                            ],
                          ),
                        ),
                      if (!_isLogin)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30,
                              child: Checkbox(
                                activeColor:
                                    const Color.fromARGB(255, 19, 117, 232),
                                side: const BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 19, 117, 232)),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                value: _isChecked,
                                onChanged: (newValue) {
                                  setState(() {
                                    _isChecked = newValue!;
                                  });
                                },
                              ),
                            ),
                            Text(
                              'I accepted the ',
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                            Text(
                              'Privacy policy',
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 27, 120, 230),
                              ),
                            ),
                            Text(
                              ' and ',
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                            Text(
                              'Terms',
                              style: theme.textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 27, 120, 230),
                              ),
                            ),
                          ],
                        ),
                      SizedBox(
                        height:
                            _isLogin ? UiSizes.height_24_6 : UiSizes.height_26,
                      ),
                      ElevatedButton(
                        onPressed: login,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary,
                            foregroundColor: theme.colorScheme.onPrimary,
                            fixedSize: const Size(185, 48)),
                        child: Text(
                          _isLogin ? 'LOG IN' : 'Sign Up',
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: theme.colorScheme.onPrimary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (_isLogin) const ThirdPartyAuthWidget(),
              Padding(
                padding: EdgeInsets.only(top: UiSizes.height_20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _isLogin
                          ? 'Don’t have an account? '
                          : 'Already have an account? ',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.onSurface,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isLogin = !_isLogin;
                        });
                      },
                      child: Text(
                        _isLogin ? 'Sign Up' : 'Log in',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 74, 67, 183),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
