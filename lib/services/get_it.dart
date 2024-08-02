import 'package:get_it/get_it.dart';

import '../blocs/file/file_bloc.dart';
import '../data/repositories/file_repository.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton(FileRepository());

  getIt.registerSingleton(
    FileBloc(fileRepository: getIt.get<FileRepository>()),
  );
}
