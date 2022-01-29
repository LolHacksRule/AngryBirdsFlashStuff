package com.rovio.Box2D.Collision.Shapes
{
   import com.rovio.Box2D.Collision.b2AABB;
   import com.rovio.Box2D.Collision.b2RayCastInput;
   import com.rovio.Box2D.Collision.b2RayCastOutput;
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class b2CircleShape extends b2Shape
   {
       
      
      b2internal var m_p:b2Vec2;
      
      public function b2CircleShape(radius:Number = 0)
      {
         this.m_p = new b2Vec2();
         super();
         m_type = b2internal::e_circleShape;
         m_radius = radius;
      }
      
      override public function Copy() : b2Shape
      {
         var s:b2Shape = new b2CircleShape();
         s.Set(this);
         return s;
      }
      
      override public function Set(other:b2Shape) : void
      {
         var other2:b2CircleShape = null;
         super.Set(other);
         if(other is b2CircleShape)
         {
            other2 = other as b2CircleShape;
            this.m_p.SetV(other2.m_p);
         }
      }
      
      override public function TestPoint(transform:b2Transform, p:b2Vec2) : Boolean
      {
         var tMat:b2Mat22 = transform.R;
         var dX:Number = transform.position.x + (tMat.col1.x * this.m_p.x + tMat.col2.x * this.m_p.y);
         var dY:Number = transform.position.y + (tMat.col1.y * this.m_p.x + tMat.col2.y * this.m_p.y);
         dX = p.x - dX;
         dY = p.y - dY;
         return dX * dX + dY * dY <= b2internal::m_radius * b2internal::m_radius;
      }
      
      override public function RayCast(output:b2RayCastOutput, input:b2RayCastInput, transform:b2Transform) : Boolean
      {
         var sY:Number = NaN;
         var tMat:b2Mat22 = transform.R;
         var positionX:Number = transform.position.x + (tMat.col1.x * this.m_p.x + tMat.col2.x * this.m_p.y);
         var positionY:Number = transform.position.y + (tMat.col1.y * this.m_p.x + tMat.col2.y * this.m_p.y);
         var sX:Number = input.p1.x - positionX;
         sY = input.p1.y - positionY;
         var b:Number = sX * sX + sY * sY - b2internal::m_radius * b2internal::m_radius;
         var rX:Number = input.p2.x - input.p1.x;
         var rY:Number = input.p2.y - input.p1.y;
         var c:Number = sX * rX + sY * rY;
         var rr:Number = rX * rX + rY * rY;
         var sigma:Number = c * c - rr * b;
         if(sigma < 0 || rr < Number.MIN_VALUE)
         {
            return false;
         }
         var a:Number = -(c + Math.sqrt(sigma));
         if(0 <= a && a <= input.maxFraction * rr)
         {
            a /= rr;
            output.fraction = a;
            output.normal.x = sX + a * rX;
            output.normal.y = sY + a * rY;
            output.normal.Normalize();
            return true;
         }
         return false;
      }
      
      override public function ComputeAABB(aabb:b2AABB, transform:b2Transform) : void
      {
         var tMat:b2Mat22 = transform.R;
         var pX:Number = transform.position.x + (tMat.col1.x * this.m_p.x + tMat.col2.x * this.m_p.y);
         var pY:Number = transform.position.y + (tMat.col1.y * this.m_p.x + tMat.col2.y * this.m_p.y);
         aabb.lowerBound.Set(pX - b2internal::m_radius,pY - b2internal::m_radius);
         aabb.upperBound.Set(pX + b2internal::m_radius,pY + b2internal::m_radius);
      }
      
      override public function ComputeMass(massData:b2MassData, density:Number) : void
      {
         massData.mass = density * b2Settings.b2_pi * b2internal::m_radius * b2internal::m_radius;
         massData.center.SetV(this.m_p);
         massData.I = massData.mass * (0.5 * b2internal::m_radius * b2internal::m_radius + (this.m_p.x * this.m_p.x + this.m_p.y * this.m_p.y));
      }
      
      override public function ComputeSubmergedArea(normal:b2Vec2, offset:Number, xf:b2Transform, c:b2Vec2) : Number
      {
         var area:Number = NaN;
         var p:b2Vec2 = b2Math.MulX(xf,this.m_p);
         var l:Number = -(b2Math.Dot(normal,p) - offset);
         if(l < -b2internal::m_radius + Number.MIN_VALUE)
         {
            return 0;
         }
         if(l > b2internal::m_radius)
         {
            c.SetV(p);
            return Math.PI * b2internal::m_radius * b2internal::m_radius;
         }
         var r2:Number = b2internal::m_radius * b2internal::m_radius;
         var l2:Number = l * l;
         area = r2 * (Math.asin(l / b2internal::m_radius) + Math.PI / 2) + l * Math.sqrt(r2 - l2);
         var com:Number = -2 / 3 * Math.pow(r2 - l2,1.5) / area;
         c.x = p.x + normal.x * com;
         c.y = p.y + normal.y * com;
         return area;
      }
      
      public function GetLocalPosition() : b2Vec2
      {
         return this.m_p;
      }
      
      public function SetLocalPosition(position:b2Vec2) : void
      {
         this.m_p.SetV(position);
      }
      
      public function GetRadius() : Number
      {
         return b2internal::m_radius;
      }
      
      public function SetRadius(radius:Number) : void
      {
         m_radius = radius;
      }
   }
}
