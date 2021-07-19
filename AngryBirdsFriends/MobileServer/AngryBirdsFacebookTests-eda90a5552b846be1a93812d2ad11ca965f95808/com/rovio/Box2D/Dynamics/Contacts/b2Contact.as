package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Collision.b2ContactID;
   import com.rovio.Box2D.Collision.b2Manifold;
   import com.rovio.Box2D.Collision.b2ManifoldPoint;
   import com.rovio.Box2D.Collision.b2TOIInput;
   import com.rovio.Box2D.Collision.b2TimeOfImpact;
   import com.rovio.Box2D.Collision.b2WorldManifold;
   import com.rovio.Box2D.Common.Math.b2Sweep;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2ContactListener;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   
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
      
      b2internal var m_reverse:Boolean = false;
      
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
      
      public function GetWorldManifold(worldManifold:b2WorldManifold) : void
      {
         var bodyA:b2Body = this.m_fixtureA.GetBody();
         var bodyB:b2Body = this.m_fixtureB.GetBody();
         var shapeA:b2Shape = this.m_fixtureA.GetShape();
         var shapeB:b2Shape = this.m_fixtureB.GetShape();
         worldManifold.Initialize(this.m_manifold,bodyA.GetTransform(),shapeA.m_radius,bodyB.GetTransform(),shapeB.m_radius);
      }
      
      public function IsTouching() : Boolean
      {
         return (this.m_flags & b2internal::e_touchingFlag) == b2internal::e_touchingFlag;
      }
      
      public function IsContinuous() : Boolean
      {
         return (this.m_flags & b2internal::e_continuousFlag) == b2internal::e_continuousFlag;
      }
      
      public function SetSensor(sensor:Boolean) : void
      {
         if(sensor)
         {
            this.m_flags |= b2internal::e_sensorFlag;
         }
         else
         {
            this.m_flags &= ~b2internal::e_sensorFlag;
         }
      }
      
      public function IsSensor() : Boolean
      {
         return (this.m_flags & b2internal::e_sensorFlag) == b2internal::e_sensorFlag;
      }
      
      public function SetEnabled(flag:Boolean) : void
      {
         if(flag)
         {
            this.m_flags |= b2internal::e_enabledFlag;
         }
         else
         {
            this.m_flags &= ~b2internal::e_enabledFlag;
         }
      }
      
      public function IsEnabled() : Boolean
      {
         return (this.m_flags & b2internal::e_enabledFlag) == b2internal::e_enabledFlag;
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
         this.m_flags |= b2internal::e_filterFlag;
      }
      
      b2internal function Reset(fixtureA:b2Fixture = null, fixtureB:b2Fixture = null) : void
      {
         this.m_flags = b2internal::e_enabledFlag;
         if(!fixtureA || !fixtureB)
         {
            this.m_fixtureA = null;
            this.m_fixtureB = null;
            return;
         }
         if(fixtureA.IsSensor() || fixtureB.IsSensor())
         {
            this.m_flags |= b2internal::e_sensorFlag;
         }
         var bodyA:b2Body = fixtureA.GetBody();
         var bodyB:b2Body = fixtureB.GetBody();
         if(bodyA.GetType() != b2Body.b2_dynamicBody || bodyA.IsBullet() || bodyB.GetType() != b2Body.b2_dynamicBody || bodyB.IsBullet())
         {
            this.m_flags |= b2internal::e_continuousFlag;
         }
         this.m_fixtureA = fixtureA;
         this.m_fixtureB = fixtureB;
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
      
      b2internal function Update(listener:b2ContactListener) : void
      {
         var shapeA:b2Shape = null;
         var shapeB:b2Shape = null;
         var xfA:b2Transform = null;
         var xfB:b2Transform = null;
         var i:int = 0;
         var mp2:b2ManifoldPoint = null;
         var id2:b2ContactID = null;
         var j:int = 0;
         var mp1:b2ManifoldPoint = null;
         var tManifold:b2Manifold = this.m_oldManifold;
         this.m_oldManifold = this.m_manifold;
         this.m_manifold = tManifold;
         this.m_flags |= b2internal::e_enabledFlag;
         var touching:* = false;
         var wasTouching:* = (this.m_flags & b2internal::e_touchingFlag) == b2internal::e_touchingFlag;
         var bodyA:b2Body = this.m_fixtureA.m_body;
         var bodyB:b2Body = this.m_fixtureB.m_body;
         var aabbOverlap:Boolean = this.m_fixtureA.m_aabb.TestOverlap(this.m_fixtureB.m_aabb);
         if(this.m_flags & b2internal::e_sensorFlag)
         {
            if(aabbOverlap)
            {
               shapeA = this.m_fixtureA.GetShape();
               shapeB = this.m_fixtureB.GetShape();
               xfA = bodyA.GetTransform();
               xfB = bodyB.GetTransform();
               touching = Boolean(b2Shape.TestOverlap(shapeA,xfA,shapeB,xfB));
            }
            this.m_manifold.m_pointCount = 0;
         }
         else
         {
            if(bodyA.GetType() != b2Body.b2_dynamicBody || bodyA.IsBullet() || bodyB.GetType() != b2Body.b2_dynamicBody || bodyB.IsBullet())
            {
               this.m_flags |= b2internal::e_continuousFlag;
            }
            else
            {
               this.m_flags &= ~b2internal::e_continuousFlag;
            }
            if(aabbOverlap)
            {
               this.Evaluate();
               touching = this.m_manifold.m_pointCount > 0;
               for(i = 0; i < this.m_manifold.m_pointCount; i++)
               {
                  mp2 = this.m_manifold.m_points[i];
                  mp2.m_normalImpulse = 0;
                  mp2.m_tangentImpulse = 0;
                  id2 = mp2.m_id;
                  for(j = 0; j < this.m_oldManifold.m_pointCount; j++)
                  {
                     mp1 = this.m_oldManifold.m_points[j];
                     if(mp1.m_id.key == id2.key)
                     {
                        mp2.m_normalImpulse = mp1.m_normalImpulse;
                        mp2.m_tangentImpulse = mp1.m_tangentImpulse;
                        break;
                     }
                  }
               }
            }
            else
            {
               this.m_manifold.m_pointCount = 0;
            }
            if(touching != wasTouching)
            {
               bodyA.SetAwake(true);
               bodyB.SetAwake(true);
            }
         }
         if(touching)
         {
            this.m_flags |= b2internal::e_touchingFlag;
         }
         else
         {
            this.m_flags &= ~b2internal::e_touchingFlag;
         }
         if(wasTouching == false && touching == true)
         {
            listener.BeginContact(this);
         }
         if(wasTouching == true && touching == false)
         {
            listener.EndContact(this);
         }
         if((this.m_flags & b2internal::e_sensorFlag) == 0)
         {
            listener.PreSolve(this,this.m_oldManifold);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function ComputeTOI(sweepA:b2Sweep, sweepB:b2Sweep) : Number
      {
         s_input.proxyA.Set(this.m_fixtureA.GetShape());
         s_input.proxyB.Set(this.m_fixtureB.GetShape());
         s_input.sweepA = sweepA;
         s_input.sweepB = sweepB;
         s_input.tolerance = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.TimeOfImpact(s_input);
      }
   }
}
