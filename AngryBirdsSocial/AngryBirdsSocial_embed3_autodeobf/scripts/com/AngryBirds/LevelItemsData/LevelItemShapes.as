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
      
      public static function loadShapes(shapes:XMLList) : void
      {
         var shape:XML = null;
         mShapes = new Array();
         for each(shape in shapes.Shape)
         {
            if(shape.attribute("shape").length() <= 0)
            {
               Log.log("WARNING, LevelItemShapes constructor, bodyType is missing for shape: " + shape.@id);
            }
            if(shape.attribute("width").length() <= 0)
            {
               Log.log("WARNING, LevelItemShapes constructor, density is missing for shape: " + shape.@id);
            }
            if(shape.attribute("height").length() <= 0)
            {
               Log.log("WARNING, LevelItemShapes constructor, friction is missing for shape: " + shape.@id);
            }
            newShape(shape.@id,shape.@shape,shape.@width,shape.@height);
         }
      }
      
      public static function newShape(aName:String, aShape:String, aWidth:Number, aHeight:Number) : void
      {
         mShapes[mShapes.length] = new LevelItemShape(aName,aShape,aWidth,aHeight);
      }
      
      public static function getShape(name:String) : LevelItemShape
      {
         for(var i:int = 0; i < mShapes.length; i++)
         {
            if(LevelItemShape(mShapes[i]).mName.toLowerCase() == name.toLowerCase())
            {
               return LevelItemShape(mShapes[i]);
            }
         }
         Log.log("WARNING: LevelItemShapes -> getShape request has no return value, this shape does not exist: " + name);
         return null;
      }
   }
}
