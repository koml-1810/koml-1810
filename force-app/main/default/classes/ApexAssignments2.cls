


public class ApexAssignments2 
{
 //1. print series 1-10 using list
 public static void printSeries()
 {
     List<Integer> numbersList = new List<Integer>();
     for(Integer i=1; i<11; i++)
     {
         numbersList.add(i);
     }
      System.debug(numbersList);
 }
 
    
//2. print prime series 5 to 90 using list
public static void printPrimeSeries()
 {
     List<Integer> numbersList = new List<Integer>();
     for(Integer i=5; i<=90; i++)
     {
         numbersList.add(i);
     }
      System.debug(numbersList);
     integer count,k;
for(integer j=5;j<=numbersList.size();j++)
    {
    count=0;
    for(k=1;k<=j;k++)
    {
       if(Math.mod(j, k)==0)
       {
            count++;        
       }
    }
    if(count==2)
           System.debug(j+' ');     
    }
 }

//3. find sum of digits using list
 public static void sumOfdigits(Integer num) 
 {
     List<Integer> storeDigits = new List<Integer>();
     Integer rem=0;
     while(num != 0)
     {
         rem = Math.mod(num, 10);
         num = num/10;
         storeDigits.add(rem);
     }
      Integer sum =0;
     System.debug(storeDigits);
    for(Integer i=0; i<storeDigits.size();i++)
    {
        sum=sum + storeDigits[i];
    }
     System.debug(sum);
 }
    
    
 //4. to check given number xylem or not
 public static void xylemNo(Integer num)
 {
     Integer temp = num, extremeSum=0, meanSum=0;
    
    while(temp != 0)  
    {
        if(temp == num || temp < 10)  
            //Adds the first and last digits
            extremeSum = extremeSum + Math.mod(temp, 10);  
        else  
            //finds the mean digits and adds  
            meanSum = meanSum + Math.mod(temp, 10);
        temp = temp / 10;  
    }
    if(extremeSum==meanSum)
    {
        System.debug(num+' is a Xylem number');
    }
    else
    {
        System.debug(num+ ' is not xylem number');
    }
 }
    
// 5.to check strings anagram or not
public static void checkAnagram(String s1,String s2)
{
      if(s1.length()==s2.length())
        {
            string[] sarray1 = s1.split('');
            string[] sarray2 = s2.split('');
            sarray1.sort();
            sarray2.sort();
            if(sarray1 == sarray2)
            {
              System.debug('Anagram Strings');
            }
            else
            {
                 System.debug('Not Anagram Strings');
            }
            
        }
        else
        {
            System.debug('Not anagram (having different lengths)');
        }
    }
    
    
 // 6. to display union of list
 public static void unionOfList()
 {
     List<Integer> list1 = new List<Integer>{2,3,4,5,6,7,9};
     System.debug('List 1 is :'+list1);
     List<Integer> list2 = new List<Integer>{1,8};
     System.debug('List 2 is :'+list2);
     list1.addAll(list2);
     System.debug('union of list :'+list1);  
 }
    
// 7. Intersection of list
public static void interSection()
{
    List<Integer> list1 = new List<Integer>{1,2,3,5};
    List<Integer> list2 = new List<Integer>{3,5,6,7};
    List<Integer> list3 = new List<Integer>();
    //list3[0]=list1[0];
    
    for(Integer i=0; i<list1.size();i++)
    {
        for(Integer j=0; j<list2.size(); j++)
        {
        if(list1[i]==list2[j])
        {
            list3.add(list1[i]);
            //continue;
        }
        }
         
     }
   System.debug('Intersection :'+list3);  
}

//8. Reverse a string
public static void revString(String abc)
{
System.debug(abc.reverse());
}
    
//9.Number is phloem or not
public static void phloemNo(Integer num)
 {
     Integer temp = num, extremeSum=0, meanSum=0;
    
    while(temp != 0)  
    {
        if(temp == num || temp < 10)  
            //Adds the first and last digits
            extremeSum = extremeSum + Math.mod(temp, 10);  
        else  
            //finds the mean digits and adds  
            meanSum = meanSum + Math.mod(temp, 10);
        temp = temp / 10;  
    }
    if(extremeSum!=meanSum)
    {
        System.debug(num+' is a phloem number');
    }
    else
    {
        System.debug(num+ ' is not phloem number');
    }
 }

//10. Addition of Array elements
public static void arrAddition()
{
    Integer [] arr1 =new Integer[]{1,2,3,4,5};
    Integer [] arr2 =new Integer[]{1,2,3,4,5};
    List<Integer> reverseArr = new List<Integer>();
for (Integer i = arr2.size()-1; i>= 0; i-- ) 
{
   reverseArr.add(arr2[i]); 
}
//System.debug(reverseArr);
arr2.clear();
arr2.addAll(reverseArr);
System.debug(arr2);
Integer n=arr1.size();
Integer[] sumArray = new Integer[n];

for(Integer j = 0; j < n; j++){
    sumArray[j] = arr1[j] + arr2[j];
}    
System.debug(sumArray);    
    
}
}