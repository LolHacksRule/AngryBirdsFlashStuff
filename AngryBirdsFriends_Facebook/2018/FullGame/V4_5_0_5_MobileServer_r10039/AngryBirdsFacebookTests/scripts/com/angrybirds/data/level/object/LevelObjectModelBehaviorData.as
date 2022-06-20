package com.angrybirds.data.level.object
{
   public class LevelObjectModelBehaviorData
   {
       
      
      private var mType:String;
      
      private var mName:String;
      
      private var mEvent:String;
      
      public function LevelObjectModelBehaviorData(type:String, name:String, eventName:String)
      {
         super();
         this.mType = type;
         this.mName = name;
         this.mEvent = eventName;
      }
      
      public function get type() : String
      {
         return this.mType;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get event() : String
      {
         return this.mEvent;
      }
   }
}
