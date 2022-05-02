@isTest
public class Covid19Test {
    
    @isTest
    public static void getTotalCountTest()
    {
        Covid19 first = new Covid19(10);
        Integer actualCount = first.getTreated();
        System.assertEquals(10, actualCount,'This count does not match');
        
        Covid19 second = new Covid19(120);
        actualCount = second.getTreated();
        System.assertEquals(120, actualCount,'This count does not match');
        
        System.assertEquals(130, Covid19.recoveredInCountry,'This count does not match');
        
        first.getTotalCount();
        actualCount = first.getTreated();
        System.assert(actualCount == 11,'This count does not match');
        System.assert(Covid19.recoveredInCountry == 131,'This count does not match');
        
   }
    
    @isTest
    public static void getTotalCountTestNegative()
    {
        Covid19 first = new Covid19(-10);
        Integer actualCount = first.getTreated();
        System.assertEquals(0, actualCount,'This count does not match');
    }
}