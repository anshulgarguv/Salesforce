public class ChildToParent {
    public ChildToParent(){
        showFirst();
    }
    public void showFirst(){
        List<Contact> cntList=[select 
                       Id,
                       FirstName,
                       Contact.Account.Name 
                       from contact 
                       where Contact.Account.industry='media' 
                       and  Contact.Account.active__c='yes'];
		for(Contact c:cntList){
    	system.debug(c.Id+' '+c.FirstName+' '+ c.Account.Name);
		}
    }
    public void showSecond(){
        	List<JuncProEmp__c> lst=new List<JuncProEmp__c>();
			for(JuncProEmp__c jpe:[select id,name__c,Employee__r.name 
                       from JuncProEmp__c 
                       where name__c='John']){
    			lst.add(jpe);
			}
			for(JuncProEmp__c j:lst){
    			system.debug(j);
			}
    }
    
}