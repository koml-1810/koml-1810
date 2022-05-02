public class Helloworld
{
/*public void printGreeting(String msg)
{
System.debug(msg);
}*/

public String getDay(Integer dayNumber)
{
String day='';
switch on dayNumber {
when 1 
{
day = 'Monday';
}
when 2 
{
day = 'Tuesday';
}
when 3 
{
day = 'Wednesday';
}
when 4
{
day = 'Thursday';
}
when 5 
{
day = 'Friday';
}
when 6
{
day = 'Saturday';
}
when 7 
{
day = 'Sunday';
}
When else
{
System.debug('Invalid Entry');
}

}
return day;
}
public String getDay(String dayAbbrevation)
{

String day='';
switch on dayAbbrevation {
when 'Mon' 
{
day = 'Monday';
}
when 'Tue'
{
day = 'Tuesday';
}
when 'Wed' 
{
day = 'Wednesday';
}
when 'Thu'
{
day = 'Thursday';
}
when 'Fri'
{
day = 'Friday';
}
when 'Sat'
{
day = 'Saturday';
}
when 'Sun' 
{
day = 'Sunday';
}
When else
{
System.debug('Invalid Entry');
}

}
return day;


}

}