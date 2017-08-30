public class loopFor {
public void Whiles()
    {
        //Fetch 20 records from database
          List<Contact> ContactList = new  List<Contact> ([SELECT Id, Name FROM Contact]);	
Integer i =1;

		while (i< 10) {
	
						System.debug('Id of contacts'+ContactList[i].Id);
							i++;
						}
    }
    
    
    public void ForTrad()
    {
         List<Contact> ContactList = new  List<Contact> ([SELECT Id, Name FROM Contact]);	
Integer i =1;
        for(i = 0;i < ContactList.size();i++)
        {
           System.debug('Name of contact  '+ContactList[i].Name);
							i++; 
        }
        
        
    }
    
    
    
    
    public void ForEach()
    {
         List<Account> s = new List<Account>([SELECT Name FROM Account]);
        for(Account AccountSet : s)
        {
            system.debug(s);
        }
        
        
    }
}