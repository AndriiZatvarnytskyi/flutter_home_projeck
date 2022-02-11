import 'package:flutter/material.dart';
import 'package:spotify/data/data.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;

  const PlaylistHeader({Key? key, required this.playlist}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(playlist.imageURL,
                height: 200.0, width: 200.0, fit: BoxFit.cover),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'PLAYLIST',
                  style: TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 10,
                      letterSpacing: 1.5,
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Text(
                  playlist.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Text(
                  playlist.description,
                  style: const TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 16,
                      letterSpacing: 0.15,
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Text(
                  'Created by ${playlist.creator} • ${playlist.songs.length} song, ${playlist.duration}',
                  style: const TextStyle(
                      fontFamily: 'Regular',
                      fontSize: 16,
                      letterSpacing: 0.15,
                      color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ))
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        _PlaylistButtons(followers: playlist.followers),
      ],
    );
  }
}

class _PlaylistButtons extends StatelessWidget {
  final String followers;

  const _PlaylistButtons({Key? key, required this.followers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(horizontal: 48.0, vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: const Color.fromRGBO(24, 216, 96, 100),
              primary: Colors.white,
              textStyle: const TextStyle(
                  fontFamily: "Regular",
                  fontSize: 12.0,
                  letterSpacing: 2.0,
                  color: Colors.white)),
          child: const Text('PLAY'),
        ),
        const SizedBox(
          width: 8.0,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
          color: Colors.white,
          iconSize: 30.0,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_horiz),
          color: Colors.white,
          iconSize: 30.0,
        ),
        const Spacer(),
        Text(
          'FOLLOWERS\n$followers',
          style: const TextStyle(
              fontFamily: 'Regular',
              fontSize: 12,
              letterSpacing: 1.5,
              color: Colors.white),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
