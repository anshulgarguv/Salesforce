public class ShowContact {
    public ShowContact(){
        show();
    }
	public void show(){
		List<Contact> contactList = new List<Contact>(); 

		for(Contact contactObj:[Select id,FirstName, Contact.Account.Name from contact])//Relationship child to parent 
        {contactList.add(contactObj);
    		system.debug(contactObj);
		}
        system.debug(contactList);
    }
}