public class SimpleInterest
{
    double interest;
    double amount;
    
    public void calculateInterest(Decimal principal, Decimal rateOfInterest , Decimal duration) 
    {
        interest = principal * duration * rateOfInterest / 100;
        amount = principal + interest;

        System.debug('Interest :' + interest);
        System.debug('Amount : '+ amount);
    }
}