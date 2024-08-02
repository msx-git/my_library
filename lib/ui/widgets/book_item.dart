import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/file_model.dart';
import 'book_details.dart';

class BookItem extends StatelessWidget {
  const BookItem({super.key, required this.book});

  final FileModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => BookDetails(
            book: book,
            isLoading: book.isLoading,
            isDownloaded: book.isDownloaded,
          ),
        ),
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.network(
              book.coverUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Text(book.title)),
                  Text("${book.rating}"),
                ],
              ),
            ),
            Text(book.author),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${book.price}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Icon(Icons.arrow_circle_right_outlined)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
