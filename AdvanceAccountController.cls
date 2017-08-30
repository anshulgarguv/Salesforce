public class AdvanceAccountController {
    public String controllerQuery{get;set;}
    public static Contact contact { get; set; }
    public List<Account> listOfObj{get;set;} 
    public boolean searchVariable{get;set;}
    public boolean searchDisplay{get;set;}
    public boolean showCont{get;set;}
    public boolean AccountPresent{get;set;}
    public boolean lengthOfQuery{get;set;}
    public Integer listSize{get;set;}
    public String message{get;set;}
    public List<String> alphabets{get;set;}
    public string recId{get;set;}
    public List<Contact> contacts {get;set;}
	public String SearchVar{get;set;}
    public List<Account> acct {get;set;}
    
    public void display(){
        showCont=false;
        searchVariable=false;
        searchDisplay=true;
        lengthOfQuery=false;
        AccountPresent=false;
        if(SearchVar=='ALL'){
            searchVariable=true;
            searchDisplay=false;
        }else{
        	String x=SearchVar + '%';
        	system.debug(x);
        	listOfObj=[Select id,name from account where name like :x];
        	system.debug(listOfObj);
        	listSize=listOfObj.size();
        	if(listSize>0){
            	AccountPresent=true;
        	}
        }
    }
    
    public AdvanceAccountController(){
        alphabets=new List<String>{'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','ALL'};
        searchVariable=true;
        searchDisplay=false;
        showCont=false;
        execute();
    }
    public void clear(){
        searchDisplay=false;
        showCont=false;
    }
    public void executeSearch(){
        searchVariable=false;
        searchDisplay=true;
        lengthOfQuery=false;
        AccountPresent=false;
        showCont=false;
        if(controllerQuery.length()>3){
       			 String q='%' +controllerQuery +'%';
            	listOfObj=[Select name,id from account where name like :q];
        		listSize=listOfObj.size();
        		if(listSize>0){
            			AccountPresent=true;
       			 }
        	}
        else{
            	lengthOfQuery=true;
             	message='Enter more than three words';
        	}
    	}

    public void execute(){
        acct=[select name,phone,billingcity,(select Name,Email from Contacts) from account];
    }
    
   @RemoteAction
    public static void deleteContact(Id contactId) {
		system.debug(contactId);       
        contact = [SELECT Id, Name 
                   FROM Contact WHERE Id =:contactId];
        contact.AccountId=null;
        update contact;
    }
    public  void getcontacts(){
        showCont=true;
        contacts=[select id,FirstName,LastName from Contact where AccountId=:recId];
    }
    
}