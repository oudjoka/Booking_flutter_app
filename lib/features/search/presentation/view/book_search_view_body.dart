import 'package:booking/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookSearchViewBody extends StatelessWidget {
  const BookSearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SafeArea(child: CustomSearchTextField()),
          SizedBox(height: 24),
          Text('Search Result', style: Styles.textStyle18),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBoder(),
          focusedBorder: buildOutlineInputBoder(),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Opacity(
              opacity: .8,
              child: Icon(FontAwesomeIcons.magnifyingGlass, size: 22),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBoder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,

      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text('data'),
          //NewestBooksListViewItem(),
        );
      },
    );
  }
}
