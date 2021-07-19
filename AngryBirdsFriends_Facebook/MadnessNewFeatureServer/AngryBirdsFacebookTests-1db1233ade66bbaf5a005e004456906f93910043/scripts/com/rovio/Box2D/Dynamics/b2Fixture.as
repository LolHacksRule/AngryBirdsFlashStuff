package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Collision.IBroadPhase;
   import com.rovio.Box2D.Collision.Shapes.b2MassData;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Collision.b2AABB;
   import com.rovio.Box2D.Collision.b2RayCastInput;
   import com.rovio.Box2D.Collision.b2RayCastOutput;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.Contacts.b2ContactEdge;
   
   use namespace b2internal;
   
   public class b2Fixture
   {
       
      
      private var m_massData:b2MassData;
      
      b2internal var t1_aabb:b2AABB;
      
      b2internal var t2_aabb:b2AABB;
      
      b2internal var m_aabb:b2AABB;
      
      b2internal var m_density:Number;
      
      b2internal var m_next:b2Fixture;
      
      b2internal var m_body:b2Body;
      
      b2internal var m_shape:b2Shape;
      
      b2internal var m_friction:Number;
      
      b2internal var m_restitution:Number;
      
      b2internal var m_proxy;
      
      b2internal var m_filter:b2FilterData;
      
      b2internal var m_isSensor:Boolean;
      
      b2internal var m_userData;
      
      public function b2Fixture()
      {
         this.m_filter = new b2FilterData();
         super();
         this.m_aabb = new b2AABB();
         this.m_userData = null;
         this.m_body = null;
         this.m_next = null;
         this.m_shape = null;
         this.m_density = 0;
         this.m_friction = 0;
         this.m_restitution = 0;
      }
      
      public function GetType() : int
      {
         return this.m_shape.GetType();
      }
      
      public function GetShape() : b2Shape
      {
         return this.m_shape;
      }
      
      public function SetSensor(sensor:Boolean) : void
      {
         var contact:b2Contact = null;
         var fixtureA:b2Fixture = null;
         var fixtureB:b2Fixture = null;
         if(this.m_isSensor == sensor)
         {
            return;
         }
         this.m_isSensor = sensor;
         if(this.m_body == null)
         {
            return;
         }
         var edge:b2ContactEdge = this.m_body.GetContactList();
         while(edge)
         {
            contact = edge.contact;
            fixtureA = contact.GetFixtureA();
            fixtureB = contact.GetFixtureB();
            if(fixtureA == this || fixtureB == this)
            {
               contact.SetSensor(fixtureA.IsSensor() || fixtureB.IsSensor());
            }
            edge = edge.next;
         }
      }
      
      public function IsSensor() : Boolean
      {
         return this.m_isSensor;
      }
      
      public function SetFilterData(filter:b2FilterData) : void
      {
         var contact:b2Contact = null;
         var fixtureA:b2Fixture = null;
         var fixtureB:b2Fixture = null;
         this.m_filter = filter.Copy();
         if(this.m_body)
         {
            return;
         }
         var edge:b2ContactEdge = this.m_body.GetContactList();
         while(edge)
         {
            contact = edge.contact;
            fixtureA = contact.GetFixtureA();
            fixtureB = contact.GetFixtureB();
            if(fixtureA == this || fixtureB == this)
            {
               contact.FlagForFiltering();
            }
            edge = edge.next;
         }
      }
      
      public function GetFilterData() : b2FilterData
      {
         return this.m_filter.Copy();
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function GetNext() : b2Fixture
      {
         return this.m_next;
      }
      
      public function GetUserData() : *
      {
         return this.m_userData;
      }
      
      public function SetUserData(data:*) : void
      {
         this.m_userData = data;
      }
      
      public function TestPoint(p:b2Vec2) : Boolean
      {
         return this.m_shape.TestPoint(this.m_body.GetTransform(),p);
      }
      
      public function RayCast(output:b2RayCastOutput, input:b2RayCastInput) : Boolean
      {
         return this.m_shape.RayCast(output,input,this.m_body.GetTransform());
      }
      
      public function GetMassData(massData:b2MassData = null) : b2MassData
      {
         if(massData == null)
         {
            massData = new b2MassData();
         }
         this.m_shape.ComputeMass(massData,this.m_density);
         return massData;
      }
      
      public function SetDensity(density:Number) : void
      {
         this.m_density = density;
      }
      
      public function GetDensity() : Number
      {
         return this.m_density;
      }
      
      public function GetFriction() : Number
      {
         return this.m_friction;
      }
      
      public function SetFriction(friction:Number) : void
      {
         this.m_friction = friction;
      }
      
      public function GetRestitution() : Number
      {
         return this.m_restitution;
      }
      
      public function SetRestitution(restitution:Number) : void
      {
         this.m_restitution = restitution;
      }
      
      public function GetAABB() : b2AABB
      {
         return this.m_aabb;
      }
      
      b2internal function Create(body:b2Body, xf:b2Transform, def:b2FixtureDef) : void
      {
         this.m_userData = def.userData;
         this.m_friction = def.friction;
         this.m_restitution = def.restitution;
         this.m_body = body;
         this.m_next = null;
         this.m_filter = def.filter.Copy();
         this.m_isSensor = def.isSensor;
         this.m_shape = def.shape.Copy();
         this.m_density = def.density;
      }
      
      b2internal function Destroy() : void
      {
         this.m_shape = null;
      }
      
      b2internal function CreateProxy(broadPhase:IBroadPhase, xf:b2Transform) : void
      {
         this.m_shape.ComputeAABB(this.m_aabb,xf);
         this.m_proxy = broadPhase.CreateProxy(this.m_aabb,this);
      }
      
      b2internal function DestroyProxy(broadPhase:IBroadPhase) : void
      {
         if(this.m_proxy == null)
         {
            return;
         }
         broadPhase.DestroyProxy(this.m_proxy);
         this.m_proxy = null;
      }
      
      b2internal function Synchronize(broadPhase:IBroadPhase, transform1:b2Transform, transform2:b2Transform) : void
      {
         if(!this.m_proxy)
         {
            return;
         }
         if(this.t1_aabb == null)
         {
            this.t1_aabb = new b2AABB();
         }
         else
         {
            this.t1_aabb.lowerBound.x = 0;
            this.t1_aabb.lowerBound.y = 0;
            this.t1_aabb.upperBound.x = 0;
            this.t1_aabb.upperBound.y = 0;
         }
         if(this.t2_aabb == null)
         {
            this.t2_aabb = new b2AABB();
         }
         else
         {
            this.t2_aabb.lowerBound.x = 0;
            this.t2_aabb.lowerBound.y = 0;
            this.t2_aabb.upperBound.x = 0;
            this.t2_aabb.upperBound.y = 0;
         }
         this.m_shape.ComputeAABB(this.t1_aabb,transform1);
         this.m_shape.ComputeAABB(this.t2_aabb,transform2);
         this.m_aabb.Combine(this.t1_aabb,this.t2_aabb);
         var displacement:b2Vec2 = b2Math.SubtractVV(transform2.position,transform1.position);
         broadPhase.MoveProxy(this.m_proxy,this.m_aabb,displacement);
      }
   }
}
