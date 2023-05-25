import 'package:auto_route/auto_route.dart';
import 'package:client/presentation/produce/produce_page.dart';
import 'package:client/presentation/router/app_router.dart';
import 'package:client/shared/core/blocs/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AuthView extends StatefulWidget {
  AuthView({Key? key}) : super(key: key);

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  final GlobalKey<FormBuilderState> _formState = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .4 / 2,
            ),
            child: Card(
              elevation: 12.0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
                child: FormBuilder(
                  key: _formState,
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        name: 'login',
                        validator: FormBuilderValidators.required(),
                        decoration: const InputDecoration(
                          labelText: 'Login',
                        ),
                      ),
                      FormBuilderTextField(
                        name: 'password',
                        validator: FormBuilderValidators.required(),
                        decoration: const InputDecoration(
                          labelText: 'Password',
                        ),
                        obscureText: true,
                      ),
                      FormBuilderTextField(
                        name: 'confirmPassword',
                        validator: FormBuilderValidators.required(),
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          switch (state.status) {
                            case AuthStatus.error:
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Error'),
                                ),
                              );
                              break;
                            case AuthStatus.loaded:
                              ScaffoldMessenger.of(context).clearSnackBars();
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Authenticated'),
                                ),
                              );
                              if (state.token != null) {
                                context.router
                                    .replaceAll([const ProduceRoute()]);
                              }
                              break;
                          }
                        },
                        builder: (context, state) {
                          switch (state.status) {
                            case AuthStatus.error:
                            case AuthStatus.initial:
                            case AuthStatus.loaded:
                              return Container(
                                constraints: const BoxConstraints(
                                  minHeight: 40,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _formState.currentState!.save();
                                      if (_formState.currentState!.validate()) {
                                        var f = _formState.currentState!.value;
                                        context
                                            .read<AuthCubit>()
                                            .login(f['login'], f['password']);
                                        _formState.currentState!.reset();
                                      }
                                    },
                                    child: Text('Login'),
                                  ),
                                ),
                              );
                            case AuthStatus.loading:
                              return Container(
                                constraints: const BoxConstraints(
                                  minHeight: 40,
                                ),
                                child: const SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: null,
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              );
                            default:
                              return Container(
                                constraints: const BoxConstraints(
                                  minHeight: 40,
                                ),
                                child: const SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: null,
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                              );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
