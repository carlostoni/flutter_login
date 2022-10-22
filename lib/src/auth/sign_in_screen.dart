import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ui_example/src/auth/sign_up_screen.dart';
import 'package:auth_buttons/auth_buttons.dart';
import 'components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.teal,
            Colors.lightGreen,
            Colors.greenAccent,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Nome app // App name
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(
                            fontSize: 70,
                          ),
                          children: [
                            const TextSpan(
                              text: 'Sign',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'in',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Subtitulo //Subtitle
                      SizedBox(
                        height: 40,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 25,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                          child: AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: [
                              FadeAnimatedText('Example 1'),
                              FadeAnimatedText('Example 2'),
                              FadeAnimatedText('Example 3'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Formulario inicio
                Material(
                  elevation: 20,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.white10,
                          Colors.white24,
                        ],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //Email
                        const CustomTextField(
                          icon: Icons.email,
                          label: 'E-mail',
                        ),

                        //Senha
                        const CustomTextField(
                          icon: Icons.lock,
                          label: 'Password',
                          isSecret: true,
                        ),
                        //Entrar
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 0.5, 1.0],
                              colors: [
                                Color.fromARGB(255, 157, 219, 115),
                                Color.fromARGB(255, 134, 190, 136),
                                Color.fromARGB(255, 109, 248, 197),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              minimumSize:
                                  MaterialStateProperty.all(Size(40, 40)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        //Esqueceu a senha
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot your password?',
                              style: TextStyle(
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                        ),
                        //Dividir a tela
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.blueGrey,
                                  thickness: 1,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Text('Or'),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Colors.blueGrey,
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Center(
                          child: AuthButtonGroup(
                            style: const AuthButtonStyle(
                              width: 50,
                              height: 50,
                              margin: EdgeInsets.only(bottom: 4.0),
                              elevation: 5.0,
                              splashColor: Colors.grey,
                            ),
                            buttons: [
                              GoogleAuthButton(
                                onPressed: () {},
                                style: AuthButtonStyle(
                                  buttonType: AuthButtonType.icon,
                                  borderRadius: 30,
                                ),
                              ),
                              FacebookAuthButton(
                                onPressed: () {},
                                style: AuthButtonStyle(
                                  buttonType: AuthButtonType.icon,
                                  borderRadius: 30,
                                ),
                              ),
                              MicrosoftAuthButton(
                                onPressed: () {},
                                style: AuthButtonStyle(
                                  buttonType: AuthButtonType.icon,
                                  borderRadius: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Botao para novo usuario
                        Container(
                          width: double.infinity,
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.0, 0.5, 1.0],
                              colors: [
                                Color.fromARGB(255, 157, 219, 115),
                                Color.fromARGB(255, 134, 190, 136),
                                Color.fromARGB(255, 109, 248, 197),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              minimumSize:
                                  MaterialStateProperty.all(Size(40, 40)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (c) {
                                  return SignUpScreen();
                                }),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
