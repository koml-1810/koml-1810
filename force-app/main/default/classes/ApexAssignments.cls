public class ApexAssignments
{
public static Decimal periOfRect(Decimal length, Decimal breadth)
   {
       Decimal perimeter = 2*(length + breadth);
       return perimeter;
   }
 
public static Decimal simpleInterest(Integer principal, Decimal rateOfInterest, Integer noOfYears)
{
    Decimal si =(principal * rateOfInterest * noOfYears)/100;
    return si;
}
    
public static Decimal grossSalary(Integer basicSalary)
{
    Decimal da = 0.2 * basicSalary;
    Decimal hra = 0.3 * basicSalary;
    Decimal netSalary = basicSalary + da + hra;
    return netSalary;
}
    
 public static void printSeries()
 {
     System.debug('using for loop');
     for(Integer i=1; i<=10; i++)
     {
         System.debug(i);
     }
     
     System.debug('using while loop');
     Integer j=1;
     while(j<=10)
     {
         System.debug(j);
         j++;
     }
     
     System.debug('using do while loop');
     Integer k=1;
     do
     {
      System.debug(k);
         k++;   
     }while(k<=10);
 }
    
public static void isPanlindrome(Integer num)
{
    Integer rem, rev=0, temp;
    temp=num;
    while(num > 0)
    {
        rem = Math.mod(num, 10);
        rev = (rev * 10 ) + rem;
        num = num/10;
    }
    if(temp == rev)
    {
        System.debug('Is Palindrome');
    }
    else
    {
        System.debug('Not Palindrome');
    }
}
    
 public static void printFibbonaci(Integer count)
 {
       
        Integer firstNum = 0, secondNum = 1, nextNum;
        for(Integer i=0;i<count;i++)
        {
             nextNum = firstNum + secondNum;
            System.debug(nextNum);
                firstNum = secondNum;
                secondNum = nextNum;
                
        }
 }

 public static void isPrime(Integer num)
 {
     integer count,i;

    count=0;
    for(i=1;i<=num;i++)
    {
       if(Math.mod(num, i)==0)
       {
            count++;        
       }
    }
    if(count==2)
           System.debug(num +' '+'is a prime number');
    else
      System.debug(num +' '+'is not a prime number');     
 }
    

public static void printPrimeSeries()
 {
     integer count,i;
for(integer j=5;j<=90;j++)
    {
    count=0;
    for(i=1;i<=j;i++)
    {
       if(Math.mod(j, i)==0)
       {
            count++;        
       }
    }
    if(count==2)
           System.debug(j+' ');     
    }
 }
 
 public static void sumOfDigits(Integer num)
 {
    Integer rem = 0;
     while(num !=0)
     {
        rem=rem + Math.mod(num, 10);
        num=num/10;
     }
    
 System.debug(rem);
  
 }
    
public static void printVariables()
{
String greeting = 'Hello World';
System.debug('String variable:'+greeting);

Boolean isRight = true;
System.debug('Boolean variable:'+isRight);

Integer rollNumber = 11008890;
System.debug('Integer variable:'+rollNumber);

Long worldPopulation = 7000000000L;
System.debug('Long variable:'+worldPopulation);

Double lightSpeed = 93000000/186000;
System.debug('Double variable:'+lightSpeed);

Decimal perCent = 20/100;
System.debug('Decimal variable:'+perCent);

Date tDay = Date.newInstance(2020, 5, 18);
System.debug('Date variable:'+tDay);

Time currentTime = Time.newInstance(3, 25, 0, 0);
System.debug('Time variable:'+currentTime);

DateTime currentDateTime = DateTime.newInstance(2020, 5, 18, 3, 25, 0);
System.debug('DateTime variable:'+currentDateTime);

}
    
}