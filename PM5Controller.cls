public class PM5Controller {

public String searchString{get;set;}
    public List<Account> accountList {get;set;}
    //public List<Account> relatedContactList {get;set;}
    public List<String> alphabets {get;set;}
    public List<Contact> contactList {get;set;}
    public Id accountId {get;set;}
    public String character{get;set;}
    
    //Constructor to initialize alphabets in List
    public PM5Controller(ApexPages.StandardSetController controller) {
        alphabets = new List<String>{'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
    }

    //Method to query on Account and search the String
    public void searchAction(){
       
        if(searchString.length() >= 3){
            String searchName = '%' + searchString + '%';
            accountList = [SELECT Id,Name,(SELECT Id,Name FROM Contacts) 
                           FROM Account
                           WHERE Name like :searchName];
                           
            if(accountList.size() == 0 ){
                accountList = NULL;
            }
        }
        else{
            ApexPages.addmessage(new ApexPages.message(ApexPages.severity.WARNING,'Input at least 3 characters to perform search'));
            accountList = NULL;
        }
        
        
        system.debug(accountList);
    }
    
    //Method to clear the search records
    public void clearList(){
        accountList = NULL;
        searchString = '';
        accountId = NULL;
    }
    
    //Method to show the related contact list
    public void showRelatedContact(){
        accountId = Apexpages.currentPage().getParameters().get('currentAccountObjId');
        
    }
    
    //Method for paging on related Contacts on Account
    public void paginationDemo(){
        	
        character = Apexpages.currentPage().getParameters().get('character');
        character = character + '%';
        
        contactList = [SELECT Id,Name
                       FROM Contact
                       WHERE Name like :character AND Account.Id =: accountId];
        system.debug(contactList);
        
        if(contactList.size() == 0){
            //contactList = NULL;
        }
         
    }
    
    //Method to remove related contact
    @RemoteAction    
    public static void removeContact(Id contactRecordId){
        
        Contact cObj  = [SELECT AccountId 
                         FROM Contact 
                         WHERE Id = :contactRecordId];
        cObj.AccountId = NULL;
        
        update cObj;
        system.debug(contactRecordId);
        //paginationDemo();
    }
    
    
}