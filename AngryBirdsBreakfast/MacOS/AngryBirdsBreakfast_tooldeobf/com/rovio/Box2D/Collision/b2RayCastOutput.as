package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2RayCastOutput
   {
       
      
      public var normal:b2Vec2;
      
      public var fraction:Number;
      
      public function b2RayCastOutput()
      {
         this.normal = new b2Vec2();
         super();
      }
   }
}
