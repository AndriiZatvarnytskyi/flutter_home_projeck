import 'package:flutter/material.dart';
import 'package:spotify/models/current_track_model.dart';
import 'package:provider/src/provider.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.0,
      width: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            _TrackInfo(),
            const Spacer(),
            _PlayerControls(),
            const Spacer(),
            if (MediaQuery.of(context).size.width > 800) _MoreControls(),
          ],
        ),
      ),
    );
  }
}

class _TrackInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    if (selected == null) return const SizedBox.shrink();
    return Row(
      children: [
        Image.network(
          'https://raw.githubusercontent.com/MarcusNg/flutter_spotify_ui/starter_project/assets/lofigirl.jpg',
          height: 60.0,
          width: 60.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 12.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selected.title,
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Text(
              selected.artists,
              style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 12,
                  letterSpacing: 0.15,
                  color: Colors.grey[300]),
            )
          ],
        ),
        const SizedBox(
          width: 12.0,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey[300],
            ))
      ],
    );
  }
}

class _PlayerControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    return Column(
      children: [
        Row(
          children: [
            IconButton(
                padding: const EdgeInsets.only(),
                onPressed: () {},
                icon: const Icon(Icons.shuffle),
                iconSize: 20.0,
                color: Colors.grey[300]),
            IconButton(
                padding: const EdgeInsets.only(),
                onPressed: () {},
                icon: const Icon(Icons.skip_previous_outlined),
                iconSize: 20.0,
                color: Colors.grey[300]),
            IconButton(
                padding: const EdgeInsets.only(),
                onPressed: () {},
                icon: const Icon(Icons.play_circle_outline),
                iconSize: 34.0,
                color: Colors.grey[300]),
            IconButton(
                padding: const EdgeInsets.only(),
                onPressed: () {},
                icon: const Icon(Icons.skip_next_outlined),
                iconSize: 20.0,
                color: Colors.grey[300]),
            IconButton(
                padding: const EdgeInsets.only(),
                onPressed: () {},
                icon: const Icon(Icons.repeat),
                iconSize: 20.0,
                color: Colors.grey[300]),
          ],
        ),
        const SizedBox(
          height: 4.0,
        ),
        Row(
          children: [
            Text(
              '0:00',
              style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 12,
                  letterSpacing: 0.4,
                  color: Colors.grey[300]),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Container(
              height: 5.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(2.5)),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Text(selected?.duration ?? '0:00',
                style: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 12,
                    letterSpacing: 0.4,
                    color: Colors.grey[300]))
          ],
        ),
      ],
    );
  }
}

class _MoreControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.devices_outlined),
          iconSize: 20.0,
          color: Colors.grey[300],
          onPressed: () {},
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.volume_up_outlined),
              iconSize: 20.0,
              color: Colors.grey[300],
              onPressed: () {},
            ),
            Container(
              height: 5.0,
              width: 70.0,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2.5)),
            )
          ],
        ),
        IconButton(
          icon: const Icon(Icons.fullscreen_outlined),
          color: Colors.grey[300],
          onPressed: () {},
        ),
      ],
    );
  }
}
