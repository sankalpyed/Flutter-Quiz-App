// import 'package:flutter/material.dart';

// class Answer extends StatelessWidget {
//   final VoidCallback selectHandler;
//   final String answerText;
//   Answer(this.selectHandler, this.answerText);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: ElevatedButton(
//         child: Text(answerText),
//         onPressed: selectHandler,
//         style: ElevatedButton.styleFrom(
//           shadowColor: Colors.black,
//           backgroundColor: Colors.blue,
//           onPrimary: Colors.white,
//         ),

//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          child: Text(answerText),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white
          ),
        ),
    );
  }
}
