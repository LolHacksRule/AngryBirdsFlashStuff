package org.flexunit.runner.notification
{
   public interface IAsyncStartupRunListener extends IAsyncRunListener
   {
       
      
      function get ready() : Boolean;
   }
}
