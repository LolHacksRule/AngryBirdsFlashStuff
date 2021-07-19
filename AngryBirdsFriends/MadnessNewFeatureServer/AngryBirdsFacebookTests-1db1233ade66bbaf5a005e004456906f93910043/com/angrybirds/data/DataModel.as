package com.angrybirds.data
{
   import com.angrybirds.data.user.UserProgress;
   import flash.events.EventDispatcher;
   
   public class DataModel extends EventDispatcher
   {
       
      
      public var userProgress:UserProgress;
      
      public function DataModel()
      {
         super();
      }
   }
}
