package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var maxFraction:Number;
      
      public function b2RayCastInput(p1:b2Vec2 = null, p2:b2Vec2 = null, maxFraction:Number = 1)
      {
         this.p1 = new b2Vec2();
         this.p2 = new b2Vec2();
         super();
         if(p1)
         {
            this.p1.SetV(p1);
         }
         if(p2)
         {
            this.p2.SetV(p2);
         }
         this.maxFraction = maxFraction;
      }
   }
}
