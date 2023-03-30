import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/data_service.dart';

import 'package:flutter_cubit/posts_json_api.dart';


class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataServies();

  PostsCubit() : super([]);

  void getPosts() async => emit(await _dataService.getPosts());
}