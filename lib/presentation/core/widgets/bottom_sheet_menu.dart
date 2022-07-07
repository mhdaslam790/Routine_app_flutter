import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/application/routine/routine_bloc.dart';
import 'package:flutter_template/domain/routine/routine_data_model.dart';
import 'package:flutter_template/presentation/core/widgets/data_already_exist_bottom_sheet.dart';
import 'package:flutter_template/presentation/core/widgets/sized_boxes.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class BottomSheetMenu extends StatefulWidget {
  const BottomSheetMenu({Key? key}) : super(key: key);

  @override
  State<BottomSheetMenu> createState() => _BottomSheetMenuState();
}

class _BottomSheetMenuState extends State<BottomSheetMenu> {
  late String textFieldData;
  late TimeOfDay? startTime;
  late TimeOfDay? endTime;
  late DateTime? pickedDate;
  @override
  void initState() {
    // TODO: implement initState
    endTime = TimeOfDay.now();
    startTime = TimeOfDay.now();
    pickedDate = DateTime.now();
    super.initState();
    textFieldData = "";
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<RoutineBloc, RoutineState>(
        listener: (context, state) {
          // TODO: implement listener
          state.setDataSuccessFailureOpt.fold(() {}, (some) {
            some.fold((something) {
              something.maybeMap(
                orElse: () {},
                dataAlreadyExist: (e) {
                  print("dta already exist");
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        topRight: Radius.circular(7),
                      ),
                    ),
                    //backgroundColor: Colors.transparent,
                    context: context,
                    builder: (builder) => const DataAlreadyExistBottomSheet(),
                  );
                },
              );
            }, (r) {
              Fluttertoast.showToast(msg: 'Schedule added succesfully');
              context.read<RoutineBloc>().add(const RoutineEvent.getData());
              Navigator.pop(context);
            });
          });
        },
        builder: (context, state) {
          return SizedBox(
            // height: 500,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBoxH10(),
                ListTile(
                  leading: const Text(
                    "Add schedule",
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF054DB9)),
                    textAlign: TextAlign.center,
                  ),
                  trailing: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "name",
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  // height: 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: TextField(
                    onChanged: (value) {
                      textFieldData = value;
                    },
                    textAlignVertical: TextAlignVertical.center,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      filled: true,

                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      // fillColor:Theme.of(context).bod,

                      fillColor: const Color(0xffE5EFFF),
                      // hintText: "Search messages, people...",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBoxH10(),
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "Date & time",
                    style: TextStyle(
                        fontFamily: 'Euclid Circular B',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xffE5EFFF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    height: 200,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Start time",
                              style: TextStyle(
                                fontFamily: 'Euclid Circular B',
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${startTime!.hourOfPeriod}:${startTime!.minute} ${startTime!.period.toString().split('.').last.toUpperCase()}",
                                  style: const TextStyle(
                                    fontFamily: 'Euclid Circular B',
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF2F80ED),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                IconButton(
                                  onPressed: () async {
                                    startTime = await showTimePicker(
                                      context: context,
                                      initialTime:
                                          const TimeOfDay(hour: 7, minute: 15),
                                      initialEntryMode:
                                          TimePickerEntryMode.input,
                                    );
                                    setState(() {});
                                    print(startTime);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "End time",
                              style: TextStyle(
                                fontFamily: 'Euclid Circular B',
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${endTime!.hourOfPeriod}:${endTime!.minute} ${endTime!.period.toString().split('.').last.toUpperCase()}",
                                  style: const TextStyle(
                                    fontFamily: 'Euclid Circular B',
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF2F80ED),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                IconButton(
                                  onPressed: () async {
                                    endTime = await showTimePicker(
                                      context: context,
                                      initialTime:
                                          const TimeOfDay(hour: 7, minute: 15),
                                      initialEntryMode:
                                          TimePickerEntryMode.input,
                                    );
                                    setState(() {});
                                    print(startTime);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Date",
                              style: TextStyle(
                                fontFamily: 'Euclid Circular B',
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              children: [
                                Text(
                                  DateFormat("dd/MM/yyyy").format(pickedDate!),
                                  style: const TextStyle(
                                    fontFamily: 'Euclid Circular B',
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF2F80ED),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                IconButton(
                                  onPressed: () async {
                                    final picked = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2015, 8),
                                        lastDate: DateTime(2101));
                                    if (picked != null &&
                                        picked != pickedDate) {
                                      setState(() {
                                        pickedDate = picked;
                                      });
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: FloatingActionButton.extended(
                    elevation: 0,
                    onPressed: () async {
                      if (textFieldData == "") {
                        Fluttertoast.showToast(
                            msg: 'Please enter name of routine.');
                      } else {
                        context.read<RoutineBloc>().add(
                              RoutineEvent.setData(
                                data: RoutineDataModel(
                                  id: "0",
                                  name: textFieldData,
                                  startTime:
                                      "${startTime!.hourOfPeriod}:${startTime!.minute} ${startTime!.period.toString().split('.').last.toUpperCase()}",
                                  endTime:
                                      "${endTime!.hourOfPeriod}:${endTime!.minute} ${endTime!.period.toString().split('.').last.toUpperCase()}",
                                  date: DateFormat("dd/MM/yyyy")
                                      .format(pickedDate!),
                                ),
                              ),
                            );
                      }
                    },
                    heroTag: null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: const Color(0xFF2F80ED),
                    label: SizedBox(
                      width: MediaQuery.of(context).size.width * .78,
                      child: const Text(
                        "Add schedule",
                        style: TextStyle(
                          fontFamily: 'Euclid Circular B',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                const SizedBoxH10(),
                // FloatingActionButton.extended(
                //   onPressed: () {},
                // )
              ],
            ),
          );
        },
      ),
    );
  }
}
