import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String rating;
  final String releasedYear;
  final String url;
  final List genres;

  const MovieCard({
    Key? key,
    required this.title,
    required this.rating,
    required this.releasedYear,
    required this.url,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            url,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text(
            "Rating: $rating",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 4.0),
          Text(
            "Released Year: $releasedYear",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 4.0),
          Text(
            "Genres: ${genres.join(", ")}",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}

class MyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // Example background color
      child: Center(
        child: Text(
          'Hello, World!', // Example text
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white, // Example text color
          ),
        ),
      ),
    );
  }
}
