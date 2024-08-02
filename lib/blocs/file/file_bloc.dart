import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/models/file_model.dart';
import '../../data/repositories/file_repository.dart';
import '../../services/permission_service.dart';

part 'file_event.dart';
part 'file_state.dart';

class FileBloc extends Bloc<FileEvent, FileState> {
  final FileRepository fileRepository;

  FileBloc({required this.fileRepository}) : super(FileState()) {
    on<GetFiles>(_onGetFiles);
    on<DownloadFile>(_onDownload);
    on<OpenFile>(_onOpen);
    on<UploadFile>(_onUpload);
  }

  /// GET FILES
  void _onGetFiles(GetFiles event, Emitter<FileState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      for (var file in fileRepository.books) {
        final fullPath = await _getSavePath(file);
        if (_checkFileExists(fullPath)) {
          file = file
            ..savePath = fullPath
            ..isDownloaded = true;
        }
      }
      emit(state.copyWith(files: fileRepository.books, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  /// DOWNLOAD FILe
  void _onDownload(DownloadFile event, Emitter<FileState> emit) async {
    if (await PermissionService.requestStoragePermission()) {
      final index = state.files!.indexWhere((book) {
        return event.file.id == book.id;
      });

      try {
        state.files![index].isLoading = true;
        emit(state.copyWith(files: state.files));

        final dio = Dio();
        final fullPath = await _getSavePath(event.file);

        if (_checkFileExists(fullPath)) {
          add(OpenFile(path: fullPath));
          state.files![index]
            ..isLoading = false
            ..savePath = fullPath
            ..isDownloaded = true;

          emit(state.copyWith(files: state.files));
        } else {
          await dio.download(
            event.file.url,
            fullPath,
            onReceiveProgress: (count, total) {
              state.files![index].progress = count / total;
              emit(state.copyWith(files: state.files));
            },
          );
          state.files![index]
            ..isLoading = false
            ..savePath = fullPath
            ..isDownloaded = true;
          emit(state.copyWith(files: state.files));
        }
      } on DioException catch (e) {
        debugPrint("DIO EXCEPTION");
        state.files![index].isLoading = false;
        emit(
          state.copyWith(files: state.files, errorMessage: e.response?.data),
        );
      } catch (e) {
        debugPrint("GENERAL EXCEPTION");
        state.files![index].isLoading = false;
        emit(
          state.copyWith(files: state.files, errorMessage: e.toString()),
        );
      }
    }
  }

  /// UPLOAD FILE
  void _onUpload(UploadFile event, Emitter<FileState> emit) async {}

  /// OPEN FILE
  void _onOpen(OpenFile event, Emitter<FileState> emit) async {
    await OpenFilex.open(event.path);
  }

  /// CHECK FOR FILE EXISTENCE
  bool _checkFileExists(String filePath) {
    final file = File(filePath);

    return file.existsSync();
  }

  /// GETS PATH OF SAVED DATA
  Future<String> _getSavePath(FileModel file) async {
    Directory? savePath = await getApplicationDocumentsDirectory();
    if (Platform.isAndroid) {
      savePath = Directory("/storage/emulated/0/download");
    }
    // iphone/application/documents

    final fileName = "${file.title}.pdf";
    final fullPath = "${savePath.path}/$fileName";

    return fullPath;
  }
}
