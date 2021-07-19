package com.rovio.Box2D.Collision
{
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   
   use namespace b2internal;
   
   public class b2Manifold
   {
      
      public static const e_circles:int = 1;
      
      public static const e_faceA:int = 2;
      
      public static const e_faceB:int = 4;
       
      
      public var m_points:Vector.<b2ManifoldPoint>;
      
      public var m_localPlaneNormal:b2Vec2;
      
      public var m_localPoint:b2Vec2;
      
      public var m_type:int;
      
      public var m_pointCount:int = 0;
      
      public function b2Manifold()
      {
         super();
         this.m_points = new Vector.<b2ManifoldPoint>(b2Settings.b2_maxManifoldPoints);
         for(var i:int = 0; i < b2Settings.b2_maxManifoldPoints; i++)
         {
            this.m_points[i] = new b2ManifoldPoint();
         }
         this.m_localPlaneNormal = new b2Vec2();
         this.m_localPoint = new b2Vec2();
      }
      
      public function Reset() : void
      {
         for(var i:int = 0; i < b2Settings.b2_maxManifoldPoints; i++)
         {
            (this.m_points[i] as b2ManifoldPoint).Reset();
         }
         this.m_localPlaneNormal.SetZero();
         this.m_localPoint.SetZero();
         this.m_type = 0;
         this.m_pointCount = 0;
      }
      
      public function Set(m:b2Manifold) : void
      {
         this.m_pointCount = m.m_pointCount;
         for(var i:int = 0; i < b2Settings.b2_maxManifoldPoints; i++)
         {
            (this.m_points[i] as b2ManifoldPoint).Set(m.m_points[i]);
         }
         this.m_localPlaneNormal.SetV(m.m_localPlaneNormal);
         this.m_localPoint.SetV(m.m_localPoint);
         this.m_type = m.m_type;
      }
      
      public function Copy() : b2Manifold
      {
         var copy:b2Manifold = new b2Manifold();
         copy.Set(this);
         return copy;
      }
   }
}
