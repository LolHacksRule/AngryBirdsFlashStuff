package com.angrybirds.data.level.object
{
   import com.rovio.utils.HashMap;
   
   public class LevelObjectTriggerEvents
   {
       
      
      public var objectEvents:HashMap;
      
      public function LevelObjectTriggerEvents()
      {
         this.objectEvents = new HashMap();
         super();
      }
      
      public function initialize(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               this.objectEvents[_loc2_] = param1[_loc2_][0];
            }
         }
      }
   }
}
