import 'package:client/data/domain/repository/auth/i_auth_repo.dart';
import 'package:client/presentation/router/app_router.dart';
import 'package:client/shared/core/blocs/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class BrowseApp extends StatelessWidget {
  const BrowseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final IAuthRepository authRepository = GetIt.I.get<IAuthRepository>();

    return MultiRepositoryProvider(
      providers: <RepositoryProvider<dynamic>>[
        RepositoryProvider<IAuthRepository>.value(value: authRepository),
      ],
      child: MultiBlocProvider(
        providers: <BlocProvider<BlocBase<Object>>>[
          BlocProvider<AuthCubit>(
            create: (BuildContext context) =>
                AuthCubit(repository: authRepository),
          ),
        ],
        child: BrowseAppView(),
      ),
    );
  }
}

class BrowseAppView extends StatelessWidget {
  BrowseAppView({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
