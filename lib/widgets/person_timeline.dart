import 'package:cv_template/config/config.dart';
import 'package:cv_template/domain/education_entry.dart';
import 'package:cv_template/domain/language_entry.dart';
import 'package:cv_template/domain/skill_entry.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';

class PersonTimeLine extends StatelessWidget {
  const PersonTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineTheme.of(context).copyWith(
        nodePosition: 0.1,
        // indicatorPosition: 0,
      ),
      builder: TimelineTileBuilder.connected(
        indicatorBuilder: (context, index) {
          final entry = personEntries[index];
          return buildIndicator(context, entry);
        },
        connectorBuilder: (_, index, type) {
          return SolidLineConnector(
            color: Theme.of(context).colorScheme.primary,
          );
        },
        contentsAlign: ContentsAlign.basic,
        contentsBuilder: (context, index) {
          final entry = personEntries[index];
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: buildEntry(context, entry),
          );
        },
        itemCount: personEntries.length,
      ),
    );
  }
}

Widget buildEntry(BuildContext context, dynamic entry) {
  switch (entry.runtimeType) {
    case const (EducationEntry):
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              '${(entry as EducationEntry).fromDate.year} - ${(entry).toDate.year}'),
          Text(entry.degree,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(entry.university, style: const TextStyle(fontSize: 12)),
        ],
      );
    case const (SkillEntry):
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${entry.name}'),
          SliderTheme(
            data: SliderThemeData(
              // overlayShape: SliderComponentShape.noOverlay,
              trackShape: CustomTrackShape(),
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
    case const (LanguageEntry):
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${entry.name} | ${entry.skillLevel}'),
          const SizedBox(height: 8),
          SliderTheme(
            data: SliderThemeData(
              overlayShape: SliderComponentShape.noThumb,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
              trackHeight: 6,
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

    case const (String):
    default:
      return Text(entry, style: Theme.of(context).textTheme.headlineMedium);
  }
}

ContainerIndicator buildIndicator(
  BuildContext context,
  dynamic entry,
) {
  if (entry.runtimeType == String) {
    return ContainerIndicator(
      size: 48,
      child: Center(
        child: FaIcon(
          size: 36,
          _getIconFromString(entry as String),
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  } else {
    return ContainerIndicator(
        size: 48,
        child: Center(
          child: Icon(
            size: 14,
            Icons.circle,
            color: Theme.of(context).colorScheme.primary,
          ),
        ));
  }
}

IconData _getIconFromString(String category) {
  switch (category) {
    case 'Education':
      return FontAwesomeIcons.graduationCap;
    case 'Languages':
      return FontAwesomeIcons.language;
    case 'Skills':
      return FontAwesomeIcons.code;
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
