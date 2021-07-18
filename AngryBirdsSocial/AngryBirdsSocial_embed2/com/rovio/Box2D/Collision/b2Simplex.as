package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Collision.Shapes.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   
   class b2Simplex
   {
       
      
      public var m_v1:b2SimplexVertex;
      
      public var m_v2:b2SimplexVertex;
      
      public var m_v3:b2SimplexVertex;
      
      public var m_vertices:Vector.<b2SimplexVertex>;
      
      public var m_count:int;
      
      function b2Simplex()
      {
         this.m_v1 = new b2SimplexVertex();
         this.m_v2 = new b2SimplexVertex();
         this.m_v3 = new b2SimplexVertex();
         this.m_vertices = new Vector.<b2SimplexVertex>(3);
         super();
         this.m_vertices[0] = this.m_v1;
         this.m_vertices[1] = this.m_v2;
         this.m_vertices[2] = this.m_v3;
      }
      
      public function ReadCache(cache:b2SimplexCache, proxyA:b2DistanceProxy, transformA:b2Transform, proxyB:b2DistanceProxy, transformB:b2Transform) : void
      {
         var wALocal:b2Vec2 = null;
         var wBLocal:b2Vec2 = null;
         var v:b2SimplexVertex = null;
         var metric1:Number = NaN;
         var metric2:Number = NaN;
         b2Settings.b2Assert(0 <= cache.count && cache.count <= 3);
         this.m_count = cache.count;
         var vertices:Vector.<b2SimplexVertex> = this.m_vertices;
         for(var i:int = 0; i < this.m_count; i++)
         {
            v = vertices[i];
            v.indexA = cache.indexA[i];
            v.indexB = cache.indexB[i];
            wALocal = proxyA.GetVertex(v.indexA);
            wBLocal = proxyB.GetVertex(v.indexB);
            v.wA = b2Math.MulX(transformA,wALocal);
            v.wB = b2Math.MulX(transformB,wBLocal);
            v.w = b2Math.SubtractVV(v.wB,v.wA);
            v.a = 0;
         }
         if(this.m_count > 1)
         {
            metric1 = cache.metric;
            metric2 = this.GetMetric();
            if(metric2 < 0.5 * metric1 || 2 * metric1 < metric2 || metric2 < Number.MIN_VALUE)
            {
               this.m_count = 0;
            }
         }
         if(this.m_count == 0)
         {
            v = vertices[0];
            v.indexA = 0;
            v.indexB = 0;
            wALocal = proxyA.GetVertex(0);
            wBLocal = proxyB.GetVertex(0);
            v.wA = b2Math.MulX(transformA,wALocal);
            v.wB = b2Math.MulX(transformB,wBLocal);
            v.w = b2Math.SubtractVV(v.wB,v.wA);
            this.m_count = 1;
         }
      }
      
      public function WriteCache(cache:b2SimplexCache) : void
      {
         cache.metric = this.GetMetric();
         cache.count = uint(this.m_count);
         var vertices:Vector.<b2SimplexVertex> = this.m_vertices;
         for(var i:int = 0; i < this.m_count; i++)
         {
            cache.indexA[i] = uint(vertices[i].indexA);
            cache.indexB[i] = uint(vertices[i].indexB);
         }
      }
      
      public function GetSearchDirection() : b2Vec2
      {
         var e12:b2Vec2 = null;
         var sgn:Number = NaN;
         switch(this.m_count)
         {
            case 1:
               return this.m_v1.w.GetNegative();
            case 2:
               e12 = b2Math.SubtractVV(this.m_v2.w,this.m_v1.w);
               sgn = b2Math.CrossVV(e12,this.m_v1.w.GetNegative());
               if(sgn > 0)
               {
                  return b2Math.CrossFV(1,e12);
               }
               return b2Math.CrossVF(e12,1);
               break;
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function GetClosestPoint() : b2Vec2
      {
         switch(this.m_count)
         {
            case 0:
               b2Settings.b2Assert(false);
               return new b2Vec2();
            case 1:
               return this.m_v1.w;
            case 2:
               return new b2Vec2(this.m_v1.a * this.m_v1.w.x + this.m_v2.a * this.m_v2.w.x,this.m_v1.a * this.m_v1.w.y + this.m_v2.a * this.m_v2.w.y);
            default:
               b2Settings.b2Assert(false);
               return new b2Vec2();
         }
      }
      
      public function GetWitnessPoints(pA:b2Vec2, pB:b2Vec2) : void
      {
         switch(this.m_count)
         {
            case 0:
               b2Settings.b2Assert(false);
               break;
            case 1:
               pA.SetV(this.m_v1.wA);
               pB.SetV(this.m_v1.wB);
               break;
            case 2:
               pA.x = this.m_v1.a * this.m_v1.wA.x + this.m_v2.a * this.m_v2.wA.x;
               pA.y = this.m_v1.a * this.m_v1.wA.y + this.m_v2.a * this.m_v2.wA.y;
               pB.x = this.m_v1.a * this.m_v1.wB.x + this.m_v2.a * this.m_v2.wB.x;
               pB.y = this.m_v1.a * this.m_v1.wB.y + this.m_v2.a * this.m_v2.wB.y;
               break;
            case 3:
               pB.x = pA.x = this.m_v1.a * this.m_v1.wA.x + this.m_v2.a * this.m_v2.wA.x + this.m_v3.a * this.m_v3.wA.x;
               pB.y = pA.y = this.m_v1.a * this.m_v1.wA.y + this.m_v2.a * this.m_v2.wA.y + this.m_v3.a * this.m_v3.wA.y;
               break;
            default:
               b2Settings.b2Assert(false);
         }
      }
      
      public function GetMetric() : Number
      {
         switch(this.m_count)
         {
            case 0:
               b2Settings.b2Assert(false);
               return 0;
            case 1:
               return 0;
            case 2:
               return b2Math.SubtractVV(this.m_v1.w,this.m_v2.w).Length();
            case 3:
               return b2Math.CrossVV(b2Math.SubtractVV(this.m_v2.w,this.m_v1.w),b2Math.SubtractVV(this.m_v3.w,this.m_v1.w));
            default:
               b2Settings.b2Assert(false);
               return 0;
         }
      }
      
      public function Solve2() : void
      {
         var w1:b2Vec2 = this.m_v1.w;
         var w2:b2Vec2 = this.m_v2.w;
         var e12:b2Vec2 = b2Math.SubtractVV(w2,w1);
         var d12_2:Number = -(w1.x * e12.x + w1.y * e12.y);
         if(d12_2 <= 0)
         {
            this.m_v1.a = 1;
            this.m_count = 1;
            return;
         }
         var d12_1:Number = w2.x * e12.x + w2.y * e12.y;
         if(d12_1 <= 0)
         {
            this.m_v2.a = 1;
            this.m_count = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         var inv_d12:Number = 1 / (d12_1 + d12_2);
         this.m_v1.a = d12_1 * inv_d12;
         this.m_v2.a = d12_2 * inv_d12;
         this.m_count = 2;
      }
      
      public function Solve3() : void
      {
         var inv_d12:Number = NaN;
         var inv_d13:Number = NaN;
         var inv_d23:Number = NaN;
         var w1:b2Vec2 = this.m_v1.w;
         var w2:b2Vec2 = this.m_v2.w;
         var w3:b2Vec2 = this.m_v3.w;
         var e12:b2Vec2 = b2Math.SubtractVV(w2,w1);
         var w1e12:Number = b2Math.Dot(w1,e12);
         var w2e12:Number = b2Math.Dot(w2,e12);
         var d12_1:Number = w2e12;
         var d12_2:Number = -w1e12;
         var e13:b2Vec2 = b2Math.SubtractVV(w3,w1);
         var w1e13:Number = b2Math.Dot(w1,e13);
         var w3e13:Number = b2Math.Dot(w3,e13);
         var d13_1:Number = w3e13;
         var d13_2:Number = -w1e13;
         var e23:b2Vec2 = b2Math.SubtractVV(w3,w2);
         var w2e23:Number = b2Math.Dot(w2,e23);
         var w3e23:Number = b2Math.Dot(w3,e23);
         var d23_1:Number = w3e23;
         var d23_2:Number = -w2e23;
         var n123:Number = b2Math.CrossVV(e12,e13);
         var d123_1:Number = n123 * b2Math.CrossVV(w2,w3);
         var d123_2:Number = n123 * b2Math.CrossVV(w3,w1);
         var d123_3:Number = n123 * b2Math.CrossVV(w1,w2);
         if(d12_2 <= 0 && d13_2 <= 0)
         {
            this.m_v1.a = 1;
            this.m_count = 1;
            return;
         }
         if(d12_1 > 0 && d12_2 > 0 && d123_3 <= 0)
         {
            inv_d12 = 1 / (d12_1 + d12_2);
            this.m_v1.a = d12_1 * inv_d12;
            this.m_v2.a = d12_2 * inv_d12;
            this.m_count = 2;
            return;
         }
         if(d13_1 > 0 && d13_2 > 0 && d123_2 <= 0)
         {
            inv_d13 = 1 / (d13_1 + d13_2);
            this.m_v1.a = d13_1 * inv_d13;
            this.m_v3.a = d13_2 * inv_d13;
            this.m_count = 2;
            this.m_v2.Set(this.m_v3);
            return;
         }
         if(d12_1 <= 0 && d23_2 <= 0)
         {
            this.m_v2.a = 1;
            this.m_count = 1;
            this.m_v1.Set(this.m_v2);
            return;
         }
         if(d13_1 <= 0 && d23_1 <= 0)
         {
            this.m_v3.a = 1;
            this.m_count = 1;
            this.m_v1.Set(this.m_v3);
            return;
         }
         if(d23_1 > 0 && d23_2 > 0 && d123_1 <= 0)
         {
            inv_d23 = 1 / (d23_1 + d23_2);
            this.m_v2.a = d23_1 * inv_d23;
            this.m_v3.a = d23_2 * inv_d23;
            this.m_count = 2;
            this.m_v1.Set(this.m_v3);
            return;
         }
         var inv_d123:Number = 1 / (d123_1 + d123_2 + d123_3);
         this.m_v1.a = d123_1 * inv_d123;
         this.m_v2.a = d123_2 * inv_d123;
         this.m_v3.a = d123_3 * inv_d123;
         this.m_count = 3;
      }
   }
}
