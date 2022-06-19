package org.flexunit.listeners.closer
{
   import flash.system.fscommand;
   
   public class StandAloneFlashPlayerCloser implements ApplicationCloser
   {
       
      
      public function StandAloneFlashPlayerCloser()
      {
         super();
      }
      
      public function close() : void
      {
         fscommand("quit");
      }
   }
}
