public class AccountWithEnrollYear {
    public AccountWithEnrollYear(){
        show();
    }
    public void show(){
        	List<Account> acctList=new List<Account>();
			for(Account acctObj:[SELECT name,id from Account
                     			where  enrollmentyear__c 
                     			includes ('2010','2013;2014')]){
                         
                                    acctList.add(acctObj);
                         			system.debug(acctObj);
    
							}
			system.debug(acctList);
			for(Account a:acctList){
    		system.debug(a.name+','+a.Id);
			}
    }
    
    public void showA(){
        	List<Account> acctList=new List<Account>();
			for(Account acctObj:[SELECT name,id 
                                 from Account 
                                 where  billingstate 
                                 NOT IN ('Maharashtra','Kerela') 
                                 ORDER BY billingstate DESC]){
                         
                                    acctList.add(acctObj);
                         			system.debug(acctObj);
    
							}
			system.debug(acctList);
			for(Account a:acctList){
    		system.debug(a.name+','+a.Id);
			}
    }
}