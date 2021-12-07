import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/status.dart';
import 'package:news_app/shared/components/components.dart';

class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStatus>(
    listener: (context , state) {},
    builder: (context , state) {
      var list = NewsCubit.get(context).business;
      return ConditionalBuilder(
          condition: state is! NewsBusinessSuccessLoadingState,
      builder: (context) => ListView.separated(
        // scroll animation like ios
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context,index) => buildItems(list[index]),
          separatorBuilder: (context,index) => myDivider(),
          itemCount: 10),
      fallback: (context) => const Center(child: CircularProgressIndicator()));
    },
    );
  }
}
