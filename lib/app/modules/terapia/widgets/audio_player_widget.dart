import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class AudioPlayerWidget extends StatefulWidget {
  final String filePath;
  final Widget title;
  const AudioPlayerWidget({
    Key key,
    @required this.filePath,
    this.title,
  }) : super(key: key);

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  bool _play = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: AudioWidget.assets(
        path: widget.filePath,
        play: _play,
        onReadyToPlay: (duration) {
          //onReadyToPlay
        },
        onPositionChanged: (current, duration) {
          //onReadyToPlay
        },
        child: RaisedButton(
          onPressed: () {
            setState(
              () {
                _play = !_play;
              },
            );
          },
          child: Text(
            _play ? "parar" : "ouvir",
          ),
        ),
      ),
      title: widget.title,
    );
  }
}
