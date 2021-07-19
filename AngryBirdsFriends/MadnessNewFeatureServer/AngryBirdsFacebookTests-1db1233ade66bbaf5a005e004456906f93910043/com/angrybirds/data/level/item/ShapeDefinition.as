package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   
   public class ShapeDefinition
   {
       
      
      protected var mWidth:Number;
      
      protected var mHeight:Number;
      
      protected var mId:String;
      
      public function ShapeDefinition(width:Number, height:Number, id:String = null)
      {
         super();
         if(Object(this).constructor == ShapeDefinition)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(width) || isNaN(height) || width <= 0 || height <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.mWidth = width;
         this.mHeight = height;
         this.mId = id;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
      
      public function getWidth() : Number
      {
         return this.mWidth;
      }
      
      public function getHeight() : Number
      {
         return this.mHeight;
      }
      
      public function getB2Shape(scale:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
      
      public function getDimension() : Number
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
