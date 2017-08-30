public with sharing class Calculator
{
    public integer calOperation(String operation, Integer inp1 , Integer inp2)
    {
      integer result;
      
      if(operation.equalsignorecase('SUM'))
     {
       result=inp1+inp2;
     }
     if(operation.equalsignorecase('SUB'))
     {    
            result=inp1-inp2;
     }
    if(operation.equalsignorecase('MUL'))
     {     
             result=inp1*inp2;
     }
   if(operation.equalsignorecase('DIV'))
     {   
              result=inp1/inp2;
     }
     return result;         
  }
}

/*
Calculator obj = new Calculator();
integer sum = obj.calOperation('SUM',2,3);
system.debug(sum);
integer sub = obj.calOperation('SUB',2,3);
system.debug(sub);
integer mul = obj.calOperation('MUL',2,3);
system.debug(mul);
integer div = obj.calOperation('DIV',2,3);
system.debug(div);
*/