import 'package:flutter/material.dart';

class UpdateTimelines extends StatefulWidget {
  const UpdateTimelines({super.key});

  @override
  State<UpdateTimelines> createState() => _UpdateTimelinesState();
}

class _UpdateTimelinesState extends State<UpdateTimelines> {
  TextEditingController dateName = TextEditingController();
  TextEditingController eventName = TextEditingController();
  TextEditingController description = TextEditingController();

  // Constructor Class for selectedEventName
  myFormState() {
    selectedEventName = _eventNames[0];
  }

  final _eventNames = [
    'School Meeting',
    'Exams',
    'Extra-Curricular Activities'
  ];
  String? selectedEventName = '';
  // Future<List> senddata() async {
  //   final response = await http.post('', body: {
  //     'date': dateName.text,
  //     'event Name': eventName.text,
  //     'description': description.text,
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 10, 50),
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).primaryColor,
        ),
        title: const Text(
          'School Events',
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent,
        onPressed: () {},
        label: const Text('Add Event'),
        icon: const Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextField(
              controller: dateName,
              decoration: const InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.calendar_today),
                labelText: 'Date',
              ),
              readOnly: true,
              onTap: () {
                selectDate();
              },
            ),
          ),
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: DropdownButtonFormField(
              items: _eventNames.map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selectedEventName = val as String;
                });
              },
              icon: const Icon(Icons.arrow_drop_down_circle,
                  color: Colors.blueAccent),
              dropdownColor: Colors.blueGrey,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Event Type',
                prefixIcon: Icon(
                  Icons.event,
                  color: Colors.blueAccent,
                ),
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          // const SizedBox(height: 20),
          SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: description,
                decoration: const InputDecoration(
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      // borderSide: const BorderSide(color: Colors.blueGrey),
                      // //borderRadius: BorderRadius.circular(12.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50),
                    labelText: 'Brief Description',
                    prefixIcon: Icon(Icons.note_add)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                //minimumSize: const Size.fromHeight(20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                // insertrecord();
              },
            ),
          ),
          const SizedBox(height: 10),
          Positioned(child: 
          FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.blue,
          child:IconButton(
            icon: const Icon(Icons.add, color:Colors.white),
            onPressed: (){},
            iconSize: 40.0,
            ),
            ),
            ),
        ],

      ),

    );
  }

  Future<void> selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      //enablePastDates: false,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        dateName.text = picked.toString().split(" ")[0];
      });
    }
  }
}
