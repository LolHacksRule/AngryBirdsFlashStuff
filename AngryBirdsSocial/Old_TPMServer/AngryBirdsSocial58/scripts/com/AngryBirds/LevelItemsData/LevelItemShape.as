package com.AngryBirds.LevelItemsData
{
   import com.rovio.factory.Log;
   
   public class LevelItemShape
   {
      
      public static const SHAPE_TYPE_IMAGE_RECT:int = 0;
      
      public static const SHAPE_TYPE_IMAGE_POLYGON:int = 1;
      
      public static const SHAPE_TYPE_IMAGE_CIRCLE:int = 2;
      
      public static const SHAPE_TYPE_RECT:int = 3;
      
      public static const SHAPE_TYPE_CIRCLE:int = 4;
       
      
      public var mName:String;
      
      public var mShape:int;
      
      public var mWidth:Number;
      
      public var mHeight:Number;
      
      public function LevelItemShape(param1:String, param2:String, param3:Number, param4:Number)
      {
         super();
         this.mName = param1;
         this.mShape = this.getBodyShapeFromString(param2);
         this.mWidth = param3;
         this.mHeight = param4;
      }
      
      public function getShape() : int
      {
         return this.mShape;
      }
      
      public function getWidth() : int
      {
         return this.mWidth;
      }
      
      public function getHeight() : int
      {
         return this.mHeight;
      }
      
      private function getBodyShapeFromString(param1:String) : int
      {
         if(param1 == "Rectangle")
         {
            return SHAPE_TYPE_RECT;
         }
         if(param1 == "Circle")
         {
            return SHAPE_TYPE_CIRCLE;
         }
         if(param1 == "Image_Rectangle")
         {
            return SHAPE_TYPE_IMAGE_RECT;
         }
         if(param1 == "Image_Polygon")
         {
            return SHAPE_TYPE_IMAGE_POLYGON;
         }
         if(param1 == "Image_Circle")
         {
            return SHAPE_TYPE_IMAGE_CIRCLE;
         }
         Log.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + param1);
         return SHAPE_TYPE_RECT;
      }
   }
}
