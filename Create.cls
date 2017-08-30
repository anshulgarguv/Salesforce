public class Create {
	public static void insertNewAccount(String name) {
		Account a = new Account();
		a.Name = name;

		insert a;
	}
 	public static void  insertNewContact(String name) {
		Contact c = new Contact();
		c.LastName = name;

		insert c;
	}
    public static void insertNewLead(String name) {
		Lead l = new Lead();
		l.LastName = name;

		insert l;
	} 
}