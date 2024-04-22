import 'package:cv_template/config/config.dart';
import 'package:cv_template/domain/education_entry.dart';
import 'package:cv_template/domain/language_entry.dart';
import 'package:cv_template/domain/skill_entry.dart';
import 'package:cv_template/domain/work_entry.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';

class MainTimeLine extends StatelessWidget {
  const MainTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineTheme.of(context).copyWith(
        nodePosition: 0.1,

        // indicatorPosition: 0,
      ),
      builder: TimelineTileBuilder.connected(
        indicatorBuilder: (context, index) {
          final entry = workEntries[index];
          return buildIndicator(context, entry);
        },
        connectorBuilder: (_, index, type) {
          return const SolidLineConnector(color: Colors.white);
        },
        contentsAlign: ContentsAlign.basic,
        contentsBuilder: (context, index) {
          final entry = workEntries[index];
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: buildEntry(context, entry),
          );
        },
        itemCount: workEntries.length,
      ),
    );
  }
}

Widget buildEntry(BuildContext context, dynamic entry) {
  switch (entry.runtimeType) {
    case (WorkEntry):
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${(entry as WorkEntry).fromDate.year} - ${(entry).toDate.year}',
            style: const TextStyle(fontSize: 22),
          ),
          Text(entry.company,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              )),
          Text(
            entry.jobTitle,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            entry.description,
            style: const TextStyle(fontSize: 16),
          )
        ],
      );
/*
    case const ():
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${entry.name} | ${entry.skillLevel}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          SliderTheme(
            data: SliderThemeData(
              overlayShape: SliderComponentShape.noThumb,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
              trackHeight: 6,
              overlayColor: Theme.of(context).colorScheme.primaryContainer,
              activeTrackColor: Theme.of(context).colorScheme.primaryContainer,
            ),
            child: Slider(
              value: entry.rating.toDouble(),
              min: 0,
              max: 5,
              label: entry.rating.toString(),
              onChanged: (double value) {},
            ),
          ),
        ],
      );
*/
    case const (String):
    default:
      return Text(
        entry,
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.headlineMedium!.fontSize,
        ),
      );
  }
}

ContainerIndicator buildIndicator(
  BuildContext context,
  dynamic entry,
) {
  if (entry.runtimeType == String) {
    return ContainerIndicator(
      size: 64,
      child: Center(
        child: FaIcon(
          color: Theme.of(context).colorScheme.secondary,
          size: 48,
          _getIconFromString(entry as String),
        ),
      ),
    );
  } else {
    return ContainerIndicator(
        size: 64,
        child: Center(
          child: Icon(
            color: Theme.of(context).colorScheme.secondary,
            size: 18,
            Icons.circle,
          ),
        ));
  }
}

IconData _getIconFromString(String category) {
  switch (category) {
    case 'Work Experience':
      return FontAwesomeIcons.helmetSafety;
    default:
      return Icons.error;
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
