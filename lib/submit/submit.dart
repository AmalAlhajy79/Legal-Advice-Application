import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawer_project_lasttt/submit/submit_controller.dart';
Color secondBackgroundColor = Color(0xffd7c36b);
Color third = Color(0xff8b7475);

class AppointmentPage extends StatelessWidget {
  SubmitController controller = Get.find();//put(SubmitController());
  final TextEditingController provider_id = TextEditingController();
  final TextEditingController user_id = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: 600,
                height: 270,
                child: Image.asset(
                  'assets/images/question/Pic1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .75,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Select date:',
                              style: TextStyle(fontSize: 25.0),
                            ),
                            SizedBox(width: 30.0),
                            GestureDetector(
                              onTap: () async {
                                final DateTime? selectedDate = await showDatePicker(
                                  context: context,
                                  initialDate: _selectedDate,
                                  firstDate: DateTime.now(),
                                  lastDate: DateTime(2100),
                                );
                                if (selectedDate != null) {
                                  _selectedDate = selectedDate;
                                }
                              },
                              child: Container(
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: secondBackgroundColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Choose date",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Select time:',
                              style: TextStyle(fontSize: 25.0),
                            ),
                            SizedBox(width: 30.0),
                            GestureDetector(
                              onTap: () async {
                                final TimeOfDay? selectedTime = await showTimePicker(
                                  context: context,
                                  initialTime: _selectedTime,
                                );
                                if (selectedTime != null) {
                                  _selectedTime = selectedTime;
                                }
                              },
                              child: Container(
                                width: 120,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: secondBackgroundColor,
                                ),
                                child: Center(
                                  child: Text(
                                    "Choose time",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 80.0),
                        GestureDetector(
                          onTap: () async {
                            String selectedHour = _selectedTime.hour.toString().padLeft(2, '0');
                            String selectedMinute = _selectedTime.minute.toString().padLeft(2, '0');
                            String selectedTime = '$selectedHour:$selectedMinute:00';
                            await controller.submit(
                              '30',
                              '1',
                              selectedTime,
                              '${_selectedDate.year.toString()}-${_selectedDate.month.toString().padLeft(2, '0')}-${_selectedDate.day.toString().padLeft(2, '0')}',
                            );
                          },
                          child: Container(
                            width: 200,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondBackgroundColor,
                            ),
                            child: Center(
                              child: Text(
                                "Send",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
