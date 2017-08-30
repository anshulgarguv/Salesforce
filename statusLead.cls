public class statusLead {
public void change()
    {
        
        List <Lead> s = new List<Lead>([SELECT Name FROM Lead WHERE Status='Open']);
        for(Lead leadset : s)
        {
            system.debug(s);
        }
        
         for(Lead leadset : s)
        {
             leadset.Status='Closed-converted';
            update leadset;            
        }
        
    }
}