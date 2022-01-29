package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Collision.Shapes.b2EdgeShape;
   import com.rovio.Box2D.Collision.Shapes.b2MassData;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.Joints.b2JointEdge;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.Contacts.b2ContactEdge;
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Sweep;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.Controllers.b2ControllerEdge;
   import com.rovio.Box2D.Collision.IBroadPhase;
   
   use namespace b2internal;
   
   public class b2Body
   {
      
      private static var s_xf1:b2Transform = new b2Transform();
      
      b2internal static var e_islandFlag:uint = 1;
      
      b2internal static var e_awakeFlag:uint = 2;
      
      b2internal static var e_allowSleepFlag:uint = 4;
      
      b2internal static var e_bulletFlag:uint = 8;
      
      b2internal static var e_fixedRotationFlag:uint = 16;
      
      b2internal static var e_activeFlag:uint = 32;
      
      public static var b2_staticBody:uint = 0;
      
      public static var b2_kinematicBody:uint = 1;
      
      public static var b2_dynamicBody:uint = 2;
       
      
      b2internal var m_flags:uint;
      
      b2internal var m_type:int;
      
      b2internal var m_islandIndex:int;
      
      b2internal var m_xf:b2Transform;
      
      b2internal var m_sweep:b2Sweep;
      
      b2internal var m_linearVelocity:b2Vec2;
      
      b2internal var m_angularVelocity:Number;
      
      b2internal var m_force:b2Vec2;
      
      b2internal var m_torque:Number;
      
      b2internal var m_world:b2World;
      
      b2internal var m_prev:b2Body;
      
      b2internal var m_next:b2Body;
      
      b2internal var m_fixtureList:b2Fixture;
      
      b2internal var m_fixtureCount:int;
      
      b2internal var m_controllerList:b2ControllerEdge;
      
      b2internal var m_controllerCount:int;
      
      b2internal var m_jointList:b2JointEdge;
      
      b2internal var m_contactList:b2ContactEdge;
      
      b2internal var m_mass:Number;
      
      b2internal var m_invMass:Number;
      
      b2internal var m_I:Number;
      
      b2internal var m_invI:Number;
      
      b2internal var m_inertiaScale:Number;
      
      b2internal var m_linearDamping:Number;
      
      b2internal var m_angularDamping:Number;
      
      b2internal var m_sleepTime:Number;
      
      b2internal var m_gravityScale:Number;
      
      private var m_userData;
      
      public function b2Body(param1:b2BodyDef, param2:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.m_linearVelocity = new b2Vec2();
         this.m_force = new b2Vec2();
         super();
         this.m_flags = 0;
         if(param1.bullet)
         {
            this.m_flags |= b2internal::e_bulletFlag;
         }
         if(param1.fixedRotation)
         {
            this.m_flags |= b2internal::e_fixedRotationFlag;
         }
         if(param1.allowSleep)
         {
            this.m_flags |= b2internal::e_allowSleepFlag;
         }
         if(param1.awake)
         {
            this.m_flags |= b2internal::e_awakeFlag;
         }
         if(param1.active)
         {
            this.m_flags |= b2internal::e_activeFlag;
         }
         this.m_world = param2;
         this.m_xf.position.SetV(param1.position);
         this.m_xf.R.Set(param1.angle);
         this.m_sweep.localCenter.SetZero();
         this.m_sweep.t0 = 1;
         this.m_sweep.a0 = this.m_sweep.a = param1.angle;
         var _loc3_:b2Mat22 = this.m_xf.R;
         var _loc4_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc3_.col1.x * _loc4_.x + _loc3_.col2.x * _loc4_.y;
         this.m_sweep.c.y = _loc3_.col1.y * _loc4_.x + _loc3_.col2.y * _loc4_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.m_jointList = null;
         this.m_controllerList = null;
         this.m_contactList = null;
         this.m_controllerCount = 0;
         this.m_prev = null;
         this.m_next = null;
         this.m_linearVelocity.SetV(param1.linearVelocity);
         this.m_angularVelocity = param1.angularVelocity;
         this.m_linearDamping = param1.linearDamping;
         this.m_angularDamping = param1.angularDamping;
         this.m_gravityScale = param1.gravityScale;
         this.m_force.Set(0,0);
         this.m_torque = 0;
         this.m_sleepTime = 0;
         this.m_type = param1.type;
         if(this.m_type == b2_dynamicBody)
         {
            this.m_mass = 1;
            this.m_invMass = 1;
         }
         else
         {
            this.m_mass = 0;
            this.m_invMass = 0;
         }
         this.m_I = 0;
         this.m_invI = 0;
         this.m_inertiaScale = param1.inertiaScale;
         this.m_userData = param1.userData;
         this.m_fixtureList = null;
         this.m_fixtureCount = 0;
      }
      
      private function connectEdges(param1:b2EdgeShape, param2:b2EdgeShape, param3:Number) : Number
      {
         var _loc4_:Number = Math.atan2(param2.GetDirectionVector().y,param2.GetDirectionVector().x);
         var _loc5_:Number = Math.tan((_loc4_ - param3) * 0.5);
         var _loc6_:b2Vec2 = b2Math.MulFV(_loc5_,param2.GetDirectionVector());
         _loc6_ = b2Math.SubtractVV(_loc6_,param2.GetNormalVector());
         _loc6_ = b2Math.MulFV(b2Settings.b2_toiSlop,_loc6_);
         _loc6_ = b2Math.AddVV(_loc6_,param2.GetVertex1());
         var _loc7_:b2Vec2;
         (_loc7_ = b2Math.AddVV(param1.GetDirectionVector(),param2.GetDirectionVector())).Normalize();
         var _loc8_:* = b2Math.Dot(param1.GetDirectionVector(),param2.GetNormalVector()) > 0;
         param1.SetNextEdge(param2,_loc6_,_loc7_,_loc8_);
         param2.SetPrevEdge(param1,_loc6_,_loc7_,_loc8_);
         return _loc4_;
      }
      
      public function CreateFixture(param1:b2FixtureDef) : b2Fixture
      {
         var _loc3_:IBroadPhase = null;
         if(this.m_world.IsLocked() == true)
         {
            return null;
         }
         var _loc2_:b2Fixture = new b2Fixture();
         _loc2_.Create(this,this.m_xf,param1);
         if(this.m_flags & b2internal::e_activeFlag)
         {
            _loc3_ = this.m_world.m_contactManager.m_broadPhase;
            _loc2_.CreateProxy(_loc3_,this.m_xf);
         }
         _loc2_.m_next = this.m_fixtureList;
         this.m_fixtureList = _loc2_;
         ++this.m_fixtureCount;
         _loc2_.m_body = this;
         if(_loc2_.m_density > 0)
         {
            this.ResetMassData();
         }
         this.m_world.m_flags |= b2World.e_newFixture;
         return _loc2_;
      }
      
      public function CreateFixture2(param1:b2Shape, param2:Number = 0.0) : b2Fixture
      {
         var _loc3_:b2FixtureDef = new b2FixtureDef();
         _loc3_.shape = param1;
         _loc3_.density = param2;
         return this.CreateFixture(_loc3_);
      }
      
      public function DestroyFixture(param1:b2Fixture) : void
      {
         var _loc6_:b2Contact = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Fixture = null;
         var _loc9_:IBroadPhase = null;
         if(this.m_world.IsLocked() == true)
         {
            return;
         }
         var _loc2_:b2Fixture = this.m_fixtureList;
         var _loc3_:b2Fixture = null;
         var _loc4_:Boolean = false;
         while(_loc2_ != null)
         {
            if(_loc2_ == param1)
            {
               if(_loc3_)
               {
                  _loc3_.m_next = param1.m_next;
               }
               else
               {
                  this.m_fixtureList = param1.m_next;
               }
               _loc4_ = true;
               break;
            }
            _loc3_ = _loc2_;
            _loc2_ = _loc2_.m_next;
         }
         var _loc5_:b2ContactEdge = this.m_contactList;
         while(_loc5_)
         {
            _loc6_ = _loc5_.contact;
            _loc5_ = _loc5_.next;
            _loc7_ = _loc6_.GetFixtureA();
            _loc8_ = _loc6_.GetFixtureB();
            if(param1 == _loc7_ || param1 == _loc8_)
            {
               this.m_world.m_contactManager.Destroy(_loc6_);
            }
         }
         if(this.m_flags & b2internal::e_activeFlag)
         {
            _loc9_ = this.m_world.m_contactManager.m_broadPhase;
            param1.DestroyProxy(_loc9_);
         }
         param1.Destroy();
         param1.m_body = null;
         param1.m_next = null;
         --this.m_fixtureCount;
         this.ResetMassData();
      }
      
      public function SetPositionAndAngle(param1:b2Vec2, param2:Number) : void
      {
         var _loc3_:b2Fixture = null;
         if(this.m_world.IsLocked() == true)
         {
            return;
         }
         this.m_xf.R.Set(param2);
         this.m_xf.position.SetV(param1);
         var _loc4_:b2Mat22 = this.m_xf.R;
         var _loc5_:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = _loc4_.col1.x * _loc5_.x + _loc4_.col2.x * _loc5_.y;
         this.m_sweep.c.y = _loc4_.col1.y * _loc5_.x + _loc4_.col2.y * _loc5_.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.m_sweep.a0 = this.m_sweep.a = param2;
         var _loc6_:IBroadPhase = this.m_world.m_contactManager.m_broadPhase;
         _loc3_ = this.m_fixtureList;
         while(_loc3_)
         {
            _loc3_.Synchronize(_loc6_,this.m_xf,this.m_xf);
            _loc3_ = _loc3_.m_next;
         }
         this.m_world.m_contactManager.FindNewContacts();
      }
      
      public function SetTransform(param1:b2Transform) : void
      {
         this.SetPositionAndAngle(param1.position,param1.GetAngle());
      }
      
      public function GetTransform() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(param1:b2Vec2) : void
      {
         this.SetPositionAndAngle(param1,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(param1:Number) : void
      {
         this.SetPositionAndAngle(this.GetPosition(),param1);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function GetLocalCenter() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(param1:b2Vec2) : void
      {
         if(this.m_type == b2_staticBody)
         {
            return;
         }
         this.m_linearVelocity.SetV(param1);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.m_linearVelocity;
      }
      
      public function SetAngularVelocity(param1:Number) : void
      {
         if(this.m_type == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = param1;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function GetDefinition() : b2BodyDef
      {
         var _loc1_:b2BodyDef = new b2BodyDef();
         _loc1_.type = this.GetType();
         _loc1_.allowSleep = (this.m_flags & b2internal::e_allowSleepFlag) == b2internal::e_allowSleepFlag;
         _loc1_.angle = this.GetAngle();
         _loc1_.angularDamping = this.m_angularDamping;
         _loc1_.angularVelocity = this.m_angularVelocity;
         _loc1_.fixedRotation = (this.m_flags & b2internal::e_fixedRotationFlag) == b2internal::e_fixedRotationFlag;
         _loc1_.bullet = (this.m_flags & b2internal::e_bulletFlag) == b2internal::e_bulletFlag;
         _loc1_.awake = (this.m_flags & b2internal::e_awakeFlag) == b2internal::e_awakeFlag;
         _loc1_.linearDamping = this.m_linearDamping;
         _loc1_.linearVelocity.SetV(this.GetLinearVelocity());
         _loc1_.position = this.GetPosition();
         _loc1_.userData = this.GetUserData();
         return _loc1_;
      }
      
      public function ApplyForce(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.m_type != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.m_force.x += param1.x;
         this.m_force.y += param1.y;
         this.m_torque += (param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x;
      }
      
      public function ApplyTorque(param1:Number) : void
      {
         if(this.m_type != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.m_torque += param1;
      }
      
      public function ApplyImpulse(param1:b2Vec2, param2:b2Vec2) : void
      {
         if(this.m_type != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.m_linearVelocity.x += this.m_invMass * param1.x;
         this.m_linearVelocity.y += this.m_invMass * param1.y;
         this.m_angularVelocity += this.m_invI * ((param2.x - this.m_sweep.c.x) * param1.y - (param2.y - this.m_sweep.c.y) * param1.x);
      }
      
      public function Split(param1:Function) : b2Body
      {
         var _loc7_:b2Fixture = null;
         var _loc13_:b2Fixture = null;
         var _loc2_:b2Vec2 = this.GetLinearVelocity().Copy();
         var _loc3_:Number = this.GetAngularVelocity();
         var _loc4_:b2Vec2 = this.GetWorldCenter();
         var _loc5_:b2Body = this;
         var _loc6_:b2Body = this.m_world.CreateBody(this.GetDefinition());
         var _loc8_:b2Fixture = _loc5_.m_fixtureList;
         while(_loc8_)
         {
            if(param1(_loc8_))
            {
               _loc13_ = _loc8_.m_next;
               if(_loc7_)
               {
                  _loc7_.m_next = _loc13_;
               }
               else
               {
                  _loc5_.m_fixtureList = _loc13_;
               }
               --_loc5_.m_fixtureCount;
               _loc8_.m_next = _loc6_.m_fixtureList;
               _loc6_.m_fixtureList = _loc8_;
               ++_loc6_.m_fixtureCount;
               _loc8_.m_body = _loc6_;
               _loc8_ = _loc13_;
            }
            else
            {
               _loc7_ = _loc8_;
               _loc8_ = _loc8_.m_next;
            }
         }
         _loc5_.ResetMassData();
         _loc6_.ResetMassData();
         var _loc9_:b2Vec2 = _loc5_.GetWorldCenter();
         var _loc10_:b2Vec2 = _loc6_.GetWorldCenter();
         var _loc11_:b2Vec2 = b2Math.AddVV(_loc2_,b2Math.CrossFV(_loc3_,b2Math.SubtractVV(_loc9_,_loc4_)));
         var _loc12_:b2Vec2 = b2Math.AddVV(_loc2_,b2Math.CrossFV(_loc3_,b2Math.SubtractVV(_loc10_,_loc4_)));
         _loc5_.SetLinearVelocity(_loc11_);
         _loc6_.SetLinearVelocity(_loc12_);
         _loc5_.SetAngularVelocity(_loc3_);
         _loc6_.SetAngularVelocity(_loc3_);
         _loc5_.SynchronizeFixtures();
         _loc6_.SynchronizeFixtures();
         return _loc6_;
      }
      
      public function Merge(param1:b2Body) : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Body = null;
         var _loc11_:b2Fixture = null;
         _loc2_ = param1.m_fixtureList;
         while(_loc2_)
         {
            _loc11_ = _loc2_.m_next;
            --param1.m_fixtureCount;
            _loc2_.m_next = this.m_fixtureList;
            this.m_fixtureList = _loc2_;
            ++this.m_fixtureCount;
            _loc2_.m_body = _loc4_;
            _loc2_ = _loc11_;
         }
         _loc3_.m_fixtureCount = 0;
         _loc3_ = this;
         _loc4_ = param1;
         var _loc5_:b2Vec2 = _loc3_.GetWorldCenter();
         var _loc6_:b2Vec2 = _loc4_.GetWorldCenter();
         var _loc7_:b2Vec2 = _loc3_.GetLinearVelocity().Copy();
         var _loc8_:b2Vec2 = _loc4_.GetLinearVelocity().Copy();
         var _loc9_:Number = _loc3_.GetAngularVelocity();
         var _loc10_:Number = _loc4_.GetAngularVelocity();
         _loc3_.ResetMassData();
         this.SynchronizeFixtures();
      }
      
      public function GetMass() : Number
      {
         return this.m_mass;
      }
      
      public function GetInertia() : Number
      {
         return this.m_I;
      }
      
      public function GetMassData(param1:b2MassData) : void
      {
         param1.mass = this.m_mass;
         param1.I = this.m_I;
         param1.center.SetV(this.m_sweep.localCenter);
      }
      
      public function SetMassData(param1:b2MassData) : void
      {
         b2Settings.b2Assert(this.m_world.IsLocked() == false);
         if(this.m_world.IsLocked() == true)
         {
            return;
         }
         if(this.m_type != b2_dynamicBody)
         {
            return;
         }
         this.m_invMass = 0;
         this.m_I = 0;
         this.m_invI = 0;
         this.m_mass = param1.mass;
         if(this.m_mass <= 0)
         {
            this.m_mass = 1;
         }
         this.m_invMass = 1 / this.m_mass;
         if(param1.I > 0 && (this.m_flags & b2internal::e_fixedRotationFlag) == 0)
         {
            this.m_I = param1.I - this.m_mass * (param1.center.x * param1.center.x + param1.center.y * param1.center.y);
            this.m_invI = 1 / this.m_I;
         }
         var _loc2_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(param1.center);
         this.m_sweep.c0.SetV(b2Math.MulX(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_linearVelocity.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc2_.y);
         this.m_linearVelocity.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc2_.x);
      }
      
      public function ResetMassData() : void
      {
         var _loc4_:b2MassData = null;
         this.m_mass = 0;
         this.m_invMass = 0;
         this.m_I = 0;
         this.m_invI = 0;
         this.m_sweep.localCenter.SetZero();
         if(this.m_type == b2_staticBody || this.m_type == b2_kinematicBody)
         {
            return;
         }
         var _loc1_:b2Vec2 = b2Vec2.Make(0,0);
         var _loc2_:b2Fixture = this.m_fixtureList;
         while(_loc2_)
         {
            if(_loc2_.m_density != 0)
            {
               _loc4_ = _loc2_.GetMassData();
               this.m_mass += _loc4_.mass;
               _loc1_.x += _loc4_.center.x * _loc4_.mass;
               _loc1_.y += _loc4_.center.y * _loc4_.mass;
               this.m_I += _loc4_.I;
            }
            _loc2_ = _loc2_.m_next;
         }
         if(this.m_mass > 0)
         {
            this.m_invMass = 1 / this.m_mass;
            _loc1_.x *= this.m_invMass;
            _loc1_.y *= this.m_invMass;
         }
         else
         {
            this.m_mass = 1;
            this.m_invMass = 1;
         }
         if(this.m_I > 0 && (this.m_flags & b2internal::e_fixedRotationFlag) == 0)
         {
            this.m_I -= this.m_mass * (_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y);
            this.m_I *= this.m_inertiaScale;
            b2Settings.b2Assert(this.m_I > 0);
            this.m_invI = 1 / this.m_I;
         }
         else
         {
            this.m_I = 0;
            this.m_invI = 0;
         }
         var _loc3_:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(_loc1_);
         this.m_sweep.c0.SetV(b2Math.MulX(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_linearVelocity.x += this.m_angularVelocity * -(this.m_sweep.c.y - _loc3_.y);
         this.m_linearVelocity.y += this.m_angularVelocity * (this.m_sweep.c.x - _loc3_.x);
      }
      
      public function GetWorldPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return _loc3_;
      }
      
      public function GetWorldVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.MulMV(this.m_xf.R,param1);
      }
      
      public function GetLocalPoint(param1:b2Vec2) : b2Vec2
      {
         return b2Math.MulXT(this.m_xf,param1);
      }
      
      public function GetLocalVector(param1:b2Vec2) : b2Vec2
      {
         return b2Math.MulTMV(this.m_xf.R,param1);
      }
      
      public function GetLinearVelocityFromWorldPoint(param1:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.m_linearVelocity.x - this.m_angularVelocity * (param1.y - this.m_sweep.c.y),this.m_linearVelocity.y + this.m_angularVelocity * (param1.x - this.m_sweep.c.x));
      }
      
      public function GetLinearVelocityFromLocalPoint(param1:b2Vec2) : b2Vec2
      {
         var _loc2_:b2Mat22 = this.m_xf.R;
         var _loc3_:b2Vec2 = new b2Vec2(_loc2_.col1.x * param1.x + _loc2_.col2.x * param1.y,_loc2_.col1.y * param1.x + _loc2_.col2.y * param1.y);
         _loc3_.x += this.m_xf.position.x;
         _loc3_.y += this.m_xf.position.y;
         return new b2Vec2(this.m_linearVelocity.x - this.m_angularVelocity * (_loc3_.y - this.m_sweep.c.y),this.m_linearVelocity.y + this.m_angularVelocity * (_loc3_.x - this.m_sweep.c.x));
      }
      
      public function GetLinearDamping() : Number
      {
         return this.m_linearDamping;
      }
      
      public function SetLinearDamping(param1:Number) : void
      {
         this.m_linearDamping = param1;
      }
      
      public function GetAngularDamping() : Number
      {
         return this.m_angularDamping;
      }
      
      public function SetAngularDamping(param1:Number) : void
      {
         this.m_angularDamping = param1;
      }
      
      public function GetGravityScale() : Number
      {
         return this.m_gravityScale;
      }
      
      public function SetGravityScale(param1:Number) : void
      {
         this.m_gravityScale = param1;
      }
      
      public function SetType(param1:uint) : void
      {
         if(this.m_type == param1)
         {
            return;
         }
         this.m_type = param1;
         this.ResetMassData();
         if(this.m_type == b2_staticBody)
         {
            this.m_linearVelocity.SetZero();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.m_force.SetZero();
         this.m_torque = 0;
         var _loc2_:b2ContactEdge = this.m_contactList;
         while(_loc2_)
         {
            _loc2_.contact.FlagForFiltering();
            _loc2_ = _loc2_.next;
         }
      }
      
      public function GetType() : uint
      {
         return this.m_type;
      }
      
      public function SetBullet(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= b2internal::e_bulletFlag;
         }
         else
         {
            this.m_flags &= ~b2internal::e_bulletFlag;
         }
      }
      
      public function IsBullet() : Boolean
      {
         return (this.m_flags & b2internal::e_bulletFlag) == b2internal::e_bulletFlag;
      }
      
      public function SetSleepingAllowed(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= b2internal::e_allowSleepFlag;
         }
         else
         {
            this.m_flags &= ~b2internal::e_allowSleepFlag;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= b2internal::e_awakeFlag;
            this.m_sleepTime = 0;
         }
         else
         {
            this.m_flags &= ~b2internal::e_awakeFlag;
            this.m_sleepTime = 0;
            this.m_linearVelocity.SetZero();
            this.m_angularVelocity = 0;
            this.m_force.SetZero();
            this.m_torque = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.m_flags & b2internal::e_awakeFlag) == b2internal::e_awakeFlag;
      }
      
      public function SetFixedRotation(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= b2internal::e_fixedRotationFlag;
         }
         else
         {
            this.m_flags &= ~b2internal::e_fixedRotationFlag;
         }
         this.ResetMassData();
      }
      
      public function IsFixedRotation() : Boolean
      {
         return (this.m_flags & b2internal::e_fixedRotationFlag) == b2internal::e_fixedRotationFlag;
      }
      
      public function SetActive(param1:Boolean) : void
      {
         var _loc2_:IBroadPhase = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2ContactEdge = null;
         var _loc5_:b2ContactEdge = null;
         if(param1 == this.IsActive())
         {
            return;
         }
         if(param1)
         {
            this.m_flags |= b2internal::e_activeFlag;
            _loc2_ = this.m_world.m_contactManager.m_broadPhase;
            _loc3_ = this.m_fixtureList;
            while(_loc3_)
            {
               _loc3_.CreateProxy(_loc2_,this.m_xf);
               _loc3_ = _loc3_.m_next;
            }
         }
         else
         {
            this.m_flags &= ~b2internal::e_activeFlag;
            _loc2_ = this.m_world.m_contactManager.m_broadPhase;
            _loc3_ = this.m_fixtureList;
            while(_loc3_)
            {
               _loc3_.DestroyProxy(_loc2_);
               _loc3_ = _loc3_.m_next;
            }
            _loc4_ = this.m_contactList;
            while(_loc4_)
            {
               _loc5_ = _loc4_;
               _loc4_ = _loc4_.next;
               this.m_world.m_contactManager.Destroy(_loc5_.contact);
            }
            this.m_contactList = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.m_flags & b2internal::e_activeFlag) == b2internal::e_activeFlag;
      }
      
      public function IsSleepingAllowed() : Boolean
      {
         return (this.m_flags & b2internal::e_allowSleepFlag) == b2internal::e_allowSleepFlag;
      }
      
      public function GetFixtureList() : b2Fixture
      {
         return this.m_fixtureList;
      }
      
      public function GetJointList() : b2JointEdge
      {
         return this.m_jointList;
      }
      
      public function GetControllerList() : b2ControllerEdge
      {
         return this.m_controllerList;
      }
      
      public function GetContactList() : b2ContactEdge
      {
         return this.m_contactList;
      }
      
      public function GetNext() : b2Body
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
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      b2internal function SynchronizeFixtures() : void
      {
         var _loc4_:b2Fixture = null;
         var _loc1_:b2Transform = s_xf1;
         _loc1_.R.Set(this.m_sweep.a0);
         var _loc2_:b2Mat22 = _loc1_.R;
         var _loc3_:b2Vec2 = this.m_sweep.localCenter;
         _loc1_.position.x = this.m_sweep.c0.x - (_loc2_.col1.x * _loc3_.x + _loc2_.col2.x * _loc3_.y);
         _loc1_.position.y = this.m_sweep.c0.y - (_loc2_.col1.y * _loc3_.x + _loc2_.col2.y * _loc3_.y);
         var _loc5_:IBroadPhase = this.m_world.m_contactManager.m_broadPhase;
         _loc4_ = this.m_fixtureList;
         while(_loc4_)
         {
            _loc4_.Synchronize(_loc5_,_loc1_,this.m_xf);
            _loc4_ = _loc4_.m_next;
         }
      }
      
      b2internal function SynchronizeTransform() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var _loc1_:b2Mat22 = this.m_xf.R;
         var _loc2_:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (_loc1_.col1.x * _loc2_.x + _loc1_.col2.x * _loc2_.y);
         this.m_xf.position.y = this.m_sweep.c.y - (_loc1_.col1.y * _loc2_.x + _loc1_.col2.y * _loc2_.y);
      }
      
      b2internal function ShouldCollide(param1:b2Body) : Boolean
      {
         if(this.m_type != b2_dynamicBody && param1.m_type != b2_dynamicBody)
         {
            return false;
         }
         var _loc2_:b2JointEdge = this.m_jointList;
         while(_loc2_)
         {
            if(_loc2_.other == param1)
            {
               if(_loc2_.joint.m_collideConnected == false)
               {
                  return false;
               }
            }
            _loc2_ = _loc2_.next;
         }
         return true;
      }
      
      b2internal function Advance(param1:Number) : void
      {
         this.m_sweep.Advance(param1);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.SynchronizeTransform();
      }
   }
}
