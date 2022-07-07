import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/core/widgets/sized_boxes.dart';

class DataAlreadyExistBottomSheet extends StatelessWidget {
  const DataAlreadyExistBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBoxH20(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .06,
              ),
              child: const Text(
                "This overlaps with another schedule and can’t be saved.",
                style: TextStyle(
                  fontFamily: 'Euclid Circular B',
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.red,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .06,
              ),
              child: const Text(
                "Please modify and try again.",
                style: const TextStyle(
                  fontFamily: 'Euclid Circular B',
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2F80ED),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBoxH20(),
            Center(
              child: FloatingActionButton.extended(
                elevation: 0,
                onPressed: () async {
                  Navigator.pop(context);
                },
                heroTag: null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                backgroundColor: const Color(0xFF2F80ED),
                label: SizedBox(
                  width: MediaQuery.of(context).size.width * .78,
                  child: const Text(
                    "Okay",
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
          ],
        ),
      ),
    );
  }
}
