package com.angrybirds.data.level.object
{
   public class LevelObjectComplexModel extends LevelObjectModel
   {
       
      
      public var onDestroyedEvents:LevelObjectTriggerEvents;
      
      public function LevelObjectComplexModel()
      {
         this.onDestroyedEvents = new LevelObjectTriggerEvents();
         super();
      }
   }
}
