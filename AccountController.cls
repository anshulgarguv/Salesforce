public class AccountController {
    public List<Account> acct {get;set;}
    public string recId{get;set;}
    public boolean x{get;set;}
    public boolean displayOpp{get;set;}
    public List<Contact> contacts {get;set;}
    public List<Opportunity> opp {get;set;}
    public AccountController(){
        x=false;
        displayOpp=false;
        execute();
    }
    public void execute(){
        acct=[select name,phone,billingcity,(select Name,Email from Contacts) from account];
        
    }
    public  void getcontacts(){
        
        contacts=[select id,FirstName,LastName from Contact where AccountId=:recId];
        opp=[select id,Name from Opportunity where AccountId=:recId];
        x=false;
        displayOpp=false;
        if(contacts.size()>0){
            x=true;
        }
        if(opp.size()>0){
            displayOpp=true;
        }
        
        
    }
}