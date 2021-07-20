package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Common.Math.b2Sweep;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Collision.b2ContactID;
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Collision.b2ManifoldPoint;
   import com.rovio.Box2D.Collision.b2TOIInput;
   import com.rovio.Box2D.Collision.b2TimeOfImpact;
   import com.rovio.Box2D.Collision.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var e_sensorFlag:uint = 1;
      
      b2internal static var e_continuousFlag:uint = 2;
      
      b2internal static var e_islandFlag:uint = 4;
      
      b2internal static var e_toiFlag:uint = 8;
      
      b2internal static var e_touchingFlag:uint = 16;
      
      b2internal static var e_enabledFlag:uint = 32;
      
      b2internal static var e_filterFlag:uint = 64;
      
      private static var s_input:b2TOIInput = new b2TOIInput();
       
      
      b2internal var m_flags:uint;
      
      b2internal var m_prev:b2Contact;
      
      b2internal var m_next:b2Contact;
      
      b2internal var m_nodeA:b2ContactEdge;
      
      b2internal var m_nodeB:b2ContactEdge;
      
      b2internal var m_fixtureA:b2Fixture;
      
      b2internal var m_fixtureB:b2Fixture;
      
      b2internal var m_manifold:b2Manifold;
      
      b2internal var m_oldManifold:b2Manifold;
      
      b2internal var m_toi:Number;
      
      public function b2Contact()
      {
         this.m_nodeA = new b2ContactEdge();
         this.m_nodeB = new b2ContactEdge();
         this.m_manifold = new b2Manifold();
         this.m_oldManifold = new b2Manifold();
         super();
      }
      
      public function GetManifold() : b2Manifold
      {
         return this.m_manifold;
      }
      
      public function GetWorldManifold(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.m_fixtureA.GetBody();
         var _loc3_:b2Body = this.m_fixtureB.GetBody();
         var _loc4_:b2Shape = this.m_fixtureA.GetShape();
         var _loc5_:b2Shape = this.m_fixtureB.GetShape();
         param1.Initialize(this.m_manifold,_loc2_.GetTransform(),_loc4_.m_radius,_loc3_.GetTransform(),_loc5_.m_radius);
      }
      
      public function IsTouching() : Boolean
      {
         return (this.m_flags & b2internal::<[) == b2internal::<[;
      }
      
      public function IsContinuous() : Boolean
      {
         return (this.m_flags & b2internal::#!q) == b2internal::#!q;
      }
      
      public function SetSensor(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= b2internal::,R;
         }
         else
         {
            this.m_flags &= ~b2internal::,R;
         }
      }
      
      public function IsSensor() : Boolean
      {
         return (this.m_flags & b2internal::,R) == b2internal::,R;
      }
      
      public function SetEnabled(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= b2internal::[!];
         }
         else
         {
            this.m_flags &= ~b2internal::[!];
         }
      }
      
      public function IsEnabled() : Boolean
      {
         return (this.m_flags & b2internal::[!]) == b2internal::[!];
      }
      
      public function GetNext() : b2Contact
      {
         return this.m_next;
      }
      
      public function GetFixtureA() : b2Fixture
      {
         return this.m_fixtureA;
      }
      
      public function GetFixtureB() : b2Fixture
      {
         return this.m_fixtureB;
      }
      
      public function FlagForFiltering() : void
      {
         this.m_flags |= b2internal::"8;
      }
      
      b2internal function Reset(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.m_flags = b2internal::[!];
         if(!param1 || !param2)
         {
            this.m_fixtureA = null;
            this.m_fixtureB = null;
            return;
         }
         if(param1.IsSensor() || param2.IsSensor())
         {
            this.m_flags |= b2internal::,R;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.GetType() != b2Body.b2_dynamicBody || _loc3_.IsBullet() || _loc4_.GetType() != b2Body.b2_dynamicBody || _loc4_.IsBullet())
         {
            this.m_flags |= b2internal::#!q;
         }
         this.m_fixtureA = param1;
         this.m_fixtureB = param2;
         this.m_manifold.m_pointCount = 0;
         this.m_prev = null;
         this.m_next = null;
         this.m_nodeA.contact = null;
         this.m_nodeA.prev = null;
         this.m_nodeA.next = null;
         this.m_nodeA.other = null;
         this.m_nodeB.contact = null;
         this.m_nodeB.prev = null;
         this.m_nodeB.next = null;
         this.m_nodeB.other = null;
      }
      
      b2internal function Update(param1:b2ContactListener) : void
      {
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.m_oldManifold;
         this.m_oldManifold = this.m_manifold;
         this.m_manifold = _loc2_;
         this.m_flags |= b2internal::[!];
         var _loc3_:* = false;
         var _loc4_:* = (this.m_flags & b2internal::<[) == b2internal::<[;
         var _loc5_:b2Body = this.m_fixtureA.m_body;
         var _loc6_:b2Body = this.m_fixtureB.m_body;
         var _loc7_:Boolean = this.m_fixtureA.m_aabb.TestOverlap(this.m_fixtureB.m_aabb);
         if(this.m_flags & b2internal::,R)
         {
            if(_loc7_)
            {
               _loc8_ = this.m_fixtureA.GetShape();
               _loc9_ = this.m_fixtureB.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.TestOverlap(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.m_manifold.m_pointCount = 0;
         }
         else
         {
            if(_loc5_.GetType() != b2Body.b2_dynamicBody || _loc5_.IsBullet() || _loc6_.GetType() != b2Body.b2_dynamicBody || _loc6_.IsBullet())
            {
               this.m_flags |= b2internal::#!q;
            }
            else
            {
               this.m_flags &= ~b2internal::#!q;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.m_manifold.m_pointCount > 0;
               _loc12_ = 0;
               while(_loc12_ < this.m_manifold.m_pointCount)
               {
                  (_loc13_ = this.m_manifold.m_points[_loc12_]).m_normalImpulse = 0;
                  _loc13_.m_tangentImpulse = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.m_oldManifold.m_pointCount)
                  {
                     if((_loc16_ = this.m_oldManifold.m_points[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.m_normalImpulse = _loc16_.m_normalImpulse;
                        _loc13_.m_tangentImpulse = _loc16_.m_tangentImpulse;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.m_manifold.m_pointCount = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.m_flags |= b2internal::<[;
         }
         else
         {
            this.m_flags &= ~b2internal::<[;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.m_flags & b2internal::,R) == 0)
         {
            param1.PreSolve(this,this.m_oldManifold);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function ComputeTOI(param1:b2Sweep, param2:b2Sweep) : Number
      {
         s_input.proxyA.Set(this.m_fixtureA.GetShape());
         s_input.proxyB.Set(this.m_fixtureB.GetShape());
         s_input.sweepA = param1;
         s_input.sweepB = param2;
         s_input.tolerance = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.TimeOfImpact(s_input);
      }
   }
}
