public class pArray {
public static void printArrayElements(integer n)
    {
        integer [] arr=new integer[n];
        for(integer index = 0; index < n; index++)
        {
             arr[index]= index;
             system.debug(arr[index]);
        }
     }
}