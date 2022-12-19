import 'package:app_shifts/features/shift_details/widgets/shifts_details_description_widget.dart';
import 'package:app_shifts/features/shifts_offerts/models/shiffts_offerts.dart';
import 'package:app_shifts/global/const/const.dart';
import 'package:app_shifts/global/theme/theme.dart';
import 'package:flutter/material.dart';

class ShiftsDetailsPage extends StatefulWidget {
  final ShifftsOfferts e;

  const ShiftsDetailsPage({Key? key, required this.e}) : super(key: key);

  @override
  State<ShiftsDetailsPage> createState() => _ShiftsDetailsPageState();
}

class _ShiftsDetailsPageState extends State<ShiftsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (() => Navigator.of(context).pop()),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: whiteColor.withOpacity(0.9),
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const Center(
                child: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(imgAdress),
                  backgroundColor: Colors.transparent,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    widget.e.company ?? "",
                    style: theme.textTheme.headline6,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  widget.e.startAt ?? "",
                  style: theme.textTheme.subtitle2
                      ?.copyWith(color: theme.errorColor),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 8, right: 15),
                child: Row(
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
                              widget.e.postName ?? '',
                              style: theme.textTheme.subtitle2
                                  ?.copyWith(color: greyDark, fontSize: 12),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            (widget.e.buyPrice ?? "") + "\$ / H ",
                            style: theme.textTheme.subtitle2
                                ?.copyWith(color: greyDark),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                      child: Text(
                        "16:00 - 22:00",
                        maxLines: 1,
                        style: theme.textTheme.subtitle2
                            ?.copyWith(color: greyDark),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Column(
                  children: [
                    const ShiftsDetailsDescriptionWidget(
                      icon: Icons.post_add,
                      description: "48 Rue Sous le Fort,Québec,QC  G1K 4G9 ",
                    ),
                    ShiftsDetailsDescriptionWidget(
                      icon: Icons.money,
                      description: "Bonus au travailleur: + " +
                          (widget.e.bonus.toString()) +
                          "\$ / H ",
                    ),
                    const ShiftsDetailsDescriptionWidget(
                      icon: Icons.pause,
                      description: "Pause de 30 minutes ",
                    ),
                    const ShiftsDetailsDescriptionWidget(
                      icon: Icons.local_parking,
                      description: "Stationement gratuit",
                    ),
                    const ShiftsDetailsDescriptionWidget(
                      icon: Icons.badge_sharp,
                      description: "Pantallon noir , chemise noir",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "RESPONSABLE",
                  maxLines: 1,
                  style: theme.textTheme.subtitle2
                      ?.copyWith(color: greyDark, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  "Gregorie Kovlaks",
                  maxLines: 1,
                  style: theme.textTheme.subtitle2
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 5, right: 20, top: 0),
        child: ElevatedButton(
          onPressed: null,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "Postuler",
              style: theme.textTheme.subtitle1?.copyWith(color: whiteColor),
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 61, 205, 224)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
