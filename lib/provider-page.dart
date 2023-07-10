import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/model/pin-entry.dart';
import 'package:provider_project/widget/provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({super.key});

  @override
  State<ProviderPage> createState() => _ProviderPageState();
}

class _ProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => PinInputProvider(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
          backgroundColor: const Color.fromARGB(255, 3, 32, 101),
        ),
        body: PinInputScreen(),
      ),
    );
  }
}

class PinInputScreen extends StatelessWidget {
  const PinInputScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 3, 32, 101),
            Color.fromARGB(255, 66, 127, 197)
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 40,
                child: TextField(
                  onChanged: (value) {
                    Provider.of<PinInputProvider>(context, listen: false)
                        .setPinCode(value);
                  },
                  decoration: InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  maxLength: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Text("Output: ${Provider.of<PinInputProvider>(context).pinCode}")
        ],
      ),
    );
  }
}

class PinInputProvider extends ChangeNotifier {
  String _pinCode = '';

  String get pinCode => _pinCode;

  void setPinCode(value) {
    _pinCode = value;
    notifyListeners();
  }
}
