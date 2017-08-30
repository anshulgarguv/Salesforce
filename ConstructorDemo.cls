public class ConstructorDemo {

 
 String StudentName;
 Integer StudentId;

 public ConstructorDemo()
 {
     system.debug(StudentName);
     system.debug(StudentId);  
 }
 
 public ConstructorDemo(String name, Integer rollno)
 {
     StudentName = name;
     StudentId = rollno;
     
     system.debug(StudentName);
     system.debug(StudentId);
 }
 

}