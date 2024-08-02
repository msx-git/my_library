import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/file/file_bloc.dart';
import '../../data/models/file_model.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({
    super.key,
    required this.book,
    required this.isLoading,
    required this.isDownloaded,
  });

  final FileModel book;
  final bool isLoading;
  final bool isDownloaded;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Column(
        children: [
          /// BODY
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Image.network(
                  book.coverUrl,
                  width: double.infinity,
                  height: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Author: ${book.author}"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Rating: ${book.rating}"),
                ),
                const Text(
                  "Synopsis",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Text(
                  book.synopsis,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          /// DOWNLOAD BUTTON
          isLoading
              ? const CircularProgressIndicator()
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {
                          if (isDownloaded) {
                            context
                                .read<FileBloc>()
                                .add(OpenFile(path: book.savePath));
                          } else {
                            context
                                .read<FileBloc>()
                                .add(DownloadFile(file: book));
                          }
                        },
                        child: Text(isDownloaded ? "Read" : "Download")),
                  ),
                )
        ],
      ),
    );
  }
}
