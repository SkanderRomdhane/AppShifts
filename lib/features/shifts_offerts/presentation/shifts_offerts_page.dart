import 'dart:convert';

import 'package:app_shifts/features/shift_details/shifts_details_page.dart';
import 'package:app_shifts/features/shifts_offerts/models/shiffts_offerts.dart';
import 'package:app_shifts/features/shifts_offerts/presentation/widgets/shifts_card_widget.dart';
import 'package:app_shifts/global/common_widgets/bottom_navigation_bar_widget.dart';
import 'package:app_shifts/global/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShiftsOffertsPage extends StatefulWidget {
  const ShiftsOffertsPage({Key? key}) : super(key: key);

  @override
  State<ShiftsOffertsPage> createState() => _ShiftsOffertsPageState();
}

class _ShiftsOffertsPageState extends State<ShiftsOffertsPage> {
  List<ShifftsOfferts> shiftsOfferts = [];

  Future<void> readJsonFile() async {
    final String response =
        await rootBundle.loadString('assets/offered_shifts.json');
    final shiftsData = await json.decode(response);

    var list = shiftsData["data"] as List<dynamic>;

    setState(() {
      shiftsOfferts = [];
      shiftsOfferts = list.map((e) => ShifftsOfferts.fromJson(e)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    readJsonFile();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: greyLight,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Text(
                "Shifts offerts",
                style: theme.textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "SHIFTS  À VENIR",
                style: theme.textTheme.subtitle2?.copyWith(
                    color: greyDark, fontWeight: FontWeight.w500, fontSize: 12),
              ),
            ),
            shiftsOfferts.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: shiftsOfferts.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 10),
                          child: InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  ShiftsDetailsPage(e: shiftsOfferts[index]),
                            )),
                            child: ShiftsCardWidget(
                              shifftsOfferts: shiftsOfferts[index],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Center(
                    child: Text(
                      "No Data",
                      style: theme.textTheme.headline3,
                    ),
                  ),
          ],
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
