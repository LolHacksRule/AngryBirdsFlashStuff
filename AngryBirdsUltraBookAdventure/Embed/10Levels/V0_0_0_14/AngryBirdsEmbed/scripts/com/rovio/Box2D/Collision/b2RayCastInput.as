package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2RayCastInput
   {
       
      
      public var p1:b2Vec2;
      
      public var p2:b2Vec2;
      
      public var maxFraction:Number;
      
      public function b2RayCastInput(param1:b2Vec2 = null, param2:b2Vec2 = null, param3:Number = 1)
      {
         this.p1 = new b2Vec2();
         this.p2 = new b2Vec2();
         super();
         if(param1)
         {
            this.p1.SetV(param1);
         }
         if(param2)
         {
            this.p2.SetV(param2);
         }
         this.maxFraction = param3;
      }
   }
}
