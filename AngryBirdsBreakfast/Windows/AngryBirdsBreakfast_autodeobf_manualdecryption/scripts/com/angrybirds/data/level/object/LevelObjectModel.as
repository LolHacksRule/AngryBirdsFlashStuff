package com.angrybirds.data.level.object
{
   public class LevelObjectModel
   {
       
      
      public var instanceName:String;
      
      public var type:String = "";
      
      public var id:int = 0;
      
      public var x:Number = 0;
      
      public var y:Number = 0;
      
      public var angle:Number = 0;
      
      public var themeTexture:String = "";
      
      public var front:Boolean = false;
      
      public var areaWidth:Number = 0.0;
      
      public var areaHeight:Number = 0.0;
      
      public var gravityFilter:int = -1;
      
      public function LevelObjectModel()
      {
         super();
      }
   }
}
