public class ParentToChild {
    public ParentToChild(){
        showOne();
    }
    public void showOne(){
        	List<Account> lstAcc=[select Name,(select Name,Email from Contacts) From Account where name like '%John%'
                     LIMIT 4];//Relationship parent to child nested query
		
       		for(Account a:lstAcc){
            system.debug(a.ID+'  '+a.name);
            for(Contact c:a.Contacts){
                system.debug(c.name + ' '+ c.ID);
            }
		
		}
        
    }
    public void showTwo(){
        List<Account> lstAcc=[select Name,(select Name,StageName from opportunities) From Account where CountOpp__c>=1
                     ];//Relationship parent to child nested query
		
       		for(Account a:lstAcc){
            system.debug(a.ID+'  '+a.name);
            for(Opportunity c:a.opportunities){
                system.debug(c.name + ' '+ c.ID);
            }
		
		}
    }
    public void showThree(){
        	List<Employee__c> emp=[select name,
                      			 (select name__c,Project_Details__r.name 
                        		from JuncProEmpe__r 
                       			 where name__c='john') 
                       			from employee__c];
			for(Employee__c e:emp){
    		system.debug(e.id + '' + e.name);
        	for(JuncProEmp__c j:e.JuncProEmpe__r){
            system.debug(j);
        		}
		}
    }
    
}