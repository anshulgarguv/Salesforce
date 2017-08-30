public class OperationQ3 {
integer  min;
    integer  max;
    
    public  void sortAscending(List<Integer> arr)
    {
        System.debug('Array Elements in Ascending Order : ');
        arr.sort();
        integer lenghtOfArray = arr.size(); 
        
        min=arr[0];
        for(integer index = 0; index < lenghtOfArray ; index++)
        {
             system.debug(arr[index]);
        }
    }
    
    public  void sortDescending(integer [] arr)
    {
        System.debug('Array Elements in Ascending Order : ');
        integer lenghtOfArray = arr.size();
        arr.sort();
        max = arr[lenghtOfArray-1];
        for(integer index = lenghtOfArray-1; index >=0 ; index--)
        {
             system.debug(arr[index]);
        }
    }
    
    public  void printMaxElement()
    {
       system.debug('Max Element of Array : '+max);
    }   
   
    public  void printMinElement()
    {
       system.debug('Min Element of Array : '+min);
    }    
    

     public  void printOccurance(integer [] arr)
     {
     Map<Integer, Integer> m = new Map<Integer, Integer>();
        
     for (integer i = 0; i < arr.size(); i++) 
     {
            integer key = arr[i];
            if (m.containsKey(key)) 
            {
                integer occurrence = m.get(key);
                occurrence++;
                m.put(key, occurrence);
            } 
            else 
            {
                m.put(key, 1);
            }
        }

        Iterator<integer> i = m.keySet().iterator();
        while (i.hasNext()) 
        {
            integer key = (Integer)i.next();
            integer occurrence = m.get(key);
            System.debug(key + ' : ' + occurrence);
        }
       } 
}
/*List<Integer> inputArray = new List<Integer>();
inputArray.add(5);
inputArray.add(4);
inputArray.add(1);
inputArray.add(3);
inputArray.add(3);

OperationQ3 obj=new OperationQ3();
obj.sortAscending(inputArray);
obj.sortDescending(inputArray);
obj.printMaxElement();
obj.printMinElement();
obj.printOccurance(inputArray);*/