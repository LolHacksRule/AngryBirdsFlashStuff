package com.angrybirds.data.level.object
{
   public class LevelSlingshotObjectModel
   {
       
      
      public var type:String = "";
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var index:int = 0;
      
      public function LevelSlingshotObjectModel()
      {
         super();
      }
      
      public function getAsSerializableObject() : Object
      {
         var object:Object = new Object();
         object.x = this.x;
         object.y = this.y;
         object.angle = Math.round(this.angle / Math.PI * 180);
         object.id = this.type;
         return object;
      }
   }
}
