import 'package:flutter/material.dart';

class FilmDescription extends StatelessWidget {
  final int index;

  const FilmDescription({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/$index.webp',
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        _title[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 56,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        _description[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          Positioned(
            top: 20,
            left: 20,
            child: IconButton(onPressed: (){
              Navigator.of(context).pop();
            }, icon: const Icon(Icons.arrow_back_ios_rounded, color: Colors.white,)),
          )
        ],
      ),
    );
  }
}

const _title = [
  'Бой с тенью',
  'Брат',
  'Лёд',
];

const _description = [
  '''
  Артем Колчин - всемирно известный боксер по прозвищу Большая Белая Надежда, претендент на чемпионский титул. Однако серьезная проблема со зрением свела на нет его шансы на победу в решающем бою. Артем ослеп и стал изгоем без былой поддержки и финансирования. Чтобы вернуться в спорт, ему придется за считанные дни найти деньги на дорогостоящую операцию, спасти любимую девушку от наемных убийц и поквитаться с предателями.
  ''',
  '''
  Демобилизовавшись, Данила Багров вернулся в родной городок. Но скучная жизнь российской провинции не устраивала его, и он решился податься в Петербург, где, по слухам, уже несколько лет процветает его старший брат. Данила нашел брата. Но все оказалось не так просто — брат работает наемным убийцей.
  ''',
  '''
  С самого детства Надя верила в чудеса. Она представляла себе, как выходит на лёд под овации публики и танцует свой самый красивый танец. И вот, благодаря вере и упорству, Надя становится знаменитой фигуристкой. Но когда ее мечты о громких победах, красивой жизни и прекрасном принце уже, кажется, готовы исполниться, судьба преподносит ей настоящее испытание.
  '''
];
