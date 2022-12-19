import 'package:app_shifts/features/shifts_offerts/models/shiffts_offerts.dart';
import 'package:app_shifts/global/theme/theme.dart';
import 'package:flutter/material.dart';

class ShiftsCardWidget extends StatelessWidget {
  final ShifftsOfferts shifftsOfferts;

  const ShiftsCardWidget({
    Key? key,
    required this.shifftsOfferts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      color: whiteColor,
      margin: const EdgeInsets.all(0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shifftsOfferts.company ?? "",
              style: theme.textTheme.headline6,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                shifftsOfferts.startAt ?? "",
                style: theme.textTheme.subtitle1
                    ?.copyWith(color: theme.errorColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: greyLight,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          shifftsOfferts.postName ?? "",
                          style: theme.textTheme.subtitle2
                              ?.copyWith(color: greyDark),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        (shifftsOfferts.buyPrice ?? "") + "\$ / H ",
                        style: theme.textTheme.subtitle2
                            ?.copyWith(color: greyDark),
                      ),
                    ),
                    Text(
                      "+ " + (shifftsOfferts.bonus.toString()) + "\$ / H ",
                      style: theme.textTheme.subtitle2
                          ?.copyWith(color: greenButtonColor),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
