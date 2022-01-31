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
      
      public function initialize(data:Object) : void
      {
         var objectInstanceName:* = null;
         if(data)
         {
            for(objectInstanceName in data)
            {
               this.objectEvents[objectInstanceName] = data[objectInstanceName][0];
            }
         }
      }
   }
}
