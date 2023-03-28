import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({super.key});

  final int resultScore;
  final Function naviHome;

  Result(this.resultScore, this.naviHome,);

  String get resultPhrase{
    if(resultScore >= 20)
      return  'You are awesome and great!';
    else if(resultScore >= 15)
      return 'Pretty likeable!';
    else if(resultScore >= 10)
      return 'You are strange?';
    else
      return 'You are so bad';
    return 'hell0';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36, 
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 60),
          ElevatedButton(onPressed: naviHome, child: Text('Restart Quiz!'))
          
        ],
      ),
    );
  }
}
