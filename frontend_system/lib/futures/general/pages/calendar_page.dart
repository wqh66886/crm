import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frontend_system/core/configs/theme/app_theme.dart';
import 'package:frontend_system/futures/general/widgets/calendar_widget.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final CalendarController _controller = CalendarController();

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime = DateTime(today.year, today.month, today.day, 9);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Meeting(
        'Conference', startTime, endTime, const Color(0xFF0F8644), false));
    return meetings;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SfCalendar(
              controller: _controller,
              view: CalendarView.month,
              showNavigationArrow: true,
              showDatePickerButton: true,
              allowViewNavigation: false,
              showCurrentTimeIndicator: true,
              initialSelectedDate: DateTime.now(),
              dataSource: MeetingDataSource(_getDataSource()),
              headerHeight: 50,
              headerStyle: CalendarHeaderStyle(
                backgroundColor: AppTheme.lightColorScheme.secondary,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              viewHeaderStyle: ViewHeaderStyle(
                dateTextStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                dayTextStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              monthViewSettings: const MonthViewSettings(
                showAgenda: true,
                showTrailingAndLeadingDates: true,
                appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
                dayFormat: "EEE",
                agendaStyle: AgendaStyle(
                  appointmentTextStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                monthCellStyle: MonthCellStyle(
                  textStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
