public class SOSL {
    public SOSL(){
        show();
    }
    public void show(){
        List<List<SObject>> searchList = [FIND 'test' IN ALL FIELDS 
                                          RETURNING Account (Id, Name), Contact(Id,Name), User(Id,Name), Lead(Id,Name)];
        Account [] acct=(List<Account>)searchList[0];
        Contact [] cnt=(List<Contact>)searchList[1];
		User [] usr=(List<User>)searchList[2];
		Lead [] ld=(List<Lead>)searchList[3];
		for(Lead l:ld){
   				 system.debug(l.Name + ' ' +l.Id);
		}
    }
}