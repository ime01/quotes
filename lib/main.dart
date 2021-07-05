import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quotes> quotes = [
  //   'Be yourself; everyone else is already taken',
  // 'I have nothing to declare except my genius',
  // 'Stand for something or fall for everything'

    Quotes(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
    Quotes(author: 'Oscar Wilde', text: 'I have nothing to declare except my genius'),
    Quotes(author: 'The Scripts', text: 'Stand for something or fall for everything'),
  ];

  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(

        children: quotes.map((quote) => QuoteCard(
            quote: quote,

            delete: (){
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),

        // children: quotes.map((quote)=> Text('${quote.text} - ${quote.author}')).toList(),
      )
    );
  }
}

