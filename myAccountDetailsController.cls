public class myAccountDetailsController {
 public Account account{get;set;}
    public myAccountDetailsController(){
        Id id=apexpages.currentPage().getParameters().get('ID');
        account=[select Id,name from Account where Id=:id];
    }
}