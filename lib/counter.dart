import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:team_score_counter/Model/score_model.dart';

class Counter extends StatelessWidget {
  final String teamName;

  Counter({Key key, this.teamName});

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScoreModel>(
      builder: (context, child, model) {
        // ignore: deprecated_member_use
        var display12 = Theme.of(context).textTheme.display2;
        return Container(
          margin: EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$teamName:',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              Text(
                model.score.toString(),
                style: display12,
              ),
              Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: model.increment3Score,
                    child: Text('+ 1 POINTS'),
                    color: Colors.lightBlueAccent,
                    splashColor: Colors.green,
                  ),
                  FlatButton(
                    onPressed: model.increment2Score,
                    child: Text('+ 1 POINTS'),
                    color: Colors.deepOrangeAccent,
                    splashColor: Colors.redAccent,
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
