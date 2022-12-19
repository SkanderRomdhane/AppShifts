import 'package:flutter/material.dart';

class ShiftsDetailsDescriptionWidget extends StatelessWidget {
  final IconData icon;
  final String description;

  const ShiftsDetailsDescriptionWidget(
      {Key? key, required this.icon, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                icon,
                size: 15,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                description,
                style: theme.textTheme.subtitle2
                    ?.copyWith(fontWeight: FontWeight.w300),
                softWrap: true,
              ),
            ),
          )
        ],
      ),
    );
  }
}
