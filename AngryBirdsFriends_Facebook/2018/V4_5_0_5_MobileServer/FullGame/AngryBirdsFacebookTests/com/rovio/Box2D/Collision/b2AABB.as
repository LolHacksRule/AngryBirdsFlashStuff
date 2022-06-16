package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var lowerBound:b2Vec2;
      
      public var upperBound:b2Vec2;
      
      public function b2AABB()
      {
         this.lowerBound = new b2Vec2();
         this.upperBound = new b2Vec2();
         super();
      }
      
      public static function Combine(aabb1:b2AABB, aabb2:b2AABB) : b2AABB
      {
         var aabb:b2AABB = new b2AABB();
         aabb.Combine(aabb1,aabb2);
         return aabb;
      }
      
      public function IsValid() : Boolean
      {
         var dX:Number = this.upperBound.x - this.lowerBound.x;
         var dY:Number = this.upperBound.y - this.lowerBound.y;
         var valid:Boolean = dX >= 0 && dY >= 0;
         return Boolean(valid && this.lowerBound.IsValid() && this.upperBound.IsValid());
      }
      
      public function GetCenter() : b2Vec2
      {
         return new b2Vec2((this.lowerBound.x + this.upperBound.x) / 2,(this.lowerBound.y + this.upperBound.y) / 2);
      }
      
      public function GetExtents() : b2Vec2
      {
         return new b2Vec2((this.upperBound.x - this.lowerBound.x) / 2,(this.upperBound.y - this.lowerBound.y) / 2);
      }
      
      public function Contains(aabb:b2AABB) : Boolean
      {
         var result:Boolean = true;
         result = result && this.lowerBound.x <= aabb.lowerBound.x;
         result = result && this.lowerBound.y <= aabb.lowerBound.y;
         result = result && aabb.upperBound.x <= this.upperBound.x;
         return Boolean(result && aabb.upperBound.y <= this.upperBound.y);
      }
      
      public function RayCast(output:b2RayCastOutput, input:b2RayCastInput) : Boolean
      {
         var normal:b2Vec2 = null;
         var inv_d:Number = NaN;
         var t1:Number = NaN;
         var t2:Number = NaN;
         var t3:Number = NaN;
         var s:Number = NaN;
         var tmin:Number = -Number.MAX_VALUE;
         var tmax:Number = Number.MAX_VALUE;
         var pX:Number = input.p1.x;
         var pY:Number = input.p1.y;
         var dX:Number = input.p2.x - input.p1.x;
         var dY:Number = input.p2.y - input.p1.y;
         var absDX:Number = Math.abs(dX);
         var absDY:Number = Math.abs(dY);
         normal = output.normal;
         if(absDX < Number.MIN_VALUE)
         {
            if(pX < this.lowerBound.x || this.upperBound.x < pX)
            {
               return false;
            }
         }
         else
         {
            inv_d = 1 / dX;
            t1 = (this.lowerBound.x - pX) * inv_d;
            t2 = (this.upperBound.x - pX) * inv_d;
            s = -1;
            if(t1 > t2)
            {
               t3 = t1;
               t1 = t2;
               t2 = t3;
               s = 1;
            }
            if(t1 > tmin)
            {
               normal.x = s;
               normal.y = 0;
               tmin = t1;
            }
            tmax = Math.min(tmax,t2);
            if(tmin > tmax)
            {
               return false;
            }
         }
         if(absDY < Number.MIN_VALUE)
         {
            if(pY < this.lowerBound.y || this.upperBound.y < pY)
            {
               return false;
            }
         }
         else
         {
            inv_d = 1 / dY;
            t1 = (this.lowerBound.y - pY) * inv_d;
            t2 = (this.upperBound.y - pY) * inv_d;
            s = -1;
            if(t1 > t2)
            {
               t3 = t1;
               t1 = t2;
               t2 = t3;
               s = 1;
            }
            if(t1 > tmin)
            {
               normal.y = s;
               normal.x = 0;
               tmin = t1;
            }
            tmax = Math.min(tmax,t2);
            if(tmin > tmax)
            {
               return false;
            }
         }
         output.fraction = tmin;
         return true;
      }
      
      public function TestOverlap(other:b2AABB) : Boolean
      {
         var d1X:Number = other.lowerBound.x - this.upperBound.x;
         var d1Y:Number = other.lowerBound.y - this.upperBound.y;
         var d2X:Number = this.lowerBound.x - other.upperBound.x;
         var d2Y:Number = this.lowerBound.y - other.upperBound.y;
         if(d1X > 0 || d1Y > 0)
         {
            return false;
         }
         if(d2X > 0 || d2Y > 0)
         {
            return false;
         }
         return true;
      }
      
      public function Combine(aabb1:b2AABB, aabb2:b2AABB) : void
      {
         this.lowerBound.x = Math.min(aabb1.lowerBound.x,aabb2.lowerBound.x);
         this.lowerBound.y = Math.min(aabb1.lowerBound.y,aabb2.lowerBound.y);
         this.upperBound.x = Math.max(aabb1.upperBound.x,aabb2.upperBound.x);
         this.upperBound.y = Math.max(aabb1.upperBound.y,aabb2.upperBound.y);
      }
   }
}
