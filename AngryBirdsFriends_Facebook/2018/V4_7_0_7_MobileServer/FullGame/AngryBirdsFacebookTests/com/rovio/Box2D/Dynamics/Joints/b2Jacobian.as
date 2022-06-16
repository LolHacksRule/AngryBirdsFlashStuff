package com.rovio.Box2D.Dynamics.Joints
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2Jacobian
   {
       
      
      public var linearA:b2Vec2;
      
      public var angularA:Number;
      
      public var linearB:b2Vec2;
      
      public var angularB:Number;
      
      public function b2Jacobian()
      {
         this.linearA = new b2Vec2();
         this.linearB = new b2Vec2();
         super();
      }
      
      public function SetZero() : void
      {
         this.linearA.SetZero();
         this.angularA = 0;
         this.linearB.SetZero();
         this.angularB = 0;
      }
      
      public function Set(x1:b2Vec2, a1:Number, x2:b2Vec2, a2:Number) : void
      {
         this.linearA.SetV(x1);
         this.angularA = a1;
         this.linearB.SetV(x2);
         this.angularB = a2;
      }
      
      public function Compute(x1:b2Vec2, a1:Number, x2:b2Vec2, a2:Number) : Number
      {
         return this.linearA.x * x1.x + this.linearA.y * x1.y + this.angularA * a1 + (this.linearB.x * x2.x + this.linearB.y * x2.y) + this.angularB * a2;
      }
   }
}
