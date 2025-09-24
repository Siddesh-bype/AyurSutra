import 'package:flutter/material.dart';
import 'package:myapp/models/therapy.dart';
import 'package:myapp/services/therapy_service.dart';
import 'package:myapp/widgets/therapy_card.dart';

class TherapiesList extends StatefulWidget {
  final String searchQuery;

  const TherapiesList({super.key, required this.searchQuery});

  @override
  State<TherapiesList> createState() => _TherapiesListState();
}

class _TherapiesListState extends State<TherapiesList> {
  late Future<List<Therapy>> _therapiesFuture;
  List<Therapy> _filteredTherapies = [];

  @override
  void initState() {
    super.initState();
    _therapiesFuture = TherapyService().getTherapies();
  }

  @override
  void didUpdateWidget(TherapiesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.searchQuery != oldWidget.searchQuery) {
      _therapiesFuture.then((therapies) {
        setState(() {
          _filteredTherapies = therapies
              .where((therapy) =>
                  therapy.title.toLowerCase().contains(widget.searchQuery.toLowerCase()) ||
                  therapy.sanskrit.toLowerCase().contains(widget.searchQuery.toLowerCase()))
              .toList();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Therapy>>(
      future: _therapiesFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          final therapies = widget.searchQuery.isEmpty ? snapshot.data! : _filteredTherapies;
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: therapies.length,
            itemBuilder: (context, index) {
              final therapy = therapies[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: TherapyCard(therapy: therapy),
              );
            },
          );
        }
      },
    );
  }
}
