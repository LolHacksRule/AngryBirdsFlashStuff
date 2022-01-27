package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var velocity:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var separation:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         this.position = new b2Vec2();
         this.velocity = new b2Vec2();
         this.normal = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
   }
}
