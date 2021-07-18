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
      
      public function LevelItemShape(aName:String, aShape:String, aWidth:Number, aHeight:Number)
      {
         super();
         this.mName = aName;
         this.mShape = this.getBodyShapeFromString(aShape);
         this.mWidth = aWidth;
         this.mHeight = aHeight;
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
      
      private function getBodyShapeFromString(type:String) : int
      {
         if(type == "Rectangle")
         {
            return SHAPE_TYPE_RECT;
         }
         if(type == "Circle")
         {
            return SHAPE_TYPE_CIRCLE;
         }
         if(type == "Image_Rectangle")
         {
            return SHAPE_TYPE_IMAGE_RECT;
         }
         if(type == "Image_Polygon")
         {
            return SHAPE_TYPE_IMAGE_POLYGON;
         }
         if(type == "Image_Circle")
         {
            return SHAPE_TYPE_IMAGE_CIRCLE;
         }
         Log.log("WARNING LevelItemShape has invalid Shape Type, name = " + this.mName + " invalid name = " + type);
         return SHAPE_TYPE_RECT;
      }
   }
}
