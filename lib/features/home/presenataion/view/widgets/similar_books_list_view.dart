import 'package:booking/features/home/presenataion/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomBookImage(
            imageUrl:
                'https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fplus.unsplash.com%2Fpremium_photo-1664474619075-644dd191935f%3Ffm%3Djpg%26q%3D60%26w%3D3000%26ixlib%3Drb-4.1.0%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%253D&imgrefurl=https%3A%2F%2Funsplash.com%2Ffr%2Fs%2Fphotos%2Fimage&docid=n9tHz9sAm2iZfM&tbnid=2brKLR3s5kTpPM&vet=12ahUKEwjr0diTu6WNAxV1U6QEHTRnJTUQM3oECBsQAA..i&w=3000&h=2003&hcb=2&ved=2ahUKEwjr0diTu6WNAxV1U6QEHTRnJTUQM3oECBsQAA',
          );
        },
      ),
    );
  }
}
