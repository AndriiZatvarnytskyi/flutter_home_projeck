import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:spotify/data/data.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('assets/images/spotify_logo.png',
                        height: 55.0, filterQuality: FilterQuality.high),
                  ),
                ],
              ),
            ],
          ),
          _SideMenuIconTab(iconData: Icons.home, title: 'Home', onTap: () {}),
          _SideMenuIconTab(
              iconData: Icons.search, title: 'Search', onTap: () {}),
          _SideMenuIconTab(
              iconData: Icons.audiotrack, title: 'Radio', onTap: () {}),
          const SizedBox(
            height: 12,
          ),
          _LibraryPlaylists(),
        ],
      ),
    );
  }
}

class _SideMenuIconTab extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _SideMenuIconTab(
      {required this.iconData, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.grey[300],
        size: 28.0,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.grey[300],
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.0),
        overflow: TextOverflow.ellipsis,
      ),
      onTap: onTap,
    );
  }
}

class _LibraryPlaylists extends StatefulWidget {
  const _LibraryPlaylists({Key? key}) : super(key: key);

  @override
  __LibraryPlaylistsState createState() => __LibraryPlaylistsState();
}

class __LibraryPlaylistsState extends State<_LibraryPlaylists> {
  ScrollController? _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawScrollbar(
        radius: Radius.elliptical(5, 5),
        thumbColor: const Color(0xff212121),
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          physics: const ClampingScrollPhysics(),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'YOUR LIBRARY',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ...yourLibrary
                    .map(
                      (e) => ListTile(
                        dense: true,
                        title: Text(
                          e,
                          style: TextStyle(
                              color: Colors.grey[300], letterSpacing: 1.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {},
                      ),
                    )
                    .toList(),
              ],
            ),
            const SizedBox(
              height: 24.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    'PLAYLISTS',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 2.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ...playlists
                    .map(
                      (e) => ListTile(
                        dense: true,
                        title: Text(
                          e,
                          style: TextStyle(
                              color: Colors.grey[300], letterSpacing: 1.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {},
                      ),
                    )
                    .toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
