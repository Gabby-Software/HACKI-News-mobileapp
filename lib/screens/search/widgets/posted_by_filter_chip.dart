import 'package:flutter/material.dart';
import 'package:hacki/models/search_params.dart';
import 'package:hacki/screens/widgets/widgets.dart';

class PostedByFilterChip extends StatelessWidget {
  const PostedByFilterChip({
    super.key,
    required this.filter,
  });

  final PostedByFilter? filter;

  @override
  Widget build(BuildContext context) {
    return CustomChip(
      onSelected: (bool value) {},
      selected: filter != null,
      label: '''posted by ${filter?.author ?? ''}''',
    );
  }
}
