public class Covid19
{
public Integer recoveredInArea = 0;
public static Integer recoveredInCountry = 0;

public Covid19(Integer recoveredInArea)
{ 
    if(recoveredInArea < 0)
    {
        this.recoveredInArea = 0;
    }
    else
    {
    this.recoveredInArea = recoveredInArea;
    recoveredInCountry += recoveredInArea ;
    }
}

public void getTotalCount()
{
recoveredInArea++;
recoveredInCountry++;
}

public Integer getTreated()
{
 return recoveredInArea;      
}
    
//If recoveredInCountry is made static we can use it in static method
/*public static void getPatientData()
{
System.debug('Recovered Patient : '+recoveredInCountry );
}*/



}