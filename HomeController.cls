public class HomeController {
    public String controllerQuery{get;set;}
    public List<List<SObject>> listOfObj{get;set;} 
    public boolean acctDisplay{get;set;}
     public boolean contDisplay{get;set;}
     public boolean oppDisplay{get;set;}
     public boolean leadDisplay{get;set;}
    public HomeController(){
       acctDisplay=false;
        contDisplay=false;
        oppDisplay=false;
        leadDisplay=false;
        
    }
    public void executeSearch(){
        acctDisplay=false;
        contDisplay=false;
        oppDisplay=false;
        leadDisplay=false;
            String q='%' +controllerQuery +'%';
        
            listOfObj=[Find :q in all fields returning Account(id,name),Contact(id,name),Opportunity(Id,name),Lead(Id,name)];
        //System.assert(false,'>>>>>'+listOfObj);
        if(listOfObj[0].size()>0){
            acctDisplay=true;
            }
        if(listOfObj[1].size()>0){
            contDisplay=true;
            }
        if(listOfObj[2].size()>0){
            oppDisplay=true;
            }
        if(listOfObj[3].size()>0){
            leadDisplay=true;
            }
        }
    	 
}