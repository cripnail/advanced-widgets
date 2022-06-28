// import 'package:flutter/material.dart';
// import 'package:adv_widgets/controllers/forecast_controller.dart';
// import 'package:adv_widgets/utils/forecast_animation_utils.dart';
//
// class TimePickerRow extends StatefulWidget {
//   final List<String> tabItems;
//   final ForecastController forecastController;
//   final Function onTabChange;
//   final int startIndex;
//
//   const TimePickerRow({
//     Key? key,
//     required this.forecastController,
//     required this.tabItems,
//     required this.onTabChange,
//     required this.startIndex,
//   }) : super(key: key);
//
//   @override
//   TimePickerRowState createState() => TimePickerRowState();
// }
//
// class TimePickerRowState extends State<TimePickerRow> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     _tabController = TabController(
//       length: AnimationUtil.hours.length,
//       vsync: this,
//       initialIndex: widget.startIndex,
//     );
//     _tabController.addListener(handleTabChange);
//     super.initState();
//   }
//
//   void handleTabChange() {
//     if (_tabController.indexIsChanging) return;
//     widget.onTabChange(_tabController.index);
//   }
//
//   @override
//   void didUpdateWidget(TimePickerRow oldWidget) {
//     _tabController.animateTo(widget.startIndex);
//     super.didUpdateWidget(oldWidget);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TabBar(
//       labelColor: Colors.black,
//       unselectedLabelColor: Colors.black38,
//       unselectedLabelStyle: Theme.of(context).textTheme.caption?.copyWith(fontSize: 10.0),
//       labelStyle: Theme.of(context).textTheme.caption?.copyWith(fontSize: 12.0),
//       indicatorColor: Colors.transparent,
//       labelPadding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 8.0),
//       controller: _tabController,
//       tabs: widget.tabItems.map((t) => Text(t)).toList(),
//       isScrollable: true,
//     );
//   }
// }
