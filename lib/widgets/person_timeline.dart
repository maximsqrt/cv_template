import 'package:cv_template/config/config.dart';
import 'package:cv_template/domain/education_entry.dart';
import 'package:cv_template/domain/language_entry.dart';
import 'package:cv_template/domain/skill_entry.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timelines/timelines.dart';

class PersonalTimeLine extends StatelessWidget {
  const PersonalTimeLine({super.key});

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
      theme: TimelineTheme.of(context).copyWith(
        nodePosition: 0,
      ),
      builder: TimelineTileBuilder.connected(
        indicatorBuilder: (context, index) {
          final entry = personEntries[index];
          return buildIndicator(context, entry);
        },
        connectorBuilder: (_, index, type) {
          return const SolidLineConnector(color: Colors.white);
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
    case (const (EducationEntry)):
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionArea(
            child: Text(
                selectionColor: Theme.of(context).colorScheme.secondary,
                '${(entry as EducationEntry).fromDate.year} - ${(entry).toDate.year}'),
          ),
          SelectionArea(
            child: Text(
              entry.degree,
              selectionColor: Theme.of(context).colorScheme.secondary,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SelectionArea(
            child: Text(
              entry.university,
              selectionColor: Theme.of(context).colorScheme.secondary,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      );
    case const (SkillEntry):
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionArea(
            child: Text(
              '${entry.name}',
              selectionColor: Theme.of(context).colorScheme.secondary,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8),
          SliderTheme(
            data: SliderThemeData(
              overlayShape: SliderComponentShape.noThumb,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 0),
              trackHeight: 6,
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
    case const (LanguageEntry):
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectionArea(
            child: Text(
              selectionColor: Theme.of(context).colorScheme.secondary,
              '${entry.name} | ${entry.skillLevel}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
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

    case const (String):
    default:
      return FittedBox(
        fit: BoxFit.contain,
        child: SelectionArea(
          child: Text(
            entry,
            selectionColor: Theme.of(context).colorScheme.secondary,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.headlineMedium!.fontSize,
            ),
          ),
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
      size: 48,
      child: Center(
        child: FaIcon(
          color: Theme.of(context).colorScheme.primaryContainer,
          size: 36,
          _getIconFromString(entry as String),
        ),
      ),
    );
  } else {
    return ContainerIndicator(
        size: 48,
        child: Center(
          child: Icon(
            color: Theme.of(context).colorScheme.primaryContainer,
            size: 14,
            Icons.circle,
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
