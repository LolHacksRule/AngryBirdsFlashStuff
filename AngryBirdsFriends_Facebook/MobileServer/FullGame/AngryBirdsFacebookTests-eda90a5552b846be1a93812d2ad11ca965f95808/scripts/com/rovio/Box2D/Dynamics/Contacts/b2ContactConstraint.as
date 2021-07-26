package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Dynamics.*;
   
   use namespace b2internal;
   
   public class b2ContactConstraint
   {
       
      
      public var points:Vector.<b2ContactConstraintPoint>;
      
      public var localPlaneNormal:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var normalMass:b2Mat22;
      
      public var K:b2Mat22;
      
      public var bodyA:b2Body;
      
      public var bodyB:b2Body;
      
      public var type:int;
      
      public var radius:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var pointCount:int;
      
      public var manifold:b2Manifold;
      
      public function b2ContactConstraint()
      {
         this.localPlaneNormal = new b2Vec2();
         this.localPoint = new b2Vec2();
         this.normal = new b2Vec2();
         this.normalMass = new b2Mat22();
         this.K = new b2Mat22();
         super();
         this.points = new Vector.<b2ContactConstraintPoint>(b2Settings.b2_maxManifoldPoints);
         for(var i:int = 0; i < b2Settings.b2_maxManifoldPoints; i++)
         {
            this.points[i] = new b2ContactConstraintPoint();
         }
      }
   }
}
