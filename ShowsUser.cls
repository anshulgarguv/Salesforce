public class ShowsUser {
    public ShowsUser(){
        showUser();
    }
    public void showUser(){
    	List<User> lstUser=[select name,id from user where IsActive=true];
		Map<Id,User> mapUser=new Map<Id,User>();
		for(User u:lstUser){
    		mapUser.put(u.Id,u);
		}
		
		for(Id id: mapUser.keyset()){
   			system.debug(mapUser.get(id));
       		system.debug(id);
   
		}
    }
    
    public void showAccount(){
        List<Account> acctUser=[select name,id from Account];
		Map<String,String> mapAcct=new Map<String,String>();
		for(Account u:acctUser){
    		mapAcct.put(u.Name,u.Id);
		}
		List<String> stringset= mapAcct.values();
		for(String s: mapAcct.keyset()){
   			system.debug(mapAcct.get(s));
            system.debug(s);
        }
    }
    
    public void showAccRecord(){
        List<Account> acctUser=[select name,id from Account];
		Map<Id,Account> mapA=new Map<Id,Account>();
		for(Account u:acctUser){
    		mapA.put(u.Id,u);
		}
		
		for(ID id: mapA.keyset()){
   			system.debug(mapA.get(id));
            system.debug(id);
        }
    }
    
    
}