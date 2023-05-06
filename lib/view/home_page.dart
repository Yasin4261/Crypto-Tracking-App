import 'package:flutter/material.dart';

void main() => runApp(HomePage());


class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          // Dinamik değer ver
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    // iptal butonu
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SearchPage())),
            icon: const Icon(Icons.search),
          )
        ],
        title: Text('Stock Market'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Welcome to Stock Market',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Stock Prices',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16),
                      // Burada stok fiyatlarını listelemek için bir widget kullanabilirsiniz
                      Text('Stock 1: \$100'),
                      Text('Stock 2: \$200'),
                      Text('Stock 3: \$300'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Burada daha fazla işlem yapmak için bir sayfaya yönlendirme kodu ekleyebilirsiniz
                },
                child: Text('More Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
