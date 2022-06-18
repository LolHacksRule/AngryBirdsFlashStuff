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
      
      public function SetSensor(param1:Boolean) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         if(this.m_isSensor == param1)
         {
            return;
         }
         this.m_isSensor = param1;
         if(this.m_body == null)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.GetContactList();
         while(_loc2_)
         {
            _loc3_ = _loc2_.contact;
            _loc4_ = _loc3_.GetFixtureA();
            _loc5_ = _loc3_.GetFixtureB();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.SetSensor(_loc4_.IsSensor() || _loc5_.IsSensor());
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function IsSensor() : Boolean
      {
         return this.m_isSensor;
      }
      
      public function SetFilterData(param1:b2FilterData) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Fixture = null;
         this.m_filter = param1.Copy();
         if(this.m_body)
         {
            return;
         }
         var _loc2_:b2ContactEdge = this.m_body.GetContactList();
         while(_loc2_)
         {
            _loc3_ = _loc2_.contact;
            _loc4_ = _loc3_.GetFixtureA();
            _loc5_ = _loc3_.GetFixtureB();
            if(_loc4_ == this || _loc5_ == this)
            {
               _loc3_.FlagForFiltering();
            }
            _loc2_ = _loc2_.next;
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
      
      public function SetUserData(param1:*) : void
      {
         this.m_userData = param1;
      }
      
      public function TestPoint(param1:b2Vec2) : Boolean
      {
         return this.m_shape.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         return this.m_shape.RayCast(param1,param2,this.m_body.GetTransform());
      }
      
      public function GetMassData(param1:b2MassData = null) : b2MassData
      {
         if(param1 == null)
         {
            param1 = new b2MassData();
         }
         this.m_shape.ComputeMass(param1,this.m_density);
         return param1;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.m_density = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.m_density;
      }
      
      public function GetFriction() : Number
      {
         return this.m_friction;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.m_friction = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.m_restitution;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.m_restitution = param1;
      }
      
      public function GetAABB() : b2AABB
      {
         return this.m_aabb;
      }
      
      b2internal function Create(param1:b2Body, param2:b2Transform, param3:b2FixtureDef) : void
      {
         this.m_userData = param3.userData;
         this.m_friction = param3.friction;
         this.m_restitution = param3.restitution;
         this.m_body = param1;
         this.m_next = null;
         this.m_filter = param3.filter.Copy();
         this.m_isSensor = param3.isSensor;
         this.m_shape = param3.shape.Copy();
         this.m_density = param3.density;
      }
      
      b2internal function Destroy() : void
      {
         this.m_shape = null;
      }
      
      b2internal function CreateProxy(param1:IBroadPhase, param2:b2Transform) : void
      {
         this.m_shape.ComputeAABB(this.m_aabb,param2);
         this.m_proxy = param1.CreateProxy(this.m_aabb,this);
      }
      
      b2internal function DestroyProxy(param1:IBroadPhase) : void
      {
         if(this.m_proxy == null)
         {
            return;
         }
         param1.DestroyProxy(this.m_proxy);
         this.m_proxy = null;
      }
      
      b2internal function Synchronize(param1:IBroadPhase, param2:b2Transform, param3:b2Transform) : void
      {
         if(!this.m_proxy)
         {
            return;
         }
         var _loc4_:b2AABB = new b2AABB();
         var _loc5_:b2AABB = new b2AABB();
         this.m_shape.ComputeAABB(_loc4_,param2);
         this.m_shape.ComputeAABB(_loc5_,param3);
         this.m_aabb.Combine(_loc4_,_loc5_);
         var _loc6_:b2Vec2 = b2Math.SubtractVV(param3.position,param2.position);
         param1.MoveProxy(this.m_proxy,this.m_aabb,_loc6_);
      }
   }
}
