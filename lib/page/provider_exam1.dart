import 'package:flutter/material.dart';
import 'package:learning/provider/eligibility_screen_provider.dart';
import 'package:provider/provider.dart';


class ProviderExample1 extends StatelessWidget {

   ProviderExample1({Key? key}) : super(key: key);

  final ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider <EligibilityScreenProvider>(
      create: (context) => EligibilityScreenProvider(),
      child: Builder(
        builder: (context){
          return Scaffold(
            appBar: AppBar(title: const Text("Provider demo"),),
            body: Container(
              padding: const EdgeInsets.all(16),
              child: Form(
                  child: Consumer<EligibilityScreenProvider>(
                      builder: (context,provider,child){
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: provider.isEligible? Colors.green:Colors.redAccent
                              ),
                              height: 50,
                              width: 50,
                            ),

                            const SizedBox(height: 16,),

                            TextFormField(
                              controller: ageController,
                              decoration: const InputDecoration(
                                hintText: "Give your age",
                              ),
                              keyboardType:TextInputType.number,
                            ),
                            const SizedBox(height: 16,),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                child: const Text("Check"),
                                onPressed: (){
                                  final int age = int.parse(ageController.text.trim());
                                  provider.checkEligibility(age);
                                },
                              ),
                            ),
                            const SizedBox(height: 16,),

                            Text(provider.message)
                          ],
                        );
                      }
                  )
              ),
            ),
          );
        },
      ),
    );

  }
}