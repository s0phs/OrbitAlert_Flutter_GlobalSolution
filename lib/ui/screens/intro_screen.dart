import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:orbitalert/data/fake_data.dart';

class IntroScreen extends StatefulWidget {
  final VoidCallback onFinish;

  const IntroScreen({super.key, required this.onFinish});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();

  int currentPage = 0;

  void nextPage() {
    if (currentPage < IntroPaginas.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      widget.onFinish();
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,

                itemCount: IntroPaginas.length,

                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },

                itemBuilder: (context, index) {
                  final page = IntroPaginas[index];

                  return Padding(
                    padding: const EdgeInsets.all(24),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Lottie.asset(
                          page.image,
                          height: 300,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 40),

                        Text(
                          page.title,
                          style: Theme.of(context).textTheme.headlineMedium,
                          textAlign: TextAlign.center,
                        ),

                        const SizedBox(height: 20),

                        Text(
                          page.description,
                          style: Theme.of(context).textTheme.bodyLarge,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: List.generate(
                IntroPaginas.length,

                (index) => Container(
                  margin: const EdgeInsets.all(4),
                  width: currentPage == index ? 20 : 8,
                  height: 8,

                  decoration: BoxDecoration(
                    color: currentPage == index ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  TextButton(
                    onPressed: currentPage == 0 ? null : previousPage,

                    child: const Text('Voltar'),
                  ),

                  ElevatedButton(
                    onPressed: nextPage,

                    child: Text(
                      currentPage == IntroPaginas.length - 1
                          ? 'Entrar'
                          : 'Avançar',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
