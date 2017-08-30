public class AssociatedContact {
	public AssociatedContact(){
        show();
    }
	public void show(){
		 
			List<Account> lstAcc=[select Name,(select Name,Email from Contacts) From Account
                     LIMIT 4];//Relationship parent to child nested query
		
       		for(Account a:lstAcc){
            system.debug(a.ID+'  '+a.name);
            for(Contact c:a.Contacts){
                system.debug(c.name + ' '+ c.ID);
            }
		
		}
        
    }
}