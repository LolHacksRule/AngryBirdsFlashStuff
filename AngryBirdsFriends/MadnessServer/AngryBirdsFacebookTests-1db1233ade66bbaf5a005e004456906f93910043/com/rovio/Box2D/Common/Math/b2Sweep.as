package com.rovio.Box2D.Common.Math
{
   public class b2Sweep
   {
       
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public var a0:Number;
      
      public var a:Number;
      
      public var t0:Number;
      
      public function b2Sweep()
      {
         this.localCenter = new b2Vec2();
         this.c0 = new b2Vec2();
         this.c = new b2Vec2();
         super();
      }
      
      public function Set(other:b2Sweep) : void
      {
         this.localCenter.SetV(other.localCenter);
         this.c0.SetV(other.c0);
         this.c.SetV(other.c);
         this.a0 = other.a0;
         this.a = other.a;
         this.t0 = other.t0;
      }
      
      public function Copy() : b2Sweep
      {
         var copy:b2Sweep = new b2Sweep();
         copy.localCenter.SetV(this.localCenter);
         copy.c0.SetV(this.c0);
         copy.c.SetV(this.c);
         copy.a0 = this.a0;
         copy.a = this.a;
         copy.t0 = this.t0;
         return copy;
      }
      
      public function GetTransform(xf:b2Transform, alpha:Number) : void
      {
         xf.position.x = (1 - alpha) * this.c0.x + alpha * this.c.x;
         xf.position.y = (1 - alpha) * this.c0.y + alpha * this.c.y;
         var angle:Number = (1 - alpha) * this.a0 + alpha * this.a;
         xf.R.Set(angle);
         var tMat:b2Mat22 = xf.R;
         xf.position.x -= tMat.col1.x * this.localCenter.x + tMat.col2.x * this.localCenter.y;
         xf.position.y -= tMat.col1.y * this.localCenter.x + tMat.col2.y * this.localCenter.y;
      }
      
      public function Advance(t:Number) : void
      {
         var alpha:Number = NaN;
         if(this.t0 < t && 1 - this.t0 > Number.MIN_VALUE)
         {
            alpha = (t - this.t0) / (1 - this.t0);
            this.c0.x = (1 - alpha) * this.c0.x + alpha * this.c.x;
            this.c0.y = (1 - alpha) * this.c0.y + alpha * this.c.y;
            this.a0 = (1 - alpha) * this.a0 + alpha * this.a;
            this.t0 = t;
         }
      }
   }
}
