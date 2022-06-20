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
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var s_supportVec:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var m_length:Number;
      
      b2internal var m_normal:b2Vec2;
      
      b2internal var m_direction:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var m_nextEdge:b2EdgeShape;
      
      b2internal var m_prevEdge:b2EdgeShape;
      
      public function b2EdgeShape(v1:b2Vec2, v2:b2Vec2)
      {
         this.s_supportVec = new b2Vec2();
         this.m_v1 = new b2Vec2();
         this.m_v2 = new b2Vec2();
         this.m_coreV1 = new b2Vec2();
         this.m_coreV2 = new b2Vec2();
         this.m_normal = new b2Vec2();
         this.m_direction = new b2Vec2();
         this.m_cornerDir1 = new b2Vec2();
         this.m_cornerDir2 = new b2Vec2();
         super();
         m_type = b2internal::e_edgeShape;
         this.m_prevEdge = null;
         this.m_nextEdge = null;
         this.m_v1 = v1;
         this.m_v2 = v2;
         this.m_direction.Set(this.m_v2.x - this.m_v1.x,this.m_v2.y - this.m_v1.y);
         this.m_length = this.m_direction.Normalize();
         this.m_normal.Set(this.m_direction.y,-this.m_direction.x);
         this.m_coreV1.Set(-b2Settings.b2_toiSlop * (this.m_normal.x - this.m_direction.x) + this.m_v1.x,-b2Settings.b2_toiSlop * (this.m_normal.y - this.m_direction.y) + this.m_v1.y);
         this.m_coreV2.Set(-b2Settings.b2_toiSlop * (this.m_normal.x + this.m_direction.x) + this.m_v2.x,-b2Settings.b2_toiSlop * (this.m_normal.y + this.m_direction.y) + this.m_v2.y);
         this.m_cornerDir1 = this.m_normal;
         this.m_cornerDir2.Set(-this.m_normal.x,-this.m_normal.y);
      }
      
      override public function TestPoint(transform:b2Transform, p:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(output:b2RayCastOutput, input:b2RayCastInput, transform:b2Transform) : Boolean
      {
         var tMat:b2Mat22 = null;
         var bX:Number = NaN;
         var bY:Number = NaN;
         var a:Number = NaN;
         var mu2:Number = NaN;
         var nLen:Number = NaN;
         var rX:Number = input.p2.x - input.p1.x;
         var rY:Number = input.p2.y - input.p1.y;
         tMat = transform.R;
         var v1X:Number = transform.position.x + (tMat.col1.x * this.m_v1.x + tMat.col2.x * this.m_v1.y);
         var v1Y:Number = transform.position.y + (tMat.col1.y * this.m_v1.x + tMat.col2.y * this.m_v1.y);
         var nX:Number = transform.position.y + (tMat.col1.y * this.m_v2.x + tMat.col2.y * this.m_v2.y) - v1Y;
         var nY:Number = -(transform.position.x + (tMat.col1.x * this.m_v2.x + tMat.col2.x * this.m_v2.y) - v1X);
         var k_slop:Number = 100 * Number.MIN_VALUE;
         var denom:Number = -(rX * nX + rY * nY);
         if(denom > k_slop)
         {
            bX = input.p1.x - v1X;
            bY = input.p1.y - v1Y;
            a = bX * nX + bY * nY;
            if(0 <= a && a <= input.maxFraction * denom)
            {
               mu2 = -rX * bY + rY * bX;
               if(-k_slop * denom <= mu2 && mu2 <= denom * (1 + k_slop))
               {
                  a /= denom;
                  output.fraction = a;
                  nLen = Math.sqrt(nX * nX + nY * nY);
                  output.normal.x = nX / nLen;
                  output.normal.y = nY / nLen;
                  return true;
               }
            }
         }
         return false;
      }
      
      override public function ComputeAABB(aabb:b2AABB, transform:b2Transform) : void
      {
         var v1X:Number = NaN;
         var v1Y:Number = NaN;
         var v2X:Number = NaN;
         var v2Y:Number = NaN;
         var tMat:b2Mat22 = transform.R;
         v1X = transform.position.x + (tMat.col1.x * this.m_v1.x + tMat.col2.x * this.m_v1.y);
         v1Y = transform.position.y + (tMat.col1.y * this.m_v1.x + tMat.col2.y * this.m_v1.y);
         v2X = transform.position.x + (tMat.col1.x * this.m_v2.x + tMat.col2.x * this.m_v2.y);
         v2Y = transform.position.y + (tMat.col1.y * this.m_v2.x + tMat.col2.y * this.m_v2.y);
         if(v1X < v2X)
         {
            aabb.lowerBound.x = v1X;
            aabb.upperBound.x = v2X;
         }
         else
         {
            aabb.lowerBound.x = v2X;
            aabb.upperBound.x = v1X;
         }
         if(v1Y < v2Y)
         {
            aabb.lowerBound.y = v1Y;
            aabb.upperBound.y = v2Y;
         }
         else
         {
            aabb.lowerBound.y = v2Y;
            aabb.upperBound.y = v1Y;
         }
      }
      
      override public function ComputeMass(massData:b2MassData, density:Number) : void
      {
         massData.mass = 0;
         massData.center.SetV(this.m_v1);
         massData.I = 0;
      }
      
      override public function ComputeSubmergedArea(normal:b2Vec2, offset:Number, xf:b2Transform, c:b2Vec2) : Number
      {
         var v0:b2Vec2 = new b2Vec2(normal.x * offset,normal.y * offset);
         var v1:b2Vec2 = b2Math.MulX(xf,this.m_v1);
         var v2:b2Vec2 = b2Math.MulX(xf,this.m_v2);
         var d1:Number = b2Math.Dot(normal,v1) - offset;
         var d2:Number = b2Math.Dot(normal,v2) - offset;
         if(d1 > 0)
         {
            if(d2 > 0)
            {
               return 0;
            }
            v1.x = -d2 / (d1 - d2) * v1.x + d1 / (d1 - d2) * v2.x;
            v1.y = -d2 / (d1 - d2) * v1.y + d1 / (d1 - d2) * v2.y;
         }
         else if(d2 > 0)
         {
            v2.x = -d2 / (d1 - d2) * v1.x + d1 / (d1 - d2) * v2.x;
            v2.y = -d2 / (d1 - d2) * v1.y + d1 / (d1 - d2) * v2.y;
         }
         c.x = (v0.x + v1.x + v2.x) / 3;
         c.y = (v0.y + v1.y + v2.y) / 3;
         return 0.5 * ((v1.x - v0.x) * (v2.y - v0.y) - (v1.y - v0.y) * (v2.x - v0.x));
      }
      
      public function GetLength() : Number
      {
         return this.m_length;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function GetNormalVector() : b2Vec2
      {
         return this.m_normal;
      }
      
      public function GetDirectionVector() : b2Vec2
      {
         return this.m_direction;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function GetFirstVertex(xf:b2Transform) : b2Vec2
      {
         var tMat:b2Mat22 = xf.R;
         return new b2Vec2(xf.position.x + (tMat.col1.x * this.m_coreV1.x + tMat.col2.x * this.m_coreV1.y),xf.position.y + (tMat.col1.y * this.m_coreV1.x + tMat.col2.y * this.m_coreV1.y));
      }
      
      public function GetNextEdge() : b2EdgeShape
      {
         return this.m_nextEdge;
      }
      
      public function GetPrevEdge() : b2EdgeShape
      {
         return this.m_prevEdge;
      }
      
      public function Support(xf:b2Transform, dX:Number, dY:Number) : b2Vec2
      {
         var tMat:b2Mat22 = xf.R;
         var v1X:Number = xf.position.x + (tMat.col1.x * this.m_coreV1.x + tMat.col2.x * this.m_coreV1.y);
         var v1Y:Number = xf.position.y + (tMat.col1.y * this.m_coreV1.x + tMat.col2.y * this.m_coreV1.y);
         var v2X:Number = xf.position.x + (tMat.col1.x * this.m_coreV2.x + tMat.col2.x * this.m_coreV2.y);
         var v2Y:Number = xf.position.y + (tMat.col1.y * this.m_coreV2.x + tMat.col2.y * this.m_coreV2.y);
         if(v1X * dX + v1Y * dY > v2X * dX + v2Y * dY)
         {
            this.s_supportVec.x = v1X;
            this.s_supportVec.y = v1Y;
         }
         else
         {
            this.s_supportVec.x = v2X;
            this.s_supportVec.y = v2Y;
         }
         return this.s_supportVec;
      }
      
      b2internal function SetPrevEdge(edge:b2EdgeShape, core:b2Vec2, cornerDir:b2Vec2, convex:Boolean) : void
      {
         this.m_prevEdge = edge;
         this.m_coreV1 = core;
         this.m_cornerDir1 = cornerDir;
         this.m_cornerConvex1 = convex;
      }
      
      b2internal function SetNextEdge(edge:b2EdgeShape, core:b2Vec2, cornerDir:b2Vec2, convex:Boolean) : void
      {
         this.m_nextEdge = edge;
         this.m_coreV2 = core;
         this.m_cornerDir2 = cornerDir;
         this.m_cornerConvex2 = convex;
      }
   }
}
