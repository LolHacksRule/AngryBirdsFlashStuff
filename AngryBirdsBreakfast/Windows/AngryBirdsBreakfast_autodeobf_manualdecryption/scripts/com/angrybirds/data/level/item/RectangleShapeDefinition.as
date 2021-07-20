package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   
   public class RectangleShapeDefinition extends ShapeDefinition
   {
       
      
      public function RectangleShapeDefinition(param1:Number, param2:Number)
      {
         super(param1,param2);
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.AsBox(getWidth() / 2 * param1,getHeight() / 2 * param1);
      }
   }
}
