package com.angrybirds.data.level.item
{
   import com.rovio.Box2D.Collision.Shapes.b2CircleShape;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import flash.geom.Point;
   
   public class CircleShapeDefinition extends ShapeDefinition
   {
       
      
      private var mRadius:Number;
      
      private var mPivot:Point;
      
      public function CircleShapeDefinition(param1:Number, param2:Point = null)
      {
         super(param1,param1);
         this.mPivot = param2 || new Point(0,0);
         this.mRadius = param1;
      }
      
      public function get radius() : Number
      {
         return this.mRadius;
      }
      
      public function get pivot() : Point
      {
         return this.mPivot;
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc2_:b2CircleShape = new b2CircleShape();
         _loc2_.SetRadius(this.mRadius * param1);
         return _loc2_;
      }
   }
}
