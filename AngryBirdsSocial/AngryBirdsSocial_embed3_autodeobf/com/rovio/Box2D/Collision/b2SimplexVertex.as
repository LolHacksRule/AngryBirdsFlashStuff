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
      
      public function Set(other:b2SimplexVertex) : void
      {
         this.wA.SetV(other.wA);
         this.wB.SetV(other.wB);
         this.w.SetV(other.w);
         this.a = other.a;
         this.indexA = other.indexA;
         this.indexB = other.indexB;
      }
   }
}
