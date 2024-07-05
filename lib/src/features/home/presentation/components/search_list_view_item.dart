import 'package:flutter/material.dart';

import '../../data/models/news.dart';

class SearchListViewItem extends StatelessWidget {
  final News? data;
  const SearchListViewItem({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.06), // Shadow color
              spreadRadius: 10, // How much the shadow should spread
              blurRadius: 15, // How soft the shadow should be
              offset: const Offset(0, 3), // Changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            Row(
              children: [
                Text('Author : '),
                Expanded(
                  child: Text(
                    data?.author ?? 'No author',
                    maxLines: null, // Allow unlimited lines
                    // maxLines: 10,  // Alternatively, limit to 10 lines
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Title: '),
                Expanded(
                  child: Text(
                    data?.title ?? 'No title',
                    maxLines: null, // Allow unlimited lines
                    // maxLines: 10,  // Alternatively, limit to 10 lines
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
