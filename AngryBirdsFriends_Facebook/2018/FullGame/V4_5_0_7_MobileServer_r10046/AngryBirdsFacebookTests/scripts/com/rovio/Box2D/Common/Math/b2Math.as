package com.rovio.Box2D.Common.Math
{
   public class b2Math
   {
      
      public static const b2Vec2_zero:b2Vec2 = new b2Vec2(0,0);
      
      public static const b2Mat22_identity:b2Mat22 = b2Mat22.FromVV(new b2Vec2(1,0),new b2Vec2(0,1));
      
      public static const b2Transform_identity:b2Transform = new b2Transform(b2Vec2_zero,b2Mat22_identity);
       
      
      public function b2Math()
      {
         super();
      }
      
      public static function IsValid(x:Number) : Boolean
      {
         return isFinite(x);
      }
      
      public static function Dot(a:b2Vec2, b:b2Vec2) : Number
      {
         return a.x * b.x + a.y * b.y;
      }
      
      public static function CrossVV(a:b2Vec2, b:b2Vec2) : Number
      {
         return a.x * b.y - a.y * b.x;
      }
      
      public static function CrossVF(a:b2Vec2, s:Number) : b2Vec2
      {
         return new b2Vec2(s * a.y,-s * a.x);
      }
      
      public static function CrossFV(s:Number, a:b2Vec2) : b2Vec2
      {
         return new b2Vec2(-s * a.y,s * a.x);
      }
      
      public static function MulMV(A:b2Mat22, v:b2Vec2) : b2Vec2
      {
         return new b2Vec2(A.col1.x * v.x + A.col2.x * v.y,A.col1.y * v.x + A.col2.y * v.y);
      }
      
      public static function MulTMV(A:b2Mat22, v:b2Vec2) : b2Vec2
      {
         return new b2Vec2(Dot(v,A.col1),Dot(v,A.col2));
      }
      
      public static function MulX(T:b2Transform, v:b2Vec2) : b2Vec2
      {
         var a:b2Vec2 = null;
         a = MulMV(T.R,v);
         a.x += T.position.x;
         a.y += T.position.y;
         return a;
      }
      
      public static function MulXT(T:b2Transform, v:b2Vec2) : b2Vec2
      {
         var a:b2Vec2 = null;
         var tX:Number = NaN;
         a = SubtractVV(v,T.position);
         tX = a.x * T.R.col1.x + a.y * T.R.col1.y;
         a.y = a.x * T.R.col2.x + a.y * T.R.col2.y;
         a.x = tX;
         return a;
      }
      
      public static function AddVV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(a.x + b.x,a.y + b.y);
      }
      
      public static function SubtractVV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(a.x - b.x,a.y - b.y);
      }
      
      public static function Distance(a:b2Vec2, b:b2Vec2) : Number
      {
         var cX:Number = a.x - b.x;
         var cY:Number = a.y - b.y;
         return Math.sqrt(cX * cX + cY * cY);
      }
      
      public static function DistanceSquared(a:b2Vec2, b:b2Vec2) : Number
      {
         var cX:Number = a.x - b.x;
         var cY:Number = a.y - b.y;
         return cX * cX + cY * cY;
      }
      
      public static function MulFV(s:Number, a:b2Vec2) : b2Vec2
      {
         return new b2Vec2(s * a.x,s * a.y);
      }
      
      public static function AddMM(A:b2Mat22, B:b2Mat22) : b2Mat22
      {
         return b2Mat22.FromVV(AddVV(A.col1,B.col1),AddVV(A.col2,B.col2));
      }
      
      public static function MulMM(A:b2Mat22, B:b2Mat22) : b2Mat22
      {
         return b2Mat22.FromVV(MulMV(A,B.col1),MulMV(A,B.col2));
      }
      
      public static function MulTMM(A:b2Mat22, B:b2Mat22) : b2Mat22
      {
         var c1:b2Vec2 = new b2Vec2(Dot(A.col1,B.col1),Dot(A.col2,B.col1));
         var c2:b2Vec2 = new b2Vec2(Dot(A.col1,B.col2),Dot(A.col2,B.col2));
         return b2Mat22.FromVV(c1,c2);
      }
      
      public static function Abs(a:Number) : Number
      {
         return a > 0 ? Number(a) : Number(-a);
      }
      
      public static function AbsV(a:b2Vec2) : b2Vec2
      {
         return new b2Vec2(Abs(a.x),Abs(a.y));
      }
      
      public static function AbsM(A:b2Mat22) : b2Mat22
      {
         return b2Mat22.FromVV(AbsV(A.col1),AbsV(A.col2));
      }
      
      public static function Min(a:Number, b:Number) : Number
      {
         return a < b ? Number(a) : Number(b);
      }
      
      public static function MinV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(Min(a.x,b.x),Min(a.y,b.y));
      }
      
      public static function Max(a:Number, b:Number) : Number
      {
         return a > b ? Number(a) : Number(b);
      }
      
      public static function MaxV(a:b2Vec2, b:b2Vec2) : b2Vec2
      {
         return new b2Vec2(Max(a.x,b.x),Max(a.y,b.y));
      }
      
      public static function Clamp(a:Number, low:Number, high:Number) : Number
      {
         return a < low ? Number(low) : (a > high ? Number(high) : Number(a));
      }
      
      public static function ClampV(a:b2Vec2, low:b2Vec2, high:b2Vec2) : b2Vec2
      {
         return MaxV(low,MinV(a,high));
      }
      
      public static function Swap(a:Array, b:Array) : void
      {
         var tmp:* = a[0];
         a[0] = b[0];
         b[0] = tmp;
      }
      
      public static function Random() : Number
      {
         return Math.random() * 2 - 1;
      }
      
      public static function RandomRange(lo:Number, hi:Number) : Number
      {
         var r:Number = Math.random();
         return Number((hi - lo) * r + lo);
      }
      
      public static function NextPowerOfTwo(x:uint) : uint
      {
         x |= x >> 1 & 2147483647;
         x |= x >> 2 & 1073741823;
         x |= x >> 4 & 268435455;
         x |= x >> 8 & 16777215;
         x |= x >> 16 & 65535;
         return x + 1;
      }
      
      public static function IsPowerOfTwo(x:uint) : Boolean
      {
         return Boolean(x > 0 && (x & x - 1) == 0);
      }
   }
}
