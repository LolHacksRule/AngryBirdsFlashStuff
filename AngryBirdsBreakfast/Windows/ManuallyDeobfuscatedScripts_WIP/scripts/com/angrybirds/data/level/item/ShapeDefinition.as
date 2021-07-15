package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   
   public class ShapeDefinition
   {
       
      
      protected var mWidth:Number;
      
      protected var mHeight:Number;
      
      public function ShapeDefinition(param1:Number, param2:Number)
      {
         super();
         if(Object(this).constructor == ShapeDefinition)
         {
            throw new Error("Can\'t instantiate abstract class.");
         }
         if(isNaN(param1) || isNaN(param2) || param1 <= 0 || param2 <= 0)
         {
            throw new Error("Shape size invalid, width and height must be valid numbers.");
         }
         this.mWidth = param1;
         this.mHeight = param2;
      }
      
      public function getWidth() : Number
      {
         return this.mWidth;
      }
      
      public function getHeight() : Number
      {
         return this.mHeight;
      }
      
      public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         throw new Error("Abstract function not implemented.");
      }
   }
}
