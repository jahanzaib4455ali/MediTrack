import 'package:flutter/material.dart';

class ReminderSettingsScreen extends StatefulWidget {
  const ReminderSettingsScreen({super.key});

  @override
  State<ReminderSettingsScreen> createState() => _ReminderSettingsScreenState();
}

class _ReminderSettingsScreenState extends State<ReminderSettingsScreen> {
  bool _soundEnabled = true;
  bool _vibrationEnabled = true;
  String _selectedSound = 'Default';
  double _volume = 0.7;
  TimeOfDay _reminderTime = TimeOfDay.now();
  String _selectedDuration = '10 minutes before';

  final List<String> _soundOptions = [
    'Default',
    'Chime',
    'Loud Alarm',
  ];

  final List<String> _durationOptions = [
    '5 minutes before',
    '10 minutes before',
    '30 minutes before',
    '1 hour before',
    '2 hours before',
    'Your choice',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminder Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Sound Toggle
            Card(
              child: SwitchListTile(
                title: const Text('Sound'),
                subtitle: const Text('Enable notification sounds'),
                value: _soundEnabled,
                onChanged: (bool value) {
                  setState(() {
                    _soundEnabled = value;
                  });
                },
                activeColor: const Color(0xFF2196F3),
              ),
            ),
            const SizedBox(height: 8),
            
            // Vibration Toggle
            Card(
              child: SwitchListTile(
                title: const Text('Vibration'),
                subtitle: const Text('Enable vibration alerts'),
                value: _vibrationEnabled,
                onChanged: (bool value) {
                  setState(() {
                    _vibrationEnabled = value;
                  });
                },
                activeColor: const Color(0xFF2196F3),
              ),
            ),
            const SizedBox(height: 16),
            
            // Sound Selection
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sound Selection',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    DropdownButtonFormField<String>(
                      value: _selectedSound,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                      items: _soundOptions.map((String sound) {
                        return DropdownMenuItem<String>(
                          value: sound,
                          child: Text(sound),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _selectedSound = newValue;
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Volume Control
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Volume Control',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        const Icon(Icons.volume_down),
                        Expanded(
                          child: Slider(
                            value: _volume,
                            onChanged: (double value) {
                              setState(() {
                                _volume = value;
                              });
                            },
                            activeColor: const Color(0xFF2196F3),
                          ),
                        ),
                        const Icon(Icons.volume_up),
                      ],
                    ),
                    Text(
                      'Volume: ${(_volume * 100).round()}%',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Reminder Time
            Card(
              child: ListTile(
                leading: const Icon(Icons.access_time),
                title: const Text('Reminder Time'),
                subtitle: Text(_reminderTime.format(context)),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () async {
                  final TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: _reminderTime,
                  );
                  if (picked != null && picked != _reminderTime) {
                    setState(() {
                      _reminderTime = picked;
                    });
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            
            // Snooze/Reminder Duration Options
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reminder Duration',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ..._durationOptions.map((String option) {
                      return RadioListTile<String>(
                        title: Text(option),
                        value: option,
                        groupValue: _selectedDuration,
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              _selectedDuration = value;
                            });
                          }
                        },
                        activeColor: const Color(0xFF2196F3),
                        contentPadding: EdgeInsets.zero,
                      );
                    }),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            
            // Save Settings Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Settings saved successfully!'),
                      backgroundColor: Colors.green,
                    ),
                  );
                },
                child: const Text(
                  'Save Settings',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}