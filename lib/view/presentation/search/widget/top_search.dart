import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_api/core/colors/constants.dart';
import 'package:netflix_api/model/movies/movie/movie.dart';


class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: SizedBox(
              height: 100,
              width: 170,
              child: Image.network(
                "$imagePath${movie.backdropPath}",
                fit: BoxFit.cover,
              ),
            ),
          ),
          kwidth,
          Expanded(
            child: Text(
              movie.title!,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Icon(
            CupertinoIcons.play_circle,
            color: Colors.white,
            size: 40,
          ),
          kwidth
        ],
      ),
    );
  }
}
