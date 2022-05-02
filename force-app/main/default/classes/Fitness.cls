public class Fitness 
{
    public static Decimal calculateBMI(Decimal Weight, Decimal height)
    {
        Decimal result=weight /(height * height);
        return result;
    }
    public static Decimal calculatePace(Decimal distance, Decimal minutes)
    {
        Decimal hr=minutes/60;
        Decimal pace = distance/hr;
        return pace;
    }
}