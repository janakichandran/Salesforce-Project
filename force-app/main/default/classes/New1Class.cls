public class New1Class 
{
	public static void myMethod()
    {
        System.debug('Hello EveryOne');
        // arithmetic operators example
        Integer a=50 , b=35;
        Integer Difference = a-b;
        System.debug(Difference);
        Double x=3.5 , Y=4.7;
        Double Prod = x*y;
        System.debug(Prod);
        System.debug(x+a);
        // if example
        Integer c=75;
        If(a<c)
        {
         System.debug(a-c);
        }
        Else
        {
        System.debug(c-a);
        }
        // while example
        Integer d=100;
        Integer sum=0;
        while(a<=d)
        {
         Integer Sum1 = sum+a;
         a++;
         System.debug(Sum1);
        }
        // do while example
        do
        {
          Integer Sum2 =d-b;
          b++;
          System.debug(Sum2);        
        }
        while(b>a);
        // for example
        for(Integer i=0;i<a;i++)
         {
          System.debug('The number lies between 0 & 50');
         }
    }
}