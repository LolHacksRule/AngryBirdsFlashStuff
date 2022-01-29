package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Collision.Shapes.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   
   use namespace b2internal;
   
   public class b2Distance
   {
      
      private static var b2_gjkCalls:int;
      
      private static var b2_gjkIters:int;
      
      private static var b2_gjkMaxIters:int;
      
      private static var s_simplex:b2Simplex = new b2Simplex();
      
      private static var s_saveA:Vector.<int> = new Vector.<int>(3);
      
      private static var s_saveB:Vector.<int> = new Vector.<int>(3);
       
      
      public function b2Distance()
      {
         super();
      }
      
      public static function Distance(output:b2DistanceOutput, cache:b2SimplexCache, input:b2DistanceInput) : void
      {
         var i:int = 0;
         var p:b2Vec2 = null;
         var d:b2Vec2 = null;
         var vertex:b2SimplexVertex = null;
         var duplicate:Boolean = false;
         var rA:Number = NaN;
         var rB:Number = NaN;
         var normal:b2Vec2 = null;
         ++b2_gjkCalls;
         var proxyA:b2DistanceProxy = input.proxyA;
         var proxyB:b2DistanceProxy = input.proxyB;
         var transformA:b2Transform = input.transformA;
         var transformB:b2Transform = input.transformB;
         var simplex:b2Simplex = s_simplex;
         simplex.ReadCache(cache,proxyA,transformA,proxyB,transformB);
         var vertices:Vector.<b2SimplexVertex> = simplex.m_vertices;
         var k_maxIters:int = 20;
         var saveA:Vector.<int> = s_saveA;
         var saveB:Vector.<int> = s_saveB;
         var saveCount:int = 0;
         var closestPoint:b2Vec2 = simplex.GetClosestPoint();
         var distanceSqr1:Number = closestPoint.LengthSquared();
         var distanceSqr2:Number = distanceSqr1;
         var iter:int = 0;
         while(iter < k_maxIters)
         {
            saveCount = simplex.m_count;
            for(i = 0; i < saveCount; i++)
            {
               saveA[i] = vertices[i].indexA;
               saveB[i] = vertices[i].indexB;
            }
            switch(simplex.m_count)
            {
               case 1:
                  break;
               case 2:
                  simplex.Solve2();
                  break;
               case 3:
                  simplex.Solve3();
                  break;
               default:
                  b2Settings.b2Assert(false);
            }
            if(simplex.m_count == 3)
            {
               break;
            }
            p = simplex.GetClosestPoint();
            distanceSqr2 = p.LengthSquared();
            if(distanceSqr2 > distanceSqr1)
            {
            }
            distanceSqr1 = distanceSqr2;
            d = simplex.GetSearchDirection();
            if(d.LengthSquared() < Number.MIN_VALUE * Number.MIN_VALUE)
            {
               break;
            }
            vertex = vertices[simplex.m_count];
            vertex.indexA = proxyA.GetSupport(b2Math.MulTMV(transformA.R,d.GetNegative()));
            vertex.wA = b2Math.MulX(transformA,proxyA.GetVertex(vertex.indexA));
            vertex.indexB = proxyB.GetSupport(b2Math.MulTMV(transformB.R,d));
            vertex.wB = b2Math.MulX(transformB,proxyB.GetVertex(vertex.indexB));
            vertex.w = b2Math.SubtractVV(vertex.wB,vertex.wA);
            iter++;
            ++b2_gjkIters;
            duplicate = false;
            for(i = 0; i < saveCount; i++)
            {
               if(vertex.indexA == saveA[i] && vertex.indexB == saveB[i])
               {
                  duplicate = true;
                  break;
               }
            }
            if(duplicate)
            {
               break;
            }
            ++simplex.m_count;
         }
         b2_gjkMaxIters = b2Math.Max(b2_gjkMaxIters,iter);
         simplex.GetWitnessPoints(output.pointA,output.pointB);
         output.distance = b2Math.SubtractVV(output.pointA,output.pointB).Length();
         output.iterations = iter;
         simplex.WriteCache(cache);
         if(input.useRadii)
         {
            rA = proxyA.m_radius;
            rB = proxyB.m_radius;
            if(output.distance > rA + rB && output.distance > Number.MIN_VALUE)
            {
               output.distance -= rA + rB;
               normal = b2Math.SubtractVV(output.pointB,output.pointA);
               normal.Normalize();
               output.pointA.x += rA * normal.x;
               output.pointA.y += rA * normal.y;
               output.pointB.x -= rB * normal.x;
               output.pointB.y -= rB * normal.y;
            }
            else
            {
               p = new b2Vec2();
               p.x = 0.5 * (output.pointA.x + output.pointB.x);
               p.y = 0.5 * (output.pointA.y + output.pointB.y);
               output.pointA.x = output.pointB.x = p.x;
               output.pointA.y = output.pointB.y = p.y;
               output.distance = 0;
            }
         }
      }
   }
}
