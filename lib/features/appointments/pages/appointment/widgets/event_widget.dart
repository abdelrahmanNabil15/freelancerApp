import 'package:flutter/material.dart';
import 'package:freeWoma/core/core.dart';

class EventWidget extends StatelessWidget {
  final String eventName;

  Future<String> convertTime;

  EventWidget({super.key, required this.eventName, required this.convertTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFC2ECFC),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(
        vertical: Dimens.space8,
        horizontal: Dimens.space12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: FutureBuilder<String>(
              future: convertTime,
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                    snapshot.data!,
                    style: Theme.of(context).textTheme.titleSmall,
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return const Text('Loading...');
                }
              },
            ),
          ),
          Expanded(
            child: Text(
              eventName,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
