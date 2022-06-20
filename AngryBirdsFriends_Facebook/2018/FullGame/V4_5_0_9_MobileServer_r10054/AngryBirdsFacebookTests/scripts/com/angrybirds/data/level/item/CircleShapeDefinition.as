package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import flash.geom.Point;
   
   public class CircleShapeDefinition extends ShapeDefinition
   {
       
      
      private var mRadius:Number;
      
      private var mPivot:Point;
      
      public function CircleShapeDefinition(radius:Number, pivot:Point = null, id:String = null)
      {
         super(radius,radius,id);
         this.mPivot = pivot || new Point(0,0);
         this.mRadius = radius;
      }
      
      public function get radius() : Number
      {
         return this.mRadius;
      }
      
      public function get pivot() : Point
      {
         return this.mPivot;
      }
      
      override public function getB2Shape(scale:Number = 1.0) : b2Shape
      {
         var circle:b2CircleShape = new b2CircleShape();
         circle.SetRadius(this.mRadius * scale);
         return circle;
      }
      
      override public function getDimension() : Number
      {
         var width:Number = 0;
         var height:Number = 0;
         return Math.max(width,width = Number(this.mRadius * 2)) * Math.sqrt(2);
      }
   }
}
