import 'package:apdcl_meter_registry_system/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
   //"_"-->Underscore makes it private
class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changedButton=false;
  final _formKey=GlobalKey<FormState>();
  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate()){
    setState(() {
        changedButton=true;
    });
    await Future.delayed(Duration(seconds:1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
        
    setState(() {
        changedButton=false;
    });
    }
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

        backgroundColor: Color.fromARGB(255, 219, 241, 246),
        
        
        appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 243, 118, 35),
         title:Text("Login") 
        ),
       
        body:Form(
          key: _formKey,

          child: Column(
               
            children: [
              
                      
              Image.asset(
                
                "assets/images/APDCL.png",
                
                color: const Color.fromRGBO(255, 255, 255, 0.7),
                colorBlendMode: BlendMode.modulate,
                fit: BoxFit.contain,
                
              ),
        
              SizedBox(
                height: 36,
              ),
        
              Text("Welcome $name",style:TextStyle(
                  fontSize:25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 141, 175),
                )),
        
        
                SizedBox(
                height: 10,
              ),
        
        
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 35),
                child: Column(
                  children: [
                    TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                    
                  
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Username cannot be empty";
                    }
                    return null;
                  },
                  
                  onChanged: (value){
                    name=value;
                    
                    //setState--->calls the build method once again(i.e UI is created again)
                    setState(() {});
        
                  }
                ),
                
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Password cannot be empty";
                    }
                    else if(value.length<6){
                      return "Password should be of atleast 6 characters";
                    }
                    return null;
                  },
                ),
        
                SizedBox(
                height: 40,
                ),
        
        
                Material(
                  color: Color.fromARGB(255, 243, 118, 35),
                  borderRadius: BorderRadius.circular(changedButton?50:8),
                  child: InkWell(
                    splashColor: Color.fromARGB(255, 131, 252, 1),
                    onTap: ()=>moveToHome(context),
                      
                    
                    child: AnimatedContainer(
                      duration: Duration(seconds:1),
                      height: 50,
                      width: changedButton?50:130,
                      
                      alignment: Alignment.center,
                      child: changedButton?Icon(
                        Icons.done,
                        color:Colors.white,
                      )
                      :Text("Login",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          
                        ),
                      ),
                      
                      /* decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 118, 35),
                        borderRadius: BorderRadius.circular(changedButton?50:8),
                      ), */
                    ),
                  ),
                ),
        
                SizedBox(
                  height: 20,
                ),
        
                
        
        
                
        
               /*  ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  }, 
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(130, 40)),
                )  */
              ],
             ),
            )
              
              
            ],
          ),
        ),

        drawer: Drawer(),


     /*  child: Container(
        
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/APDCL.png"),
            fit: BoxFit.fill,
          )
         ),
        
      ), */

    );
  
      
  
    
  }
}