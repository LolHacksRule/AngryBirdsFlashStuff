package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2OBB
   {
       
      
      public var R:b2Mat22;
      
      public var center:b2Vec2;
      
      public var extents:b2Vec2;
      
      public function b2OBB()
      {
         this.R = new b2Mat22();
         this.center = new b2Vec2();
         this.extents = new b2Vec2();
         super();
      }
   }
}
