package com.AngryBirds.LevelItemsData
{
   import com.rovio.factory.Log;
   
   public class LevelItemShapes
   {
      
      public static var mShapes:Array;
       
      
      public function LevelItemShapes()
      {
         super();
      }
      
      public static function loadShapes(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         mShapes = new Array();
         for each(_loc2_ in param1.Shape)
         {
            if(_loc2_.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + _loc2_.@id);
            }
            if(_loc2_.attribute("width").length() <= 0)
            {
               Log.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + _loc2_.@id);
            }
            if(_loc2_.attribute("height").length() <= 0)
            {
               Log.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + _loc2_.@id);
            }
            newShape(_loc2_.@id,_loc2_.@shape,_loc2_.@width,_loc2_.@height);
         }
      }
      
      public static function newShape(param1:String, param2:String, param3:Number, param4:Number) : void
      {
         mShapes[mShapes.length] = new LevelItemShape(param1,param2,param3,param4);
      }
      
      public static function getShape(param1:String) : LevelItemShape
      {
         var _loc2_:int = 0;
         while(_loc2_ < mShapes.length)
         {
            if(LevelItemShape(mShapes[_loc2_]).mName.toLowerCase() == param1.toLowerCase())
            {
               return LevelItemShape(mShapes[_loc2_]);
            }
            _loc2_++;
         }
         Log.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + param1);
         return null;
      }
   }
}
