package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Collision.IBroadPhase;
   import com.rovio.Box2D.Collision.Shapes.b2EdgeShape;
   import com.rovio.Box2D.Collision.Shapes.b2MassData;
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.Math.b2Mat22;
   import com.rovio.Box2D.Common.Math.b2Math;
   import com.rovio.Box2D.Common.Math.b2Sweep;
   import com.rovio.Box2D.Common.Math.b2Transform;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Common.b2internal;
   import com.rovio.Box2D.Dynamics.Contacts.b2Contact;
   import com.rovio.Box2D.Dynamics.Contacts.b2ContactEdge;
   import com.rovio.Box2D.Dynamics.Controllers.b2ControllerEdge;
   import com.rovio.Box2D.Dynamics.Joints.b2JointEdge;
   
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
      
      private var m_userData;
      
      public function b2Body(bd:b2BodyDef, world:b2World)
      {
         this.m_xf = new b2Transform();
         this.m_sweep = new b2Sweep();
         this.m_linearVelocity = new b2Vec2();
         this.m_force = new b2Vec2();
         super();
         this.m_flags = 0;
         if(bd.bullet)
         {
            this.m_flags |= e_bulletFlag;
         }
         if(bd.fixedRotation)
         {
            this.m_flags |= e_fixedRotationFlag;
         }
         if(bd.allowSleep)
         {
            this.m_flags |= e_allowSleepFlag;
         }
         if(bd.awake)
         {
            this.m_flags |= e_awakeFlag;
         }
         if(bd.active)
         {
            this.m_flags |= e_activeFlag;
         }
         this.m_world = world;
         this.m_xf.position.SetV(bd.position);
         this.m_xf.R.Set(bd.angle);
         this.m_sweep.localCenter.SetZero();
         this.m_sweep.t0 = 1;
         this.m_sweep.a0 = this.m_sweep.a = bd.angle;
         var tMat:b2Mat22 = this.m_xf.R;
         var tVec:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
         this.m_sweep.c.y = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.m_jointList = null;
         this.m_controllerList = null;
         this.m_contactList = null;
         this.m_controllerCount = 0;
         this.m_prev = null;
         this.m_next = null;
         this.m_linearVelocity.SetV(bd.linearVelocity);
         this.m_angularVelocity = bd.angularVelocity;
         this.m_linearDamping = bd.linearDamping;
         this.m_angularDamping = bd.angularDamping;
         this.m_force.Set(0,0);
         this.m_torque = 0;
         this.m_sleepTime = 0;
         this.m_type = bd.type;
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
         this.m_inertiaScale = bd.inertiaScale;
         this.m_userData = bd.userData;
         this.m_fixtureList = null;
         this.m_fixtureCount = 0;
      }
      
      private function connectEdges(s1:b2EdgeShape, s2:b2EdgeShape, angle1:Number) : Number
      {
         var angle2:Number = Math.atan2(s2.GetDirectionVector().y,s2.GetDirectionVector().x);
         var coreOffset:Number = Math.tan((angle2 - angle1) * 0.5);
         var core:b2Vec2 = b2Math.MulFV(coreOffset,s2.GetDirectionVector());
         core = b2Math.SubtractVV(core,s2.GetNormalVector());
         core = b2Math.MulFV(b2Settings.b2_toiSlop,core);
         core = b2Math.AddVV(core,s2.GetVertex1());
         var cornerDir:b2Vec2 = b2Math.AddVV(s1.GetDirectionVector(),s2.GetDirectionVector());
         cornerDir.Normalize();
         var convex:Boolean = b2Math.Dot(s1.GetDirectionVector(),s2.GetNormalVector()) > 0;
         s1.SetNextEdge(s2,core,cornerDir,convex);
         s2.SetPrevEdge(s1,core,cornerDir,convex);
         return angle2;
      }
      
      public function CreateFixture(def:b2FixtureDef) : b2Fixture
      {
         var broadPhase:IBroadPhase = null;
         if(this.m_world.IsLocked() == true)
         {
            return null;
         }
         var fixture:b2Fixture = new b2Fixture();
         fixture.Create(this,this.m_xf,def);
         if(this.m_flags & e_activeFlag)
         {
            broadPhase = this.m_world.m_contactManager.m_broadPhase;
            fixture.CreateProxy(broadPhase,this.m_xf);
         }
         fixture.m_next = this.m_fixtureList;
         this.m_fixtureList = fixture;
         ++this.m_fixtureCount;
         fixture.m_body = this;
         if(fixture.m_density > 0)
         {
            this.ResetMassData();
         }
         this.m_world.m_flags |= b2World.e_newFixture;
         return fixture;
      }
      
      public function CreateFixture2(shape:b2Shape, density:Number = 0.0) : b2Fixture
      {
         var def:b2FixtureDef = new b2FixtureDef();
         def.shape = shape;
         def.density = density;
         return this.CreateFixture(def);
      }
      
      public function DestroyFixture(fixture:b2Fixture) : void
      {
         var c:b2Contact = null;
         var fixtureA:b2Fixture = null;
         var fixtureB:b2Fixture = null;
         var broadPhase:IBroadPhase = null;
         if(this.m_world.IsLocked() == true)
         {
            return;
         }
         var node:b2Fixture = this.m_fixtureList;
         var ppF:b2Fixture = null;
         var found:Boolean = false;
         while(node != null)
         {
            if(node == fixture)
            {
               if(ppF)
               {
                  ppF.m_next = fixture.m_next;
               }
               else
               {
                  this.m_fixtureList = fixture.m_next;
               }
               found = true;
               break;
            }
            ppF = node;
            node = node.m_next;
         }
         var edge:b2ContactEdge = this.m_contactList;
         while(edge)
         {
            c = edge.contact;
            edge = edge.next;
            fixtureA = c.GetFixtureA();
            fixtureB = c.GetFixtureB();
            if(fixture == fixtureA || fixture == fixtureB)
            {
               this.m_world.m_contactManager.Destroy(c);
            }
         }
         if(this.m_flags & e_activeFlag)
         {
            broadPhase = this.m_world.m_contactManager.m_broadPhase;
            fixture.DestroyProxy(broadPhase);
         }
         fixture.Destroy();
         fixture.m_body = null;
         fixture.m_next = null;
         --this.m_fixtureCount;
         this.ResetMassData();
      }
      
      public function SetPositionAndAngle(position:b2Vec2, angle:Number) : void
      {
         var f:b2Fixture = null;
         if(this.m_world.IsLocked() == true)
         {
            return;
         }
         this.m_xf.R.Set(angle);
         this.m_xf.position.SetV(position);
         var tMat:b2Mat22 = this.m_xf.R;
         var tVec:b2Vec2 = this.m_sweep.localCenter;
         this.m_sweep.c.x = tMat.col1.x * tVec.x + tMat.col2.x * tVec.y;
         this.m_sweep.c.y = tMat.col1.y * tVec.x + tMat.col2.y * tVec.y;
         this.m_sweep.c.x += this.m_xf.position.x;
         this.m_sweep.c.y += this.m_xf.position.y;
         this.m_sweep.c0.SetV(this.m_sweep.c);
         this.m_sweep.a0 = this.m_sweep.a = angle;
         var broadPhase:IBroadPhase = this.m_world.m_contactManager.m_broadPhase;
         for(f = this.m_fixtureList; f; f = f.m_next)
         {
            f.Synchronize(broadPhase,this.m_xf,this.m_xf);
         }
         this.m_world.m_contactManager.FindNewContacts();
      }
      
      public function SetTransform(xf:b2Transform) : void
      {
         this.SetPositionAndAngle(xf.position,xf.GetAngle());
      }
      
      public function GetTransform() : b2Transform
      {
         return this.m_xf;
      }
      
      public function GetPosition() : b2Vec2
      {
         return this.m_xf.position;
      }
      
      public function SetPosition(position:b2Vec2) : void
      {
         this.SetPositionAndAngle(position,this.GetAngle());
      }
      
      public function GetAngle() : Number
      {
         return this.m_sweep.a;
      }
      
      public function SetAngle(angle:Number) : void
      {
         this.SetPositionAndAngle(this.GetPosition(),angle);
      }
      
      public function GetWorldCenter() : b2Vec2
      {
         return this.m_sweep.c;
      }
      
      public function GetLocalCenter() : b2Vec2
      {
         return this.m_sweep.localCenter;
      }
      
      public function SetLinearVelocity(v:b2Vec2) : void
      {
         if(this.m_type == b2_staticBody)
         {
            return;
         }
         this.m_linearVelocity.SetV(v);
      }
      
      public function GetLinearVelocity() : b2Vec2
      {
         return this.m_linearVelocity;
      }
      
      public function SetAngularVelocity(omega:Number) : void
      {
         if(this.m_type == b2_staticBody)
         {
            return;
         }
         this.m_angularVelocity = omega;
      }
      
      public function GetAngularVelocity() : Number
      {
         return this.m_angularVelocity;
      }
      
      public function GetDefinition() : b2BodyDef
      {
         var bd:b2BodyDef = new b2BodyDef();
         bd.type = this.GetType();
         bd.allowSleep = (this.m_flags & e_allowSleepFlag) == e_allowSleepFlag;
         bd.angle = this.GetAngle();
         bd.angularDamping = this.m_angularDamping;
         bd.angularVelocity = this.m_angularVelocity;
         bd.fixedRotation = (this.m_flags & e_fixedRotationFlag) == e_fixedRotationFlag;
         bd.bullet = (this.m_flags & e_bulletFlag) == e_bulletFlag;
         bd.awake = (this.m_flags & e_awakeFlag) == e_awakeFlag;
         bd.linearDamping = this.m_linearDamping;
         bd.linearVelocity.SetV(this.GetLinearVelocity());
         bd.position = this.GetPosition();
         bd.userData = this.GetUserData();
         return bd;
      }
      
      public function ApplyForce(force:b2Vec2, point:b2Vec2) : void
      {
         if(this.m_type != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.m_force.x += force.x;
         this.m_force.y += force.y;
         this.m_torque += (point.x - this.m_sweep.c.x) * force.y - (point.y - this.m_sweep.c.y) * force.x;
      }
      
      public function ApplyTorque(torque:Number) : void
      {
         if(this.m_type != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.m_torque += torque;
      }
      
      public function ApplyImpulse(impulse:b2Vec2, point:b2Vec2) : void
      {
         if(this.m_type != b2_dynamicBody)
         {
            return;
         }
         if(this.IsAwake() == false)
         {
            this.SetAwake(true);
         }
         this.m_linearVelocity.x += this.m_invMass * impulse.x;
         this.m_linearVelocity.y += this.m_invMass * impulse.y;
         this.m_angularVelocity += this.m_invI * ((point.x - this.m_sweep.c.x) * impulse.y - (point.y - this.m_sweep.c.y) * impulse.x);
      }
      
      public function Split(callback:Function) : b2Body
      {
         var prev:b2Fixture = null;
         var next:b2Fixture = null;
         var linearVelocity:b2Vec2 = this.GetLinearVelocity().Copy();
         var angularVelocity:Number = this.GetAngularVelocity();
         var center:b2Vec2 = this.GetWorldCenter();
         var body1:b2Body = this;
         var body2:b2Body = this.m_world.CreateBody(this.GetDefinition());
         for(var f:b2Fixture = body1.m_fixtureList; f; )
         {
            if(callback(f))
            {
               next = f.m_next;
               if(prev)
               {
                  prev.m_next = next;
               }
               else
               {
                  body1.m_fixtureList = next;
               }
               --body1.m_fixtureCount;
               f.m_next = body2.m_fixtureList;
               body2.m_fixtureList = f;
               ++body2.m_fixtureCount;
               f.m_body = body2;
               f = next;
            }
            else
            {
               prev = f;
               f = f.m_next;
            }
         }
         body1.ResetMassData();
         body2.ResetMassData();
         var center1:b2Vec2 = body1.GetWorldCenter();
         var center2:b2Vec2 = body2.GetWorldCenter();
         var velocity1:b2Vec2 = b2Math.AddVV(linearVelocity,b2Math.CrossFV(angularVelocity,b2Math.SubtractVV(center1,center)));
         var velocity2:b2Vec2 = b2Math.AddVV(linearVelocity,b2Math.CrossFV(angularVelocity,b2Math.SubtractVV(center2,center)));
         body1.SetLinearVelocity(velocity1);
         body2.SetLinearVelocity(velocity2);
         body1.SetAngularVelocity(angularVelocity);
         body2.SetAngularVelocity(angularVelocity);
         body1.SynchronizeFixtures();
         body2.SynchronizeFixtures();
         return body2;
      }
      
      public function Merge(other:b2Body) : void
      {
         var f:b2Fixture = null;
         var body1:b2Body = null;
         var body2:b2Body = null;
         var next:b2Fixture = null;
         for(f = other.m_fixtureList; f; )
         {
            next = f.m_next;
            --other.m_fixtureCount;
            f.m_next = this.m_fixtureList;
            this.m_fixtureList = f;
            ++this.m_fixtureCount;
            f.m_body = body2;
            f = next;
         }
         body1.m_fixtureCount = 0;
         body1 = this;
         body2 = other;
         var center1:b2Vec2 = body1.GetWorldCenter();
         var center2:b2Vec2 = body2.GetWorldCenter();
         var velocity1:b2Vec2 = body1.GetLinearVelocity().Copy();
         var velocity2:b2Vec2 = body2.GetLinearVelocity().Copy();
         var angular1:Number = body1.GetAngularVelocity();
         var angular:Number = body2.GetAngularVelocity();
         body1.ResetMassData();
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
      
      public function GetMassData(data:b2MassData) : void
      {
         data.mass = this.m_mass;
         data.I = this.m_I;
         data.center.SetV(this.m_sweep.localCenter);
      }
      
      public function SetMassData(massData:b2MassData) : void
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
         this.m_mass = massData.mass;
         if(this.m_mass <= 0)
         {
            this.m_mass = 1;
         }
         this.m_invMass = 1 / this.m_mass;
         if(massData.I > 0 && (this.m_flags & e_fixedRotationFlag) == 0)
         {
            this.m_I = massData.I - this.m_mass * (massData.center.x * massData.center.x + massData.center.y * massData.center.y);
            this.m_invI = 1 / this.m_I;
         }
         var oldCenter:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(massData.center);
         this.m_sweep.c0.SetV(b2Math.MulX(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_linearVelocity.x += this.m_angularVelocity * -(this.m_sweep.c.y - oldCenter.y);
         this.m_linearVelocity.y += this.m_angularVelocity * (this.m_sweep.c.x - oldCenter.x);
      }
      
      public function ResetMassData() : void
      {
         var massData:b2MassData = null;
         this.m_mass = 0;
         this.m_invMass = 0;
         this.m_I = 0;
         this.m_invI = 0;
         this.m_sweep.localCenter.SetZero();
         if(this.m_type == b2_staticBody || this.m_type == b2_kinematicBody)
         {
            return;
         }
         var center:b2Vec2 = b2Vec2.Make(0,0);
         for(var f:b2Fixture = this.m_fixtureList; f; f = f.m_next)
         {
            if(f.m_density != 0)
            {
               massData = f.GetMassData();
               this.m_mass += massData.mass;
               center.x += massData.center.x * massData.mass;
               center.y += massData.center.y * massData.mass;
               this.m_I += massData.I;
            }
         }
         if(this.m_mass > 0)
         {
            this.m_invMass = 1 / this.m_mass;
            center.x *= this.m_invMass;
            center.y *= this.m_invMass;
         }
         else
         {
            this.m_mass = 1;
            this.m_invMass = 1;
         }
         if(this.m_I > 0 && (this.m_flags & e_fixedRotationFlag) == 0)
         {
            this.m_I -= this.m_mass * (center.x * center.x + center.y * center.y);
            this.m_I *= this.m_inertiaScale;
            b2Settings.b2Assert(this.m_I > 0);
            this.m_invI = 1 / this.m_I;
         }
         else
         {
            this.m_I = 0;
            this.m_invI = 0;
         }
         var oldCenter:b2Vec2 = this.m_sweep.c.Copy();
         this.m_sweep.localCenter.SetV(center);
         this.m_sweep.c0.SetV(b2Math.MulX(this.m_xf,this.m_sweep.localCenter));
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_linearVelocity.x += this.m_angularVelocity * -(this.m_sweep.c.y - oldCenter.y);
         this.m_linearVelocity.y += this.m_angularVelocity * (this.m_sweep.c.x - oldCenter.x);
      }
      
      public function GetWorldPoint(localPoint:b2Vec2) : b2Vec2
      {
         var A:b2Mat22 = this.m_xf.R;
         var u:b2Vec2 = new b2Vec2(A.col1.x * localPoint.x + A.col2.x * localPoint.y,A.col1.y * localPoint.x + A.col2.y * localPoint.y);
         u.x += this.m_xf.position.x;
         u.y += this.m_xf.position.y;
         return u;
      }
      
      public function GetWorldVector(localVector:b2Vec2) : b2Vec2
      {
         return b2Math.MulMV(this.m_xf.R,localVector);
      }
      
      public function GetLocalPoint(worldPoint:b2Vec2) : b2Vec2
      {
         return b2Math.MulXT(this.m_xf,worldPoint);
      }
      
      public function GetLocalVector(worldVector:b2Vec2) : b2Vec2
      {
         return b2Math.MulTMV(this.m_xf.R,worldVector);
      }
      
      public function GetLinearVelocityFromWorldPoint(worldPoint:b2Vec2) : b2Vec2
      {
         return new b2Vec2(this.m_linearVelocity.x - this.m_angularVelocity * (worldPoint.y - this.m_sweep.c.y),this.m_linearVelocity.y + this.m_angularVelocity * (worldPoint.x - this.m_sweep.c.x));
      }
      
      public function GetLinearVelocityFromLocalPoint(localPoint:b2Vec2) : b2Vec2
      {
         var A:b2Mat22 = this.m_xf.R;
         var worldPoint:b2Vec2 = new b2Vec2(A.col1.x * localPoint.x + A.col2.x * localPoint.y,A.col1.y * localPoint.x + A.col2.y * localPoint.y);
         worldPoint.x += this.m_xf.position.x;
         worldPoint.y += this.m_xf.position.y;
         return new b2Vec2(this.m_linearVelocity.x - this.m_angularVelocity * (worldPoint.y - this.m_sweep.c.y),this.m_linearVelocity.y + this.m_angularVelocity * (worldPoint.x - this.m_sweep.c.x));
      }
      
      public function GetLinearDamping() : Number
      {
         return this.m_linearDamping;
      }
      
      public function SetLinearDamping(linearDamping:Number) : void
      {
         this.m_linearDamping = linearDamping;
      }
      
      public function GetAngularDamping() : Number
      {
         return this.m_angularDamping;
      }
      
      public function SetAngularDamping(angularDamping:Number) : void
      {
         this.m_angularDamping = angularDamping;
      }
      
      public function SetType(type:uint) : void
      {
         if(this.m_type == type)
         {
            return;
         }
         this.m_type = type;
         this.ResetMassData();
         if(this.m_type == b2_staticBody)
         {
            this.m_linearVelocity.SetZero();
            this.m_angularVelocity = 0;
         }
         this.SetAwake(true);
         this.m_force.SetZero();
         this.m_torque = 0;
         for(var ce:b2ContactEdge = this.m_contactList; ce; ce = ce.next)
         {
            ce.contact.FlagForFiltering();
         }
      }
      
      public function GetType() : uint
      {
         return this.m_type;
      }
      
      public function SetBullet(flag:Boolean) : void
      {
         if(flag)
         {
            this.m_flags |= e_bulletFlag;
         }
         else
         {
            this.m_flags &= ~e_bulletFlag;
         }
      }
      
      public function IsBullet() : Boolean
      {
         return (this.m_flags & e_bulletFlag) == e_bulletFlag;
      }
      
      public function SetSleepingAllowed(flag:Boolean) : void
      {
         if(flag)
         {
            this.m_flags |= e_allowSleepFlag;
         }
         else
         {
            this.m_flags &= ~e_allowSleepFlag;
            this.SetAwake(true);
         }
      }
      
      public function SetAwake(flag:Boolean) : void
      {
         if(flag)
         {
            this.m_flags |= e_awakeFlag;
            this.m_sleepTime = 0;
         }
         else
         {
            this.m_flags &= ~e_awakeFlag;
            this.m_sleepTime = 0;
            this.m_linearVelocity.SetZero();
            this.m_angularVelocity = 0;
            this.m_force.SetZero();
            this.m_torque = 0;
         }
      }
      
      public function IsAwake() : Boolean
      {
         return (this.m_flags & e_awakeFlag) == e_awakeFlag;
      }
      
      public function SetFixedRotation(fixed:Boolean) : void
      {
         if(fixed)
         {
            this.m_flags |= e_fixedRotationFlag;
         }
         else
         {
            this.m_flags &= ~e_fixedRotationFlag;
         }
         this.ResetMassData();
      }
      
      public function IsFixedRotation() : Boolean
      {
         return (this.m_flags & e_fixedRotationFlag) == e_fixedRotationFlag;
      }
      
      public function SetActive(flag:Boolean) : void
      {
         var broadPhase:IBroadPhase = null;
         var f:b2Fixture = null;
         var ce:b2ContactEdge = null;
         var ce0:b2ContactEdge = null;
         if(flag == this.IsActive())
         {
            return;
         }
         if(flag)
         {
            this.m_flags |= e_activeFlag;
            broadPhase = this.m_world.m_contactManager.m_broadPhase;
            for(f = this.m_fixtureList; f; f = f.m_next)
            {
               f.CreateProxy(broadPhase,this.m_xf);
            }
         }
         else
         {
            this.m_flags &= ~e_activeFlag;
            broadPhase = this.m_world.m_contactManager.m_broadPhase;
            for(f = this.m_fixtureList; f; f = f.m_next)
            {
               f.DestroyProxy(broadPhase);
            }
            ce = this.m_contactList;
            while(ce)
            {
               ce0 = ce;
               ce = ce.next;
               this.m_world.m_contactManager.Destroy(ce0.contact);
            }
            this.m_contactList = null;
         }
      }
      
      public function IsActive() : Boolean
      {
         return (this.m_flags & e_activeFlag) == e_activeFlag;
      }
      
      public function IsSleepingAllowed() : Boolean
      {
         return (this.m_flags & e_allowSleepFlag) == e_allowSleepFlag;
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
      
      public function SetUserData(data:*) : void
      {
         this.m_userData = data;
      }
      
      public function GetWorld() : b2World
      {
         return this.m_world;
      }
      
      b2internal function SynchronizeFixtures() : void
      {
         var f:b2Fixture = null;
         var xf1:b2Transform = s_xf1;
         xf1.R.Set(this.m_sweep.a0);
         var tMat:b2Mat22 = xf1.R;
         var tVec:b2Vec2 = this.m_sweep.localCenter;
         xf1.position.x = this.m_sweep.c0.x - (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
         xf1.position.y = this.m_sweep.c0.y - (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
         var broadPhase:IBroadPhase = this.m_world.m_contactManager.m_broadPhase;
         for(f = this.m_fixtureList; f; f = f.m_next)
         {
            f.Synchronize(broadPhase,xf1,this.m_xf);
         }
      }
      
      b2internal function SynchronizeTransform() : void
      {
         this.m_xf.R.Set(this.m_sweep.a);
         var tMat:b2Mat22 = this.m_xf.R;
         var tVec:b2Vec2 = this.m_sweep.localCenter;
         this.m_xf.position.x = this.m_sweep.c.x - (tMat.col1.x * tVec.x + tMat.col2.x * tVec.y);
         this.m_xf.position.y = this.m_sweep.c.y - (tMat.col1.y * tVec.x + tMat.col2.y * tVec.y);
      }
      
      b2internal function ShouldCollide(other:b2Body) : Boolean
      {
         if(this.m_type != b2_dynamicBody && other.m_type != b2_dynamicBody)
         {
            return false;
         }
         for(var jn:b2JointEdge = this.m_jointList; jn; jn = jn.next)
         {
            if(jn.other == other)
            {
               if(jn.joint.m_collideConnected == false)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      b2internal function Advance(t:Number) : void
      {
         this.m_sweep.Advance(t);
         this.m_sweep.c.SetV(this.m_sweep.c0);
         this.m_sweep.a = this.m_sweep.a0;
         this.SynchronizeTransform();
      }
   }
}
