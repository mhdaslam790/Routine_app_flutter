import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/routine/routine_bloc.dart';
import 'package:flutter_template/presentation/core/widgets/bottom_sheet_menu.dart';
import 'package:flutter_template/presentation/core/widgets/sized_boxes.dart';
import 'package:intl/intl.dart';

class RoutinePage extends StatefulWidget {
  @override
  State<RoutinePage> createState() => _RoutinePageState();
}

class _RoutinePageState extends State<RoutinePage> {
  late List<DateTime> dateRange;
  late String headingText;
  late DateTime monthDifferent;

  @override
  void initState() {
    monthDifferent = DateTime(DateTime.now().year, DateTime.now().month);
    // TODO: implement initState
    dateRange = getDaysInBetween(DateTime.now(), DateTime(2040));
    context.read<RoutineBloc>().add(
          RoutineEvent.selectDateIndex(
            date: DateTime.now(),
            index: 0,
          ),
        );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  List<DateTime> getDaysInBetween(DateTime startDate, DateTime endDate) {
    List<DateTime> days = [];
    for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
      days.add(startDate.add(Duration(days: i)));
    }
    return days;
  }

  int daysBetween(DateTime from, DateTime to) {
    final beginingDate = DateTime(from.year, from.month, from.day);
    final toDate = DateTime(to.year, to.month, to.day);
    return (toDate.difference(beginingDate).inHours / 24).round();
  }

  @override
  Widget build(BuildContext context) {
    // context.read<RoutineBloc>().add(const RoutineEvent.getData());

    return BlocBuilder<RoutineBloc, RoutineState>(
      builder: (context, state) {
        return Scaffold(
          // appBar: CustomAppBar(title: title),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                  child: Text(
                    state.headingText,
                    style: const TextStyle(
                      fontFamily: 'Euclid Circular B',
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 95,
                  child: ListView.builder(
                    itemCount: dateRange.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      // print(monthDifferent);
                      // print(dateRange[index].difference(monthDifferent).inDays);
                      if (dateRange[index].difference(monthDifferent).inDays >
                          40) {
                        monthDifferent = DateTime(
                            dateRange[index].year, dateRange[index].month);
                        context.read<RoutineBloc>().add(
                            RoutineEvent.setHeadingDate(date: monthDifferent));
                      }
                      if (dateRange[index].difference(monthDifferent).inDays <
                          -6) {
                        monthDifferent = DateTime(
                            dateRange[index].year, dateRange[index].month);
                        context.read<RoutineBloc>().add(
                            RoutineEvent.setHeadingDate(date: monthDifferent));
                      }
                      final dateName = DateFormat('E').format(dateRange[index]);
                      //with id 65
                      return Padding(
                        padding: const EdgeInsets.only(left: 25, bottom: 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              dateName,
                              style: const TextStyle(
                                fontFamily: 'Euclid Circular B',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBoxH10(),
                            InkWell(
                              onTap: () {
                                context.read<RoutineBloc>().add(
                                      RoutineEvent.selectDateIndex(
                                        date: dateRange[index],
                                        index: index,
                                      ),
                                    );
                              },
                              child: CircleAvatar(
                                backgroundColor: state.selectedIndex == index
                                    ? const Color(0xFF2F80ED)
                                    : Colors.transparent,
                                child: Text(
                                  "${dateRange[index].day}",
                                  style: TextStyle(
                                    fontFamily: 'Euclid Circular B',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: state.selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 39, top: 0),
                  decoration: const BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      // color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .7,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.only(left: 27.0),
                        child: SizedBox(
                          height: 24,
                          child: DottedLine(
                            direction: Axis.vertical,
                            lineThickness: 2,
                            dashLength: 5,
                          ),
                        ),
                      );
                    },
                    itemCount: state.selectedDateRoutine.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          Container(
                            height: 74,
                            width: 55,
                            decoration: const BoxDecoration(
                                // color: Color(0xFFF5F5F5),
                                color: Color(0xFFBBDEFB),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: const Icon(
                              Icons.calendar_today_rounded,
                              size: 19,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${state.selectedDateRoutine[index].startTime} - ${state.selectedDateRoutine[index].endTime}",
                                style: const TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                state.selectedDateRoutine[index].name,
                                style: TextStyle(
                                  fontFamily: 'Euclid Circular B',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            elevation: 5.0,
            backgroundColor: const Color(0xFF2F80ED),
            onPressed: () {
              showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7),
                    topRight: Radius.circular(7),
                  ),
                ),
                //backgroundColor: Colors.transparent,
                context: context,
                builder: (builder) => const BottomSheetMenu(),
              );
            },
            child: const Icon(Icons.add),
          ),
          // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
