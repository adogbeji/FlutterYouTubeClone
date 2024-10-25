import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_clone/controllers/user_data_service.dart';
import 'package:youtube_clone/models/user_model.dart';

final currentUserProvider = FutureProvider<UserModel>((ref) async {
  final UserModel user = await ref.watch(userDataServiceProvider).fetchCurrentUserData();
  return user;
});