package com.rovio.Box2D.Common.Math
{
   public class b2Vec3
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function b2Vec3(x:Number = 0, y:Number = 0, z:Number = 0)
      {
         super();
         this.x = x;
         this.y = y;
         this.z = z;
      }
      
      public function SetZero() : void
      {
         this.x = this.y = this.z = 0;
      }
      
      public function Set(x:Number, y:Number, z:Number) : void
      {
         this.x = x;
         this.y = y;
         this.z = z;
      }
      
      public function SetV(v:b2Vec3) : void
      {
         this.x = v.x;
         this.y = v.y;
         this.z = v.z;
      }
      
      public function GetNegative() : b2Vec3
      {
         return new b2Vec3(-this.x,-this.y,-this.z);
      }
      
      public function NegativeSelf() : void
      {
         this.x = -this.x;
         this.y = -this.y;
         this.z = -this.z;
      }
      
      public function Copy() : b2Vec3
      {
         return new b2Vec3(this.x,this.y,this.z);
      }
      
      public function Add(v:b2Vec3) : void
      {
         this.x += v.x;
         this.y += v.y;
         this.z += v.z;
      }
      
      public function Subtract(v:b2Vec3) : void
      {
         this.x -= v.x;
         this.y -= v.y;
         this.z -= v.z;
      }
      
      public function Multiply(a:Number) : void
      {
         this.x *= a;
         this.y *= a;
         this.z *= a;
      }
   }
}
