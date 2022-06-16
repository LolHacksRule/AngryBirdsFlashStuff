package org.flexunit.runner.notification
{
   import org.flexunit.runner.IDescription;
   
   public interface ITemporalRunListener extends IRunListener
   {
       
      
      function testTimed(param1:IDescription, param2:Number) : void;
   }
}
