import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestLearning extends StatelessWidget {
  const TestLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          
          children: [
            Image.asset('assets/images/cloudy.png'),
        
            Text(
              'Easily track the weather',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
        SizedBox(height: 5,),
            Text(
              'Today’s temperatures and forecasts, all in one place',
              style: TextStyle(
                color: Colors.grey,
                
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 1),
                    blurRadius: 2,
                   
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                            Icon(Icons.code,size: 30,),
                          
                         
                
                        Text(
                          'Today weather',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star,color: Colors.yellow[700],size: 20,),
                        Icon(Icons.star,color: Colors.yellow[700],size: 20,),
                        Icon(Icons.star,color: Colors.yellow[700],size: 20,),
                        Icon(Icons.star,color: Colors.yellow[700],size: 20,),
                        Icon(Icons.star,color: Colors.yellow[700],size: 20,),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('What’s the weather like today?', style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                     Row(  
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Icon(Icons.check_circle,color: Colors.green,),
                      SizedBox(width: 5,),
                      
                          Text(
                        ' Temperatures : 26 '
                      ),
                      
                      ],
                     ),
                     SizedBox(height: 8,),
                     Row(  
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_circle,color: Colors.green,),
                       
                      SizedBox(width: 5,),
                       Text(
                        'State : Partly cloudy '
                      ),
                         
                      
                      ],
                     ),
                     SizedBox(height: 8,),
                     Row(  
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Icon(Icons.check_circle,color: Colors.green,),
                      SizedBox(width: 5,),
                      Text(
                        'The Wind : 12 '
                      ),
                        
                      
                      ],
                     ),
                    ],),
                    SizedBox(height: 13,),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Show weather details',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 15),)),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ) 
    );
  }
}