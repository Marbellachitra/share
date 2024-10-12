import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  int _elapsedMilliseconds = 0; // Stopwatch time in milliseconds
  bool _isRunning = false; // Stopwatch running state
  Timer? _timer; // Timer object
  List<String> _laps = []; // List to store lap times

  void _startTimer() {
    _isRunning = true;
    _timer = Timer.periodic(Duration(milliseconds: 10), (Timer timer) {
      setState(() {
        _elapsedMilliseconds += 10;
      });
    });
  }

  void _stopTimer() {
    _isRunning = false;
    _timer?.cancel();
  }

  void _resetTimer() {
    _stopTimer();
    setState(() {
      _elapsedMilliseconds = 0;
      _laps.clear(); // Clear laps on reset
    });
  }

  void _addLap() {
    if (_isRunning) {
      setState(() {
        _laps.add(_formatDuration(_elapsedMilliseconds));
      });
    }
  }

  String _formatDuration(int milliseconds) {
    final hours = (milliseconds ~/ 3600000).toString().padLeft(2, '0');
    final minutes = ((milliseconds % 3600000) ~/ 60000).toString().padLeft(2, '0');
    final seconds = ((milliseconds % 60000) ~/ 1000).toString().padLeft(2, '0');
    final milliSeconds = (milliseconds % 1000 ~/ 10).toString().padLeft(2, '0'); // Two digits for milliseconds
    return "$hours:$minutes:$seconds.$milliSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stopwatch"), backgroundColor: Colors.blueGrey),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.lightBlueAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0), // Add margin to the top
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circular Stopwatch Display
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Circular Progress Indicator
                    SizedBox(
                      width: 250,
                      height: 250,
                      child: CircularProgressIndicator(
                        value: _isRunning
                            ? _elapsedMilliseconds / 3600000 // 1 hour max
                            : 0,
                        strokeWidth: 10,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                        backgroundColor: Colors.blue[200],
                      ),
                    ),
                    // Time Display
                    Text(
                      _formatDuration(_elapsedMilliseconds),
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Control Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildControlButton("Start", _isRunning ? null : _startTimer),
                    SizedBox(width: 10),
                    _buildControlButton("Stop", _isRunning ? _stopTimer : null),
                    SizedBox(width: 10),
                    _buildControlButton("Lap", _isRunning ? _addLap : null),
                    SizedBox(width: 10),
                    _buildControlButton("Reset", _resetTimer),
                  ],
                ),
                SizedBox(height: 20),
                // Lap List
                Expanded(
                  child: ListView.builder(
                    itemCount: _laps.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        child: ListTile(
                          title: Text("Lap ${index + 1}: ${_laps[index]}", style: TextStyle(color: Colors.blueGrey)),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to build buttons with styling
  Widget _buildControlButton(String title, VoidCallback? onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blueAccent,
        backgroundColor: Colors.white, // Button color
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text(title, style: TextStyle(fontSize: 16)),
    );
  }
}
