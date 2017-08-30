@isTest
public class PM5ControllerTest {
    public static testmethod void positiveSearch(){
        
            Account acc=new Account(Name='x');
        List<Contact> listCont=new List<Contact>();
        for(Integer i=0;i<2;i++){
            Contact c=new Contact(AccountId=acc.ID,LastName='Yigrette'+i);
        }
        ApexPages.StandardSetController controller = null; 
     	PM5Controller firstInstance = new PM5Controller(controller);
        System.Test.startTest();
        insert acc;
        insert listCont;
        firstInstance.searchString='Yigr';
        firstInstance.searchAction();
        System.Test.stopTest();
    }
    public static testmethod void negativeSearch(){
        
            Account acc=new Account(Name='x');
        List<Contact> listCont=new List<Contact>();
        for(Integer i=0;i<2;i++){
            Contact c=new Contact(AccountId=acc.ID,LastName='Yigrette'+i);
        }
        ApexPages.StandardSetController controller = null; 
     PM5Controller firstInstance = new PM5Controller(controller);
        System.Test.startTest();
        insert acc;
        insert listCont;
        firstInstance.searchString='Yi';
        firstInstance.searchAction();
        System.Test.stopTest();
    }
    public static testmethod void singleAplhabetSearch(){
        
            Account acc=new Account(Name='x');
        List<Contact> listCont=new List<Contact>();
        for(Integer i=0;i<2;i++){
            Contact c=new Contact(AccountId=acc.ID,LastName='Yigrette'+i);
        }
        ApexPages.StandardSetController controller = null; 
     PM5Controller firstInstance = new PM5Controller(controller);
        System.Test.startTest();
        insert acc;
        insert listCont;
       firstInstance.showRelatedContact();
        firstInstance.paginationDemo();
        System.Test.stopTest();
        
        
    }
    
    public static testmethod void DeleteRemote(){
        
            Account acc=new Account(Name='x');
        	List<Contact> listCont=new List<Contact>();
        	insert acc;
        	for(Integer i=0;i<2;i++){
            Contact c=new Contact(AccountId=acc.ID,LastName='Yigrette'+i);
                listCont.add(c);
        }
        insert listCont;
        System.Test.startTest();
        System.debug(listCont);
        ApexPages.StandardSetController controller = null; 
    	PM5Controller firstInstance = new PM5Controller(controller);
        
        
        PM5Controller.removeContact(listCont[0].Id);
        Test.setCurrentPageReference(new PageReference('Page.myPage'));
		System.currentPageReference().getParameters().put('currentAccountObjId',acc.Id );
        firstInstance.showRelatedContact();
        System.currentPageReference().getParameters().put(firstInstance.character,'Y');
        firstInstance.paginationDemo();
       
		System.assert(false,firstInstance.contactList);     
    
        System.Test.stopTest();
}
}