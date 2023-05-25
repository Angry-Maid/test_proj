import 'package:auto_route/auto_route.dart';
import 'package:client/data/domain/repository/api/api_client.dart';
import 'package:client/presentation/produce/views/produce_view.dart';
import 'package:client/shared/core/blocs/produce/produce_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class ProducePage extends StatelessWidget {
  const ProducePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<ProduceCubit>(
        create: (context) => ProduceCubit(client: GetIt.I.get<ApiClient>())..getProduces(),
        child: ProduceView(),
      );
}
