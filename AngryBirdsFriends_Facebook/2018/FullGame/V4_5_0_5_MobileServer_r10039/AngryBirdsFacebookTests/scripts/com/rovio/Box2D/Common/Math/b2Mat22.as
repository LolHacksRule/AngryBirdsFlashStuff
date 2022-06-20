package com.rovio.Box2D.Common.Math
{
   public class b2Mat22
   {
       
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22()
      {
         this.col1 = new b2Vec2();
         this.col2 = new b2Vec2();
         super();
         this.col2.y = 1;
         this.col1.x = 1;
      }
      
      public static function FromAngle(angle:Number) : b2Mat22
      {
         var mat:b2Mat22 = new b2Mat22();
         mat.Set(angle);
         return mat;
      }
      
      public static function FromVV(c1:b2Vec2, c2:b2Vec2) : b2Mat22
      {
         var mat:b2Mat22 = new b2Mat22();
         mat.SetVV(c1,c2);
         return mat;
      }
      
      public function Set(angle:Number) : void
      {
         var c:Number = NaN;
         c = Math.cos(angle);
         var s:Number = Math.sin(angle);
         this.col1.x = c;
         this.col2.x = -s;
         this.col1.y = s;
         this.col2.y = c;
      }
      
      public function SetVV(c1:b2Vec2, c2:b2Vec2) : void
      {
         this.col1.SetV(c1);
         this.col2.SetV(c2);
      }
      
      public function Copy() : b2Mat22
      {
         var mat:b2Mat22 = new b2Mat22();
         mat.SetM(this);
         return mat;
      }
      
      public function SetM(m:b2Mat22) : void
      {
         this.col1.SetV(m.col1);
         this.col2.SetV(m.col2);
      }
      
      public function AddM(m:b2Mat22) : void
      {
         this.col1.x += m.col1.x;
         this.col1.y += m.col1.y;
         this.col2.x += m.col2.x;
         this.col2.y += m.col2.y;
      }
      
      public function SetIdentity() : void
      {
         this.col1.x = 1;
         this.col2.x = 0;
         this.col1.y = 0;
         this.col2.y = 1;
      }
      
      public function SetZero() : void
      {
         this.col1.x = 0;
         this.col2.x = 0;
         this.col1.y = 0;
         this.col2.y = 0;
      }
      
      public function GetAngle() : Number
      {
         return Math.atan2(this.col1.y,this.col1.x);
      }
      
      public function GetInverse(out:b2Mat22) : b2Mat22
      {
         var b:Number = NaN;
         var det:Number = NaN;
         var a:Number = this.col1.x;
         b = this.col2.x;
         var c:Number = this.col1.y;
         var d:Number = this.col2.y;
         det = a * d - b * c;
         if(det != 0)
         {
            det = 1 / det;
         }
         out.col1.x = det * d;
         out.col2.x = -det * b;
         out.col1.y = -det * c;
         out.col2.y = det * a;
         return out;
      }
      
      public function Solve(out:b2Vec2, bX:Number, bY:Number) : b2Vec2
      {
         var a11:Number = this.col1.x;
         var a12:Number = this.col2.x;
         var a21:Number = this.col1.y;
         var a22:Number = this.col2.y;
         var det:Number = a11 * a22 - a12 * a21;
         if(det != 0)
         {
            det = 1 / det;
         }
         out.x = det * (a22 * bX - a12 * bY);
         out.y = det * (a11 * bY - a21 * bX);
         return out;
      }
      
      public function Abs() : void
      {
         this.col1.Abs();
         this.col2.Abs();
      }
   }
}
