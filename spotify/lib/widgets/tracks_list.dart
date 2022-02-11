import 'package:flutter/material.dart';
import 'package:spotify/data/data.dart';
import 'package:spotify/models/current_track_model.dart';
import 'package:provider/src/provider.dart';

class TracksList extends StatelessWidget {
  final List<Song> tracks;

  const TracksList({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle: const TextStyle(
          fontFamily: 'Regular',
          fontSize: 12,
          letterSpacing: 1.5,
          color: Color(0xFFE0E0E0)),
      dataRowHeight: 54.0,
      showCheckboxColumn: false,
      columns: const [
        DataColumn(
            label: Text(
          'TITLE',
          style: TextStyle(
              fontSize: 12.0,
              color: Color(0xFFE0E0E0),
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0),
          overflow: TextOverflow.ellipsis,
        )),
        DataColumn(
            label: Text(
          'ARTIST',
          style: TextStyle(
              fontSize: 12.0,
              color: Color(0xFFE0E0E0),
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0),
          overflow: TextOverflow.ellipsis,
        )),
        DataColumn(
            label: Text(
          'ALBUM',
          style: TextStyle(
              fontSize: 12.0,
              color: Color(0xFFE0E0E0),
              fontWeight: FontWeight.w500,
              letterSpacing: 2.0),
          overflow: TextOverflow.ellipsis,
        )),
        DataColumn(
          label: Icon(
            Icons.access_time,
            color: Color(0xFFE0E0E0),
          ),
        ),
      ],
      rows: tracks.map((e) {
        final selected =
            context.watch<CurrentTrackModel>().selected?.id == e.id;
        final textStyle = TextStyle(
            color: selected
                ? (Color.fromRGBO(24, 216, 96, 100))
                : (Color(
                    0xFFE0E0E0,
                  )));
        return DataRow(
          cells: [
            DataCell(Text(
              e.title,
              style: textStyle,
              overflow: TextOverflow.ellipsis,
            )),
            DataCell(Text(
              e.artists,
              style: textStyle,
              overflow: TextOverflow.ellipsis,
            )),
            DataCell(Text(
              e.album,
              style: textStyle,
              overflow: TextOverflow.ellipsis,
            )),
            DataCell(Text(
              e.duration,
              style: textStyle,
              overflow: TextOverflow.ellipsis,
            )),
          ],
          selected: selected,
          onSelectChanged: (_) =>
              context.read<CurrentTrackModel>().selectTrack(e),
        );
      }).toList(),
    );
  }
}
