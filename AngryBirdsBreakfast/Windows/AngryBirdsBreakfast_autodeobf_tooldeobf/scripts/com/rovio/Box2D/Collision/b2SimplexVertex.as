package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   class b2SimplexVertex
   {
       
      
      public var wA:b2Vec2;
      
      public var wB:b2Vec2;
      
      public var w:b2Vec2;
      
      public var a:Number;
      
      public var indexA:int;
      
      public var indexB:int;
      
      function b2SimplexVertex()
      {
         super();
      }
      
      public function Set(param1:b2SimplexVertex) : void
      {
         this.wA.SetV(param1.wA);
         this.wB.SetV(param1.wB);
         this.w.SetV(param1.w);
         this.a = param1.a;
         this.indexA = param1.indexA;
         this.indexB = param1.indexB;
      }
   }
}
