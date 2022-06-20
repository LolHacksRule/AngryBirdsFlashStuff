package com.rovio.Box2D.Collision.Shapes
{
   import com.rovio.Box2D.Collision.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Dynamics.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var s_mat:b2Mat22 = new b2Mat22();
       
      
      b2internal var m_centroid:b2Vec2;
      
      b2internal var m_vertices:Vector.<b2Vec2>;
      
      b2internal var m_normals:Vector.<b2Vec2>;
      
      b2internal var m_vertexCount:int;
      
      public function b2PolygonShape()
      {
         super();
         m_type = b2internal::e_polygonShape;
         this.m_centroid = new b2Vec2();
         this.m_vertices = new Vector.<b2Vec2>();
         this.m_normals = new Vector.<b2Vec2>();
         m_radius = b2Settings.b2_polygonRadius;
         this.m_centroid.SetZero();
      }
      
      public static function AsArray(vertices:Array, vertexCount:Number) : b2PolygonShape
      {
         var polygonShape:b2PolygonShape = new b2PolygonShape();
         polygonShape.SetAsArray(vertices,vertexCount);
         return polygonShape;
      }
      
      public static function AsVector(vertices:Vector.<b2Vec2>, vertexCount:Number) : b2PolygonShape
      {
         var polygonShape:b2PolygonShape = new b2PolygonShape();
         polygonShape.SetAsVector(vertices,vertexCount);
         return polygonShape;
      }
      
      public static function AsBox(hx:Number, hy:Number) : b2PolygonShape
      {
         var polygonShape:b2PolygonShape = new b2PolygonShape();
         polygonShape.SetAsBox(hx,hy);
         return polygonShape;
      }
      
      public static function AsOrientedBox(hx:Number, hy:Number, center:b2Vec2 = null, angle:Number = 0.0) : b2PolygonShape
      {
         var polygonShape:b2PolygonShape = new b2PolygonShape();
         polygonShape.SetAsOrientedBox(hx,hy,center,angle);
         return polygonShape;
      }
      
      public static function AsEdge(v1:b2Vec2, v2:b2Vec2) : b2PolygonShape
      {
         var polygonShape:b2PolygonShape = new b2PolygonShape();
         polygonShape.SetAsEdge(v1,v2);
         return polygonShape;
      }
      
      public static function ComputeCentroid(vs:Vector.<b2Vec2>, count:uint) : b2Vec2
      {
         var c:b2Vec2 = null;
         var p2:b2Vec2 = null;
         var p3:b2Vec2 = null;
         var e1X:Number = NaN;
         var e1Y:Number = NaN;
         var e2X:Number = NaN;
         var e2Y:Number = NaN;
         var D:Number = NaN;
         var triangleArea:Number = NaN;
         c = new b2Vec2();
         var area:Number = 0;
         var inv3:Number = 1 / 3;
         for(var i:int = 0; i < count; i++)
         {
            p2 = vs[i];
            p3 = i + 1 < count ? vs[int(i + 1)] : vs[0];
            e1X = p2.x - 0;
            e1Y = p2.y - 0;
            e2X = p3.x - 0;
            e2Y = p3.y - 0;
            D = e1X * e2Y - e1Y * e2X;
            triangleArea = 0.5 * D;
            area += triangleArea;
            c.Add(new b2Vec2(0,0));
            c.Add(p2);
            c.Add(p3);
            c.Multiply(triangleArea * inv3);
         }
         c.x *= 1 / area;
         c.y *= 1 / area;
         return c;
      }
      
      b2internal static function ComputeOBB(obb:b2OBB, vs:Vector.<b2Vec2>, count:int) : void
      {
         var i:int = 0;
         var root:b2Vec2 = null;
         var uxX:Number = NaN;
         var uxY:Number = NaN;
         var length:Number = NaN;
         var uyX:Number = NaN;
         var uyY:Number = NaN;
         var lowerX:Number = NaN;
         var lowerY:Number = NaN;
         var upperX:Number = NaN;
         var upperY:Number = NaN;
         var j:int = 0;
         var area:Number = NaN;
         var dX:Number = NaN;
         var dY:Number = NaN;
         var rX:Number = NaN;
         var rY:Number = NaN;
         var centerX:Number = NaN;
         var centerY:Number = NaN;
         var tMat:b2Mat22 = null;
         var p:Vector.<b2Vec2> = new Vector.<b2Vec2>(count + 1);
         for(i = 0; i < count; i++)
         {
            p[i] = vs[i];
         }
         p[count] = p[0];
         var minArea:Number = Number.MAX_VALUE;
         for(i = 1; i <= count; i++)
         {
            root = p[int(i - 1)];
            uxX = p[i].x - root.x;
            uxY = p[i].y - root.y;
            length = Math.sqrt(uxX * uxX + uxY * uxY);
            uxX /= length;
            uxY /= length;
            uyX = -uxY;
            uyY = uxX;
            lowerX = Number.MAX_VALUE;
            lowerY = Number.MAX_VALUE;
            upperX = -Number.MAX_VALUE;
            upperY = -Number.MAX_VALUE;
            for(j = 0; j < count; j++)
            {
               dX = p[j].x - root.x;
               dY = p[j].y - root.y;
               rX = uxX * dX + uxY * dY;
               rY = uyX * dX + uyY * dY;
               if(rX < lowerX)
               {
                  lowerX = rX;
               }
               if(rY < lowerY)
               {
                  lowerY = rY;
               }
               if(rX > upperX)
               {
                  upperX = rX;
               }
               if(rY > upperY)
               {
                  upperY = rY;
               }
            }
            area = (upperX - lowerX) * (upperY - lowerY);
            if(area < 0.95 * minArea)
            {
               minArea = area;
               obb.R.col1.x = uxX;
               obb.R.col1.y = uxY;
               obb.R.col2.x = uyX;
               obb.R.col2.y = uyY;
               centerX = 0.5 * (lowerX + upperX);
               centerY = 0.5 * (lowerY + upperY);
               tMat = obb.R;
               obb.center.x = root.x + (tMat.col1.x * centerX + tMat.col2.x * centerY);
               obb.center.y = root.y + (tMat.col1.y * centerX + tMat.col2.y * centerY);
               obb.extents.x = 0.5 * (upperX - lowerX);
               obb.extents.y = 0.5 * (upperY - lowerY);
            }
         }
      }
      
      override public function Copy() : b2Shape
      {
         var s:b2PolygonShape = new b2PolygonShape();
         s.Set(this);
         return s;
      }
      
      override public function Set(other:b2Shape) : void
      {
         var other2:b2PolygonShape = null;
         var i:int = 0;
         super.Set(other);
         if(other is b2PolygonShape)
         {
            other2 = other as b2PolygonShape;
            this.m_centroid.SetV(other2.m_centroid);
            this.m_vertexCount = other2.m_vertexCount;
            this.Reserve(this.m_vertexCount);
            for(i = 0; i < this.m_vertexCount; i++)
            {
               this.m_vertices[i].SetV(other2.m_vertices[i]);
               this.m_normals[i].SetV(other2.m_normals[i]);
            }
         }
      }
      
      public function SetAsArray(vertices:Array, vertexCount:Number = 0) : void
      {
         var tVec:b2Vec2 = null;
         var v:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(tVec in vertices)
         {
            v.push(tVec);
         }
         this.SetAsVector(v,vertexCount);
      }
      
      public function SetAsVector(vertices:Vector.<b2Vec2>, vertexCount:Number = 0) : void
      {
         var i:int = 0;
         var i1:int = 0;
         var i2:int = 0;
         var edge:b2Vec2 = null;
         if(vertexCount == 0)
         {
            vertexCount = vertices.length;
         }
         b2Settings.b2Assert(2 <= vertexCount);
         this.m_vertexCount = vertexCount;
         this.Reserve(vertexCount);
         for(i = 0; i < this.m_vertexCount; i++)
         {
            this.m_vertices[i].SetV(vertices[i]);
         }
         for(i = 0; i < this.m_vertexCount; i++)
         {
            i1 = i;
            i2 = i + 1 < this.m_vertexCount ? int(i + 1) : 0;
            edge = b2Math.SubtractVV(this.m_vertices[i2],this.m_vertices[i1]);
            b2Settings.b2Assert(edge.LengthSquared() > Number.MIN_VALUE);
            this.m_normals[i].SetV(b2Math.CrossVF(edge,1));
            this.m_normals[i].Normalize();
         }
         this.m_centroid = ComputeCentroid(this.m_vertices,this.m_vertexCount);
      }
      
      public function SetAsBox(hx:Number, hy:Number) : void
      {
         this.m_vertexCount = 4;
         this.Reserve(4);
         this.m_vertices[0].Set(-hx,-hy);
         this.m_vertices[1].Set(hx,-hy);
         this.m_vertices[2].Set(hx,hy);
         this.m_vertices[3].Set(-hx,hy);
         this.m_normals[0].Set(0,-1);
         this.m_normals[1].Set(1,0);
         this.m_normals[2].Set(0,1);
         this.m_normals[3].Set(-1,0);
         this.m_centroid.SetZero();
      }
      
      public function SetAsOrientedBox(hx:Number, hy:Number, center:b2Vec2 = null, angle:Number = 0.0) : void
      {
         this.m_vertexCount = 4;
         this.Reserve(4);
         this.m_vertices[0].Set(-hx,-hy);
         this.m_vertices[1].Set(hx,-hy);
         this.m_vertices[2].Set(hx,hy);
         this.m_vertices[3].Set(-hx,hy);
         this.m_normals[0].Set(0,-1);
         this.m_normals[1].Set(1,0);
         this.m_normals[2].Set(0,1);
         this.m_normals[3].Set(-1,0);
         this.m_centroid = center;
         var xf:b2Transform = new b2Transform();
         xf.position = center;
         xf.R.Set(angle);
         for(var i:int = 0; i < this.m_vertexCount; i++)
         {
            this.m_vertices[i] = b2Math.MulX(xf,this.m_vertices[i]);
            this.m_normals[i] = b2Math.MulMV(xf.R,this.m_normals[i]);
         }
      }
      
      public function SetAsEdge(v1:b2Vec2, v2:b2Vec2) : void
      {
         this.m_vertexCount = 2;
         this.Reserve(2);
         this.m_vertices[0].SetV(v1);
         this.m_vertices[1].SetV(v2);
         this.m_centroid.x = 0.5 * (v1.x + v2.x);
         this.m_centroid.y = 0.5 * (v1.y + v2.y);
         this.m_normals[0] = b2Math.CrossVF(b2Math.SubtractVV(v2,v1),1);
         this.m_normals[0].Normalize();
         this.m_normals[1].x = -this.m_normals[0].x;
         this.m_normals[1].y = -this.m_normals[0].y;
      }
      
      override public function TestPoint(xf:b2Transform, p:b2Vec2) : Boolean
      {
         var tVec:b2Vec2 = null;
         var dot:Number = NaN;
         var tMat:b2Mat22 = xf.R;
         var tX:Number = p.x - xf.position.x;
         var tY:Number = p.y - xf.position.y;
         var pLocalX:Number = tX * tMat.col1.x + tY * tMat.col1.y;
         var pLocalY:Number = tX * tMat.col2.x + tY * tMat.col2.y;
         for(var i:int = 0; i < this.m_vertexCount; i++)
         {
            tVec = this.m_vertices[i];
            tX = pLocalX - tVec.x;
            tY = pLocalY - tVec.y;
            tVec = this.m_normals[i];
            dot = tVec.x * tX + tVec.y * tY;
            if(dot > 0)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function RayCast(output:b2RayCastOutput, input:b2RayCastInput, transform:b2Transform) : Boolean
      {
         var tX:Number = NaN;
         var tY:Number = NaN;
         var tMat:b2Mat22 = null;
         var tVec:b2Vec2 = null;
         var numerator:Number = NaN;
         var denominator:Number = NaN;
         var lower:Number = 0;
         var upper:Number = input.maxFraction;
         tX = input.p1.x - transform.position.x;
         tY = input.p1.y - transform.position.y;
         tMat = transform.R;
         var p1X:Number = tX * tMat.col1.x + tY * tMat.col1.y;
         var p1Y:Number = tX * tMat.col2.x + tY * tMat.col2.y;
         tX = input.p2.x - transform.position.x;
         tY = input.p2.y - transform.position.y;
         tMat = transform.R;
         var p2X:Number = tX * tMat.col1.x + tY * tMat.col1.y;
         var p2Y:Number = tX * tMat.col2.x + tY * tMat.col2.y;
         var dX:Number = p2X - p1X;
         var dY:Number = p2Y - p1Y;
         var index:int = -1;
         for(var i:int = 0; i < this.m_vertexCount; i++)
         {
            tVec = this.m_vertices[i];
            tX = tVec.x - p1X;
            tY = tVec.y - p1Y;
            tVec = this.m_normals[i];
            numerator = tVec.x * tX + tVec.y * tY;
            denominator = tVec.x * dX + tVec.y * dY;
            if(denominator == 0)
            {
               if(numerator < 0)
               {
                  return false;
               }
            }
            else if(denominator < 0 && numerator < lower * denominator)
            {
               lower = numerator / denominator;
               index = i;
            }
            else if(denominator > 0 && numerator < upper * denominator)
            {
               upper = numerator / denominator;
            }
            if(upper < lower - Number.MIN_VALUE)
            {
               return false;
            }
         }
         if(index >= 0)
         {
            output.fraction = lower;
            tMat = transform.R;
            tVec = this.m_normals[index];
            output.normal.x = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
            output.normal.y = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
            return true;
         }
         return false;
      }
      
      override public function ComputeAABB(aabb:b2AABB, xf:b2Transform) : void
      {
         var vX:Number = NaN;
         var vY:Number = NaN;
         var tMat:b2Mat22 = xf.R;
         var tVec:b2Vec2 = this.m_vertices[0];
         var lowerX:Number = xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
         var lowerY:Number = xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
         var upperX:Number = lowerX;
         var upperY:Number = lowerY;
         for(var i:int = 1; i < this.m_vertexCount; i++)
         {
            tVec = this.m_vertices[i];
            vX = xf.position.x + (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
            vY = xf.position.y + (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
            lowerX = lowerX < vX ? Number(lowerX) : Number(vX);
            lowerY = lowerY < vY ? Number(lowerY) : Number(vY);
            upperX = upperX > vX ? Number(upperX) : Number(vX);
            upperY = upperY > vY ? Number(upperY) : Number(vY);
         }
         aabb.lowerBound.x = lowerX - b2internal::m_radius;
         aabb.lowerBound.y = lowerY - b2internal::m_radius;
         aabb.upperBound.x = upperX + b2internal::m_radius;
         aabb.upperBound.y = upperY + b2internal::m_radius;
      }
      
      override public function ComputeMass(massData:b2MassData, density:Number) : void
      {
         var p2:b2Vec2 = null;
         var p3:b2Vec2 = null;
         var e1X:Number = NaN;
         var e1Y:Number = NaN;
         var e2X:Number = NaN;
         var e2Y:Number = NaN;
         var D:Number = NaN;
         var triangleArea:Number = NaN;
         var px:Number = NaN;
         var py:Number = NaN;
         var ex1:Number = NaN;
         var ey1:Number = NaN;
         var ex2:Number = NaN;
         var ey2:Number = NaN;
         var intx2:Number = NaN;
         var inty2:Number = NaN;
         if(this.m_vertexCount == 2)
         {
            massData.center.x = 0.5 * (this.m_vertices[0].x + this.m_vertices[1].x);
            massData.center.y = 0.5 * (this.m_vertices[0].y + this.m_vertices[1].y);
            massData.mass = 0;
            massData.I = 0;
            return;
         }
         var centerX:Number = 0;
         var centerY:Number = 0;
         var area:Number = 0;
         var I:Number = 0;
         var k_inv3:Number = 1 / 3;
         for(var i:int = 0; i < this.m_vertexCount; i++)
         {
            p2 = this.m_vertices[i];
            p3 = i + 1 < this.m_vertexCount ? this.m_vertices[int(i + 1)] : this.m_vertices[0];
            e1X = p2.x - 0;
            e1Y = p2.y - 0;
            e2X = p3.x - 0;
            e2Y = p3.y - 0;
            D = e1X * e2Y - e1Y * e2X;
            triangleArea = 0.5 * D;
            area += triangleArea;
            centerX += triangleArea * k_inv3 * (0 + p2.x + p3.x);
            centerY += triangleArea * k_inv3 * (0 + p2.y + p3.y);
            px = 0;
            py = 0;
            ex1 = e1X;
            ey1 = e1Y;
            ex2 = e2X;
            ey2 = e2Y;
            intx2 = k_inv3 * (0.25 * (ex1 * ex1 + ex2 * ex1 + ex2 * ex2) + (px * ex1 + px * ex2)) + 0.5 * px * px;
            inty2 = k_inv3 * (0.25 * (ey1 * ey1 + ey2 * ey1 + ey2 * ey2) + (py * ey1 + py * ey2)) + 0.5 * py * py;
            I += D * (intx2 + inty2);
         }
         massData.mass = density * area;
         centerX *= 1 / area;
         centerY *= 1 / area;
         massData.center.Set(centerX,centerY);
         massData.I = density * I;
      }
      
      override public function ComputeSubmergedArea(normal:b2Vec2, offset:Number, xf:b2Transform, c:b2Vec2) : Number
      {
         var i:int = 0;
         var p3:b2Vec2 = null;
         var isSubmerged:* = false;
         var md:b2MassData = null;
         var triangleArea:Number = NaN;
         var normalL:b2Vec2 = b2Math.MulTMV(xf.R,normal);
         var offsetL:Number = offset - b2Math.Dot(normal,xf.position);
         var depths:Vector.<Number> = new Vector.<Number>();
         var diveCount:int = 0;
         var intoIndex:int = -1;
         var outoIndex:int = -1;
         var lastSubmerged:Boolean = false;
         for(i = 0; i < this.m_vertexCount; i++)
         {
            depths[i] = b2Math.Dot(normalL,this.m_vertices[i]) - offsetL;
            isSubmerged = depths[i] < -Number.MIN_VALUE;
            if(i > 0)
            {
               if(isSubmerged)
               {
                  if(!lastSubmerged)
                  {
                     intoIndex = i - 1;
                     diveCount++;
                  }
               }
               else if(lastSubmerged)
               {
                  outoIndex = i - 1;
                  diveCount++;
               }
            }
            lastSubmerged = isSubmerged;
         }
         switch(diveCount)
         {
            case 0:
               if(lastSubmerged)
               {
                  md = new b2MassData();
                  this.ComputeMass(md,1);
                  c.SetV(b2Math.MulX(xf,md.center));
                  return md.mass;
               }
               return 0;
               break;
            case 1:
               if(intoIndex == -1)
               {
                  intoIndex = this.m_vertexCount - 1;
               }
               else
               {
                  outoIndex = this.m_vertexCount - 1;
               }
         }
         var intoIndex2:int = (intoIndex + 1) % this.m_vertexCount;
         var outoIndex2:int = (outoIndex + 1) % this.m_vertexCount;
         var intoLamdda:Number = (0 - depths[intoIndex]) / (depths[intoIndex2] - depths[intoIndex]);
         var outoLamdda:Number = (0 - depths[outoIndex]) / (depths[outoIndex2] - depths[outoIndex]);
         var intoVec:b2Vec2 = new b2Vec2(this.m_vertices[intoIndex].x * (1 - intoLamdda) + this.m_vertices[intoIndex2].x * intoLamdda,this.m_vertices[intoIndex].y * (1 - intoLamdda) + this.m_vertices[intoIndex2].y * intoLamdda);
         var outoVec:b2Vec2 = new b2Vec2(this.m_vertices[outoIndex].x * (1 - outoLamdda) + this.m_vertices[outoIndex2].x * outoLamdda,this.m_vertices[outoIndex].y * (1 - outoLamdda) + this.m_vertices[outoIndex2].y * outoLamdda);
         var area:Number = 0;
         var center:b2Vec2 = new b2Vec2();
         var p2:b2Vec2 = this.m_vertices[intoIndex2];
         i = intoIndex2;
         while(i != outoIndex2)
         {
            i = (i + 1) % this.m_vertexCount;
            if(i == outoIndex2)
            {
               p3 = outoVec;
            }
            else
            {
               p3 = this.m_vertices[i];
            }
            triangleArea = 0.5 * ((p2.x - intoVec.x) * (p3.y - intoVec.y) - (p2.y - intoVec.y) * (p3.x - intoVec.x));
            area += triangleArea;
            center.x += triangleArea * (intoVec.x + p2.x + p3.x) / 3;
            center.y += triangleArea * (intoVec.y + p2.y + p3.y) / 3;
            p2 = p3;
         }
         center.Multiply(1 / area);
         c.SetV(b2Math.MulX(xf,center));
         return area;
      }
      
      public function GetVertexCount() : int
      {
         return this.m_vertexCount;
      }
      
      public function GetVertices() : Vector.<b2Vec2>
      {
         return this.m_vertices;
      }
      
      public function GetNormals() : Vector.<b2Vec2>
      {
         return this.m_normals;
      }
      
      public function GetSupport(d:b2Vec2) : int
      {
         var value:Number = NaN;
         var bestIndex:int = 0;
         var bestValue:Number = this.m_vertices[0].x * d.x + this.m_vertices[0].y * d.y;
         for(var i:int = 1; i < this.m_vertexCount; i++)
         {
            value = this.m_vertices[i].x * d.x + this.m_vertices[i].y * d.y;
            if(value > bestValue)
            {
               bestIndex = i;
               bestValue = value;
            }
         }
         return bestIndex;
      }
      
      public function GetSupportVertex(d:b2Vec2) : b2Vec2
      {
         var value:Number = NaN;
         var bestIndex:int = 0;
         var bestValue:Number = this.m_vertices[0].x * d.x + this.m_vertices[0].y * d.y;
         for(var i:int = 1; i < this.m_vertexCount; i++)
         {
            value = this.m_vertices[i].x * d.x + this.m_vertices[i].y * d.y;
            if(value > bestValue)
            {
               bestIndex = i;
               bestValue = value;
            }
         }
         return this.m_vertices[bestIndex];
      }
      
      private function Validate() : Boolean
      {
         return false;
      }
      
      private function Reserve(count:int) : void
      {
         for(var i:int = this.m_vertices.length; i < count; i++)
         {
            this.m_vertices[i] = new b2Vec2();
            this.m_normals[i] = new b2Vec2();
         }
      }
   }
}
