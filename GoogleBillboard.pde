public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public double x;
public boolean y = false;
public void setup()  
{   long startTime = System.nanoTime(); 
    for(int i = 0; i < e.length()-11; i++){
        x = Double.parseDouble(e.substring(i,i+10).replace(".",""));
        y = isPrime(x);
        if(y == true){
          break;
        }
}
    
    System.out.println(y);
    long endTime = System.nanoTime();
    long duration = (endTime - startTime);
    System.out.println("Runtime is: " + duration/1000000.00 + "ms");
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(double dNum)  
{   
  if(dNum < 2){
    return false;
  }
  for(int i = 2; i <= Math.sqrt(dNum); i++){
    if(dNum % i == 0){
      return false;
    }
  }
  System.out.println(dNum);
  return true;
 }
