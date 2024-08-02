import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/file/file_bloc.dart';
import '../widgets/book_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Library'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_sharp),
          )
        ],
      ),
      body: BlocBuilder<FileBloc, FileState>(
        bloc: context.read<FileBloc>()..add(GetFiles()),
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.errorMessage != null) {
            return Center(
              child: Text(state.errorMessage!),
            );
          }

          if (state.files == null || state.files!.isEmpty) {
            return const Center(
              child: Text("No books"),
            );
          }

          final files = state.files!;
          final filteredFiles = files
              .where((file) =>
                  file.title.toLowerCase().contains(_searchQuery.toLowerCase()))
              .toList();
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),

                /// SEARCHBAR
                SearchBar(
                  controller: _searchController,
                  leading: const Icon(CupertinoIcons.search),
                  hintText: "Search for books",
                ),
                const SizedBox(height: 15),
                const Text("Best Seller Books"),
                const SizedBox(height: 15),

                /// BOOKS
                Expanded(
                  child: GridView.builder(
                    itemCount: filteredFiles.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 170 / 280,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (context, index) {
                      final book = filteredFiles[index];
                      return BookItem(book: book);
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
