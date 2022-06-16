package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   
   public class RectangleShapeDefinition extends ShapeDefinition
   {
       
      
      public function RectangleShapeDefinition(width:Number, height:Number, id:String = null)
      {
         super(width,height,id);
      }
      
      override public function getB2Shape(scale:Number = 1.0) : b2Shape
      {
         return b2PolygonShape.AsBox(getWidth() / 2 * scale,getHeight() / 2 * scale);
      }
      
      override public function getDimension() : Number
      {
         return Math.max(getWidth(),getHeight()) * Math.sqrt(2);
      }
   }
}
