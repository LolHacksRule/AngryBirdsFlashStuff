package com.rovio.Box2D.Collision.Shapes
{
   import com.rovio.Box2D.Collision.b2AABB;
   import com.rovio.Box2D.Collision.b2Distance;
   import com.rovio.Box2D.Collision.b2DistanceInput;
   import com.rovio.Box2D.Collision.b2DistanceOutput;
   import com.rovio.Box2D.Collision.b2DistanceProxy;
   import com.rovio.Box2D.Collision.b2RayCastInput;
   import com.rovio.Box2D.Collision.b2RayCastOutput;
   import com.rovio.Box2D.Collision.b2SimplexCache;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   
   use namespace b2internal;
   
   public class b2Shape
   {
      
      b2internal static const e_unknownShape:int = -1;
      
      b2internal static const e_circleShape:int = 0;
      
      b2internal static const e_polygonShape:int = 1;
      
      b2internal static const e_edgeShape:int = 2;
      
      b2internal static const e_shapeTypeCount:int = 3;
      
      public static const e_hitCollide:int = 1;
      
      public static const e_missCollide:int = 0;
      
      public static const e_startsInsideCollide:int = -1;
       
      
      b2internal var m_type:int;
      
      b2internal var m_radius:Number;
      
      public function b2Shape()
      {
         super();
         this.m_type = b2internal::e_unknownShape;
         this.m_radius = b2Settings.b2_linearSlop;
      }
      
      public static function TestOverlap(param1:b2Shape, param2:b2Transform, param3:b2Shape, param4:b2Transform) : Boolean
      {
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).proxyA = new b2DistanceProxy();
         _loc5_.proxyA.Set(param1);
         _loc5_.proxyB = new b2DistanceProxy();
         _loc5_.proxyB.Set(param3);
         _loc5_.transformA = param2;
         _loc5_.transformB = param4;
         _loc5_.useRadii = true;
         var _loc6_:b2SimplexCache;
         (_loc6_ = new b2SimplexCache()).count = 0;
         var _loc7_:b2DistanceOutput = new b2DistanceOutput();
         b2Distance.Distance(_loc7_,_loc6_,_loc5_);
         return _loc7_.distance < 10 * Number.MIN_VALUE;
      }
      
      public function Copy() : b2Shape
      {
         return null;
      }
      
      public function Set(param1:b2Shape) : void
      {
         this.m_radius = param1.m_radius;
      }
      
      public function GetType() : int
      {
         return this.m_type;
      }
      
      public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         return false;
      }
      
      public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
      }
      
      public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
      }
      
      public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         return 0;
      }
   }
}
