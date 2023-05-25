import 'package:auto_route/auto_route.dart';
import 'package:client/presentation/router/app_router.dart';
import 'package:client/shared/core/blocs/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<Widget> buildAppBar(context,
    {bool showPages = true}) {
  return [
    ...(showPages
        ? [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state.token != null) {
                  return Row(
                    children: [
                      TextButton(
                        child: const Text(
                          'Produce',
                        ),
                        onPressed: () => context.router.replaceAll(
                            [const ProduceRoute()]),
                      ),
                      TextButton(
                        child: const Text(
                          'Shipments',
                        ),
                        onPressed: () => context.router.replaceAll(
                            [const ShipmentRoute()]),
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
                // else {
                //   return IconButton(
                //     icon: const Icon(Icons.login),
                //     onPressed: () => context.router.replaceAll([const AuthRoute()]),
                //   );
                // }
              },
            )
          ]
        : []),
    BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state.token != null) {
          return IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthCubit>().logout();
              context.router.replaceAll([const AuthRoute()]);
            },
          );
        }
        return const SizedBox();
      },
    ),
  ];
}
