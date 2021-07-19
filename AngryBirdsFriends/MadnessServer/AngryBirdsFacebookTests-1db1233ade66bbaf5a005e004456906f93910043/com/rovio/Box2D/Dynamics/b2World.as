package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Collision.*;
   import com.rovio.Box2D.Collision.Shapes.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Dynamics.Contacts.*;
   import com.rovio.Box2D.Dynamics.Controllers.b2Controller;
   import com.rovio.Box2D.Dynamics.Controllers.b2ControllerEdge;
   import com.rovio.Box2D.Dynamics.Joints.*;
   
   use namespace b2internal;
   
   public class b2World
   {
      
      private static var s_timestep2:b2TimeStep = new b2TimeStep();
      
      protected static var s_xf:b2Transform = new b2Transform();
      
      private static var s_backupA:b2Sweep = new b2Sweep();
      
      private static var s_backupB:b2Sweep = new b2Sweep();
      
      private static var s_timestep:b2TimeStep = new b2TimeStep();
      
      private static var s_queue:Vector.<b2Body> = new Vector.<b2Body>();
      
      private static var s_jointColor:b2Color = new b2Color(0.5,0.8,0.8);
      
      private static var m_warmStarting:Boolean;
      
      private static var m_continuousPhysics:Boolean;
      
      public static const e_newFixture:int = 1;
      
      public static const e_locked:int = 2;
       
      
      private var s_stack:Vector.<b2Body>;
      
      b2internal var m_flags:int;
      
      b2internal var m_contactManager:b2ContactManager;
      
      private var m_contactSolver:b2ContactSolver;
      
      private var m_island:b2Island;
      
      b2internal var m_bodyList:b2Body;
      
      protected var m_jointList:b2Joint;
      
      b2internal var m_contactList:b2Contact;
      
      protected var m_bodyCount:int;
      
      b2internal var m_contactCount:int;
      
      protected var m_jointCount:int;
      
      protected var m_controllerList:b2Controller;
      
      private var m_controllerCount:int;
      
      private var m_gravity:b2Vec2;
      
      private var m_allowSleep:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var m_destructionListener:b2DestructionListener;
      
      protected var m_debugDraw:b2DebugDraw;
      
      private var m_inv_dt0:Number;
      
      public function b2World(gravity:b2Vec2, doSleep:Boolean)
      {
         this.s_stack = new Vector.<b2Body>();
         this.m_contactManager = new b2ContactManager();
         this.m_contactSolver = new b2ContactSolver();
         this.m_island = new b2Island();
         super();
         this.m_destructionListener = null;
         this.m_debugDraw = null;
         this.m_bodyList = null;
         this.m_contactList = null;
         this.m_jointList = null;
         this.m_controllerList = null;
         this.m_bodyCount = 0;
         this.m_contactCount = 0;
         this.m_jointCount = 0;
         this.m_controllerCount = 0;
         m_warmStarting = true;
         m_continuousPhysics = true;
         this.m_allowSleep = doSleep;
         this.m_gravity = gravity;
         this.m_inv_dt0 = 0;
         this.m_contactManager.m_world = this;
         var bd:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(bd);
      }
      
      public function SetDestructionListener(listener:b2DestructionListener) : void
      {
         this.m_destructionListener = listener;
      }
      
      public function SetContactFilter(filter:b2ContactFilter) : void
      {
         this.m_contactManager.m_contactFilter = filter;
      }
      
      public function SetContactListener(listener:b2ContactListener) : void
      {
         this.m_contactManager.m_contactListener = listener;
      }
      
      public function SetDebugDraw(debugDraw:b2DebugDraw) : void
      {
         this.m_debugDraw = debugDraw;
      }
      
      public function SetBroadPhase(broadPhase:IBroadPhase) : void
      {
         var f:b2Fixture = null;
         var oldBroadPhase:IBroadPhase = this.m_contactManager.m_broadPhase;
         this.m_contactManager.m_broadPhase = broadPhase;
         var b:b2Body = this.m_bodyList;
         while(b)
         {
            f = b.m_fixtureList;
            while(f)
            {
               f.m_proxy = broadPhase.CreateProxy(oldBroadPhase.GetFatAABB(f.m_proxy),f);
               f = f.m_next;
            }
            b = b.m_next;
         }
      }
      
      public function Validate() : void
      {
         this.m_contactManager.m_broadPhase.Validate();
      }
      
      public function GetProxyCount() : int
      {
         return this.m_contactManager.m_broadPhase.GetProxyCount();
      }
      
      public function CreateBody(def:b2BodyDef) : b2Body
      {
         if(this.IsLocked() == true)
         {
            return null;
         }
         var b:b2Body = new b2Body(def,this);
         b.m_prev = null;
         b.m_next = this.m_bodyList;
         if(this.m_bodyList)
         {
            this.m_bodyList.m_prev = b;
         }
         this.m_bodyList = b;
         ++this.m_bodyCount;
         return b;
      }
      
      public function DestroyBody(b:b2Body) : void
      {
         var jn0:b2JointEdge = null;
         var coe0:b2ControllerEdge = null;
         var ce0:b2ContactEdge = null;
         var f0:b2Fixture = null;
         if(this.IsLocked() == true)
         {
            return;
         }
         var jn:b2JointEdge = b.m_jointList;
         while(jn)
         {
            jn0 = jn;
            jn = jn.next;
            if(this.m_destructionListener)
            {
               this.m_destructionListener.SayGoodbyeJoint(jn0.joint);
            }
            this.DestroyJoint(jn0.joint);
         }
         var coe:b2ControllerEdge = b.m_controllerList;
         while(coe)
         {
            coe0 = coe;
            coe = coe.nextController;
            coe0.controller.RemoveBody(b);
         }
         var ce:b2ContactEdge = b.m_contactList;
         while(ce)
         {
            ce0 = ce;
            ce = ce.next;
            this.m_contactManager.Destroy(ce0.contact);
         }
         b.m_contactList = null;
         var f:b2Fixture = b.m_fixtureList;
         while(f)
         {
            f0 = f;
            f = f.m_next;
            if(this.m_destructionListener)
            {
               this.m_destructionListener.SayGoodbyeFixture(f0);
            }
            f0.DestroyProxy(this.m_contactManager.m_broadPhase);
            f0.Destroy();
         }
         b.m_fixtureList = null;
         b.m_fixtureCount = 0;
         if(b.m_prev)
         {
            b.m_prev.m_next = b.m_next;
         }
         if(b.m_next)
         {
            b.m_next.m_prev = b.m_prev;
         }
         if(b == this.m_bodyList)
         {
            this.m_bodyList = b.m_next;
         }
         --this.m_bodyCount;
      }
      
      public function CreateJoint(def:b2JointDef) : b2Joint
      {
         var edge:b2ContactEdge = null;
         var j:b2Joint = b2Joint.Create(def,null);
         j.m_prev = null;
         j.m_next = this.m_jointList;
         if(this.m_jointList)
         {
            this.m_jointList.m_prev = j;
         }
         this.m_jointList = j;
         ++this.m_jointCount;
         j.m_edgeA.joint = j;
         j.m_edgeA.other = j.m_bodyB;
         j.m_edgeA.prev = null;
         j.m_edgeA.next = j.m_bodyA.m_jointList;
         if(j.m_bodyA.m_jointList)
         {
            j.m_bodyA.m_jointList.prev = j.m_edgeA;
         }
         j.m_bodyA.m_jointList = j.m_edgeA;
         j.m_edgeB.joint = j;
         j.m_edgeB.other = j.m_bodyA;
         j.m_edgeB.prev = null;
         j.m_edgeB.next = j.m_bodyB.m_jointList;
         if(j.m_bodyB.m_jointList)
         {
            j.m_bodyB.m_jointList.prev = j.m_edgeB;
         }
         j.m_bodyB.m_jointList = j.m_edgeB;
         var bodyA:b2Body = def.bodyA;
         var bodyB:b2Body = def.bodyB;
         if(def.collideConnected == false)
         {
            edge = bodyB.GetContactList();
            while(edge)
            {
               if(edge.other == bodyA)
               {
                  edge.contact.FlagForFiltering();
               }
               edge = edge.next;
            }
         }
         return j;
      }
      
      public function DestroyJoint(j:b2Joint) : void
      {
         var edge:b2ContactEdge = null;
         var collideConnected:Boolean = j.m_collideConnected;
         if(j.m_prev)
         {
            j.m_prev.m_next = j.m_next;
         }
         if(j.m_next)
         {
            j.m_next.m_prev = j.m_prev;
         }
         if(j == this.m_jointList)
         {
            this.m_jointList = j.m_next;
         }
         var bodyA:b2Body = j.m_bodyA;
         var bodyB:b2Body = j.m_bodyB;
         bodyA.SetAwake(true);
         bodyB.SetAwake(true);
         if(j.m_edgeA.prev)
         {
            j.m_edgeA.prev.next = j.m_edgeA.next;
         }
         if(j.m_edgeA.next)
         {
            j.m_edgeA.next.prev = j.m_edgeA.prev;
         }
         if(j.m_edgeA == bodyA.m_jointList)
         {
            bodyA.m_jointList = j.m_edgeA.next;
         }
         j.m_edgeA.prev = null;
         j.m_edgeA.next = null;
         if(j.m_edgeB.prev)
         {
            j.m_edgeB.prev.next = j.m_edgeB.next;
         }
         if(j.m_edgeB.next)
         {
            j.m_edgeB.next.prev = j.m_edgeB.prev;
         }
         if(j.m_edgeB == bodyB.m_jointList)
         {
            bodyB.m_jointList = j.m_edgeB.next;
         }
         j.m_edgeB.prev = null;
         j.m_edgeB.next = null;
         b2Joint.Destroy(j,null);
         --this.m_jointCount;
         if(collideConnected == false)
         {
            edge = bodyB.GetContactList();
            while(edge)
            {
               if(edge.other == bodyA)
               {
                  edge.contact.FlagForFiltering();
               }
               edge = edge.next;
            }
         }
      }
      
      public function AddController(c:b2Controller) : b2Controller
      {
         c.m_next = this.m_controllerList;
         c.m_prev = null;
         this.m_controllerList = c;
         c.m_world = this;
         ++this.m_controllerCount;
         return c;
      }
      
      public function RemoveController(c:b2Controller) : void
      {
         if(c.m_prev)
         {
            c.m_prev.m_next = c.m_next;
         }
         if(c.m_next)
         {
            c.m_next.m_prev = c.m_prev;
         }
         if(this.m_controllerList == c)
         {
            this.m_controllerList = c.m_next;
         }
         --this.m_controllerCount;
      }
      
      public function CreateController(controller:b2Controller) : b2Controller
      {
         if(controller.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         controller.m_next = this.m_controllerList;
         controller.m_prev = null;
         if(this.m_controllerList)
         {
            this.m_controllerList.m_prev = controller;
         }
         this.m_controllerList = controller;
         ++this.m_controllerCount;
         controller.m_world = this;
         return controller;
      }
      
      public function DestroyController(controller:b2Controller) : void
      {
         controller.Clear();
         if(controller.m_next)
         {
            controller.m_next.m_prev = controller.m_prev;
         }
         if(controller.m_prev)
         {
            controller.m_prev.m_next = controller.m_next;
         }
         if(controller == this.m_controllerList)
         {
            this.m_controllerList = controller.m_next;
         }
         --this.m_controllerCount;
      }
      
      public function SetWarmStarting(flag:Boolean) : void
      {
         m_warmStarting = flag;
      }
      
      public function SetContinuousPhysics(flag:Boolean) : void
      {
         m_continuousPhysics = flag;
      }
      
      public function GetBodyCount() : int
      {
         return this.m_bodyCount;
      }
      
      public function GetJointCount() : int
      {
         return this.m_jointCount;
      }
      
      public function GetContactCount() : int
      {
         return this.m_contactCount;
      }
      
      public function SetGravity(gravity:b2Vec2) : void
      {
         this.m_gravity = gravity;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.m_gravity;
      }
      
      public function GetGroundBody() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(dt:Number, velocityIterations:int, positionIterations:int) : void
      {
         if(this.m_flags & e_newFixture)
         {
            this.m_contactManager.FindNewContacts();
            this.m_flags &= ~e_newFixture;
         }
         this.m_flags |= e_locked;
         var step:b2TimeStep = s_timestep2;
         step.dt = dt;
         step.velocityIterations = velocityIterations;
         step.positionIterations = positionIterations;
         if(dt > 0)
         {
            step.inv_dt = 1 / dt;
         }
         else
         {
            step.inv_dt = 0;
         }
         step.dtRatio = this.m_inv_dt0 * dt;
         step.warmStarting = m_warmStarting;
         this.m_contactManager.Collide();
         if(step.dt > 0)
         {
            this.Solve(step);
         }
         if(m_continuousPhysics && step.dt > 0)
         {
            this.SolveTOI(step);
         }
         if(step.dt > 0)
         {
            this.m_inv_dt0 = step.inv_dt;
         }
         this.m_flags &= ~e_locked;
      }
      
      public function ClearForces() : void
      {
         var body:b2Body = this.m_bodyList;
         while(body)
         {
            body.m_force.SetZero();
            body.m_torque = 0;
            body = body.m_next;
         }
      }
      
      public function DrawDebugData() : void
      {
         var i:int = 0;
         var b:b2Body = null;
         var f:b2Fixture = null;
         var s:b2Shape = null;
         var j:b2Joint = null;
         var bp:IBroadPhase = null;
         var xf:b2Transform = null;
         var c:b2Controller = null;
         var contact:b2Contact = null;
         var fixtureA:b2Fixture = null;
         var fixtureB:b2Fixture = null;
         var cA:b2Vec2 = null;
         var cB:b2Vec2 = null;
         var aabb:b2AABB = null;
         if(this.m_debugDraw == null)
         {
            return;
         }
         this.m_debugDraw.m_sprite.graphics.clear();
         var flags:uint = this.m_debugDraw.GetFlags();
         var invQ:b2Vec2 = new b2Vec2();
         var x1:b2Vec2 = new b2Vec2();
         var x2:b2Vec2 = new b2Vec2();
         var b1:b2AABB = new b2AABB();
         var b2:b2AABB = new b2AABB();
         var vs:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var color:b2Color = new b2Color(0,0,0);
         if(flags & b2DebugDraw.e_shapeBit)
         {
            b = this.m_bodyList;
            while(b)
            {
               xf = b.m_xf;
               f = b.GetFixtureList();
               while(f)
               {
                  s = f.GetShape();
                  if(b.IsActive() == false)
                  {
                     color.Set(0.5,0.5,0.3);
                     this.DrawShape(s,xf,color);
                  }
                  else if(b.GetType() == b2Body.b2_staticBody)
                  {
                     color.Set(0.5,0.9,0.5);
                     this.DrawShape(s,xf,color);
                  }
                  else if(b.GetType() == b2Body.b2_kinematicBody)
                  {
                     color.Set(0.5,0.5,0.9);
                     this.DrawShape(s,xf,color);
                  }
                  else if(b.IsAwake() == false)
                  {
                     color.Set(0.6,0.6,0.6);
                     this.DrawShape(s,xf,color);
                  }
                  else
                  {
                     color.Set(0.9,0.7,0.7);
                     this.DrawShape(s,xf,color);
                  }
                  f = f.m_next;
               }
               b = b.m_next;
            }
         }
         if(flags & b2DebugDraw.e_jointBit)
         {
            j = this.m_jointList;
            while(j)
            {
               this.DrawJoint(j);
               j = j.m_next;
            }
         }
         if(flags & b2DebugDraw.e_controllerBit)
         {
            c = this.m_controllerList;
            while(c)
            {
               c.Draw(this.m_debugDraw);
               c = c.m_next;
            }
         }
         if(flags & b2DebugDraw.e_pairBit)
         {
            color.Set(0.3,0.9,0.9);
            contact = this.m_contactManager.m_contactList;
            while(contact)
            {
               fixtureA = contact.GetFixtureA();
               fixtureB = contact.GetFixtureB();
               cA = fixtureA.GetAABB().GetCenter();
               cB = fixtureB.GetAABB().GetCenter();
               this.m_debugDraw.DrawSegment(cA,cB,color);
               contact = contact.GetNext();
            }
         }
         if(flags & b2DebugDraw.e_aabbBit)
         {
            bp = this.m_contactManager.m_broadPhase;
            vs = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            b = this.m_bodyList;
            while(b)
            {
               if(b.IsActive() != false)
               {
                  f = b.GetFixtureList();
                  while(f)
                  {
                     aabb = bp.GetFatAABB(f.m_proxy);
                     vs[0].Set(aabb.lowerBound.x,aabb.lowerBound.y);
                     vs[1].Set(aabb.upperBound.x,aabb.lowerBound.y);
                     vs[2].Set(aabb.upperBound.x,aabb.upperBound.y);
                     vs[3].Set(aabb.lowerBound.x,aabb.upperBound.y);
                     this.m_debugDraw.DrawPolygon(vs,4,color);
                     f = f.GetNext();
                  }
               }
               b = b.GetNext();
            }
         }
         if(flags & b2DebugDraw.e_centerOfMassBit)
         {
            b = this.m_bodyList;
            while(b)
            {
               xf = s_xf;
               xf.R = b.m_xf.R;
               xf.position = b.GetWorldCenter();
               this.m_debugDraw.DrawTransform(xf);
               b = b.m_next;
            }
         }
      }
      
      public function QueryAABB(callback:Function, aabb:b2AABB) : void
      {
         var broadPhase:IBroadPhase = null;
         var WorldQueryWrapper:Function = null;
         WorldQueryWrapper = function(proxy:*):Boolean
         {
            return callback(broadPhase.GetUserData(proxy));
         };
         broadPhase = this.m_contactManager.m_broadPhase;
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function QueryShape(callback:Function, shape:b2Shape, transform:b2Transform = null) : void
      {
         var broadPhase:IBroadPhase = null;
         var WorldQueryWrapper:Function = null;
         WorldQueryWrapper = function(proxy:*):Boolean
         {
            var fixture:b2Fixture = broadPhase.GetUserData(proxy) as b2Fixture;
            if(b2Shape.TestOverlap(shape,transform,fixture.GetShape(),fixture.GetBody().GetTransform()))
            {
               return callback(fixture);
            }
            return true;
         };
         if(transform == null)
         {
            var transform:b2Transform = new b2Transform();
            transform.SetIdentity();
         }
         broadPhase = this.m_contactManager.m_broadPhase;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function QueryPoint(callback:Function, p:b2Vec2) : void
      {
         var broadPhase:IBroadPhase = null;
         var WorldQueryWrapper:Function = null;
         WorldQueryWrapper = function(proxy:*):Boolean
         {
            var fixture:b2Fixture = broadPhase.GetUserData(proxy) as b2Fixture;
            if(fixture.TestPoint(p))
            {
               return callback(fixture);
            }
            return true;
         };
         broadPhase = this.m_contactManager.m_broadPhase;
         var aabb:b2AABB = new b2AABB();
         aabb.lowerBound.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.upperBound.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(callback:Function, point1:b2Vec2, point2:b2Vec2) : void
      {
         var broadPhase:IBroadPhase = null;
         var output:b2RayCastOutput = null;
         var RayCastWrapper:Function = null;
         RayCastWrapper = function(input:b2RayCastInput, proxy:*):Number
         {
            var fraction:Number = NaN;
            var point:b2Vec2 = null;
            var userData:* = broadPhase.GetUserData(proxy);
            var fixture:b2Fixture = userData as b2Fixture;
            var hit:Boolean = fixture.RayCast(output,input);
            if(hit)
            {
               fraction = output.fraction;
               point = new b2Vec2((1 - fraction) * point1.x + fraction * point2.x,(1 - fraction) * point1.y + fraction * point2.y);
               return callback(fixture,point,output.normal,fraction);
            }
            return input.maxFraction;
         };
         broadPhase = this.m_contactManager.m_broadPhase;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function RayCastOne(point1:b2Vec2, point2:b2Vec2) : b2Fixture
      {
         var result:b2Fixture = null;
         var RayCastOneWrapper:Function = null;
         RayCastOneWrapper = function(fixture:b2Fixture, point:b2Vec2, normal:b2Vec2, fraction:Number):Number
         {
            result = fixture;
            return fraction;
         };
         this.RayCast(RayCastOneWrapper,point1,point2);
         return result;
      }
      
      public function RayCastAll(point1:b2Vec2, point2:b2Vec2) : Vector.<b2Fixture>
      {
         var result:Vector.<b2Fixture> = null;
         var RayCastAllWrapper:Function = null;
         RayCastAllWrapper = function(fixture:b2Fixture, point:b2Vec2, normal:b2Vec2, fraction:Number):Number
         {
            result[result.length] = fixture;
            return 1;
         };
         result = new Vector.<b2Fixture>();
         this.RayCast(RayCastAllWrapper,point1,point2);
         return result;
      }
      
      public function GetBodyList() : b2Body
      {
         return this.m_bodyList;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.m_jointList;
      }
      
      public function GetContactList() : b2Contact
      {
         return this.m_contactList;
      }
      
      public function IsLocked() : Boolean
      {
         return (this.m_flags & e_locked) > 0;
      }
      
      b2internal function Solve(step:b2TimeStep) : void
      {
         var b:b2Body = null;
         var stackCount:int = 0;
         var i:int = 0;
         var other:b2Body = null;
         var ce:b2ContactEdge = null;
         var jn:b2JointEdge = null;
         var controller:b2Controller = this.m_controllerList;
         while(controller)
         {
            controller.Step(step);
            controller = controller.m_next;
         }
         var island:b2Island = this.m_island;
         island.Initialize(this.m_bodyCount,this.m_contactCount,this.m_jointCount,null,this.m_contactManager.m_contactListener,this.m_contactSolver);
         b = this.m_bodyList;
         while(b)
         {
            b.m_flags &= ~b2Body.e_islandFlag;
            b = b.m_next;
         }
         var c:b2Contact = this.m_contactList;
         while(c)
         {
            c.m_flags &= ~b2Contact.e_islandFlag;
            c = c.m_next;
         }
         var j:b2Joint = this.m_jointList;
         while(j)
         {
            j.m_islandFlag = false;
            j = j.m_next;
         }
         var stackSize:int = this.m_bodyCount;
         var stack:Vector.<b2Body> = this.s_stack;
         var seed:b2Body = this.m_bodyList;
         while(seed)
         {
            if(!(seed.m_flags & b2Body.e_islandFlag))
            {
               if(!(seed.IsAwake() == false || seed.IsActive() == false))
               {
                  if(seed.GetType() != b2Body.b2_staticBody)
                  {
                     island.Clear();
                     stackCount = 0;
                     var _loc15_:*;
                     stack[_loc15_ = stackCount++] = seed;
                     seed.m_flags |= b2Body.e_islandFlag;
                     while(stackCount > 0)
                     {
                        b = stack[--stackCount];
                        island.AddBody(b);
                        if(b.IsAwake() == false)
                        {
                           b.SetAwake(true);
                        }
                        if(b.GetType() != b2Body.b2_staticBody)
                        {
                           ce = b.m_contactList;
                           while(ce)
                           {
                              if(!(ce.contact.m_flags & b2Contact.e_islandFlag))
                              {
                                 if(!(ce.contact.IsSensor() == true || ce.contact.IsEnabled() == false || ce.contact.IsTouching() == false))
                                 {
                                    island.AddContact(ce.contact);
                                    ce.contact.m_flags |= b2Contact.e_islandFlag;
                                    other = ce.other;
                                    if(!(other.m_flags & b2Body.e_islandFlag))
                                    {
                                       var _loc16_:*;
                                       stack[_loc16_ = stackCount++] = other;
                                       other.m_flags |= b2Body.e_islandFlag;
                                    }
                                 }
                              }
                              ce = ce.next;
                           }
                           jn = b.m_jointList;
                           while(jn)
                           {
                              if(jn.joint.m_islandFlag != true)
                              {
                                 other = jn.other;
                                 if(other.IsActive() != false)
                                 {
                                    island.AddJoint(jn.joint);
                                    jn.joint.m_islandFlag = true;
                                    if(!(other.m_flags & b2Body.e_islandFlag))
                                    {
                                       stack[_loc16_ = stackCount++] = other;
                                       other.m_flags |= b2Body.e_islandFlag;
                                    }
                                 }
                              }
                              jn = jn.next;
                           }
                        }
                     }
                     island.Solve(step,this.m_gravity,this.m_allowSleep);
                     for(i = 0; i < island.m_bodyCount; i++)
                     {
                        b = island.m_bodies[i];
                        if(b.GetType() == b2Body.b2_staticBody)
                        {
                           b.m_flags &= ~b2Body.e_islandFlag;
                        }
                     }
                  }
               }
            }
            seed = seed.m_next;
         }
         for(i = 0; i < stack.length; i++)
         {
            if(!stack[i])
            {
               break;
            }
            stack[i] = null;
         }
         b = this.m_bodyList;
         while(b)
         {
            if(!(b.IsAwake() == false || b.IsActive() == false))
            {
               if(b.GetType() != b2Body.b2_staticBody)
               {
                  b.SynchronizeFixtures();
               }
            }
            b = b.m_next;
         }
         this.m_contactManager.FindNewContacts();
      }
      
      b2internal function SolveTOI(step:b2TimeStep) : void
      {
         var b:b2Body = null;
         var fA:b2Fixture = null;
         var fB:b2Fixture = null;
         var bA:b2Body = null;
         var bB:b2Body = null;
         var cEdge:b2ContactEdge = null;
         var j:b2Joint = null;
         var c:b2Contact = null;
         var minContact:b2Contact = null;
         var minTOI:Number = NaN;
         var seed:b2Body = null;
         var queueStart:int = 0;
         var queueSize:int = 0;
         var subStep:b2TimeStep = null;
         var i:int = 0;
         var toi:Number = NaN;
         var t0:Number = NaN;
         var jEdge:b2JointEdge = null;
         var other:b2Body = null;
         var island:b2Island = this.m_island;
         island.Initialize(this.m_bodyCount,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.m_contactManager.m_contactListener,this.m_contactSolver);
         var queue:Vector.<b2Body> = s_queue;
         b = this.m_bodyList;
         while(b)
         {
            b.m_flags &= ~b2Body.e_islandFlag;
            b.m_sweep.t0 = 0;
            b = b.m_next;
         }
         c = this.m_contactList;
         while(c)
         {
            c.m_flags &= ~(b2Contact.e_toiFlag | b2Contact.e_islandFlag);
            c.m_toi = 1;
            c = c.m_next;
         }
         j = this.m_jointList;
         while(j)
         {
            j.m_islandFlag = false;
            j = j.m_next;
         }
         while(true)
         {
            minContact = null;
            minTOI = 1;
            c = this.m_contactList;
            for(; c; c = c.m_next)
            {
               if(!(c.IsSensor() == true || c.IsEnabled() == false || c.IsContinuous() == false))
               {
                  toi = 1;
                  if(c.m_flags & b2Contact.e_toiFlag)
                  {
                     toi = c.m_toi;
                  }
                  else
                  {
                     fA = c.m_fixtureA;
                     fB = c.m_fixtureB;
                     bA = fA.m_body;
                     bB = fB.m_body;
                     if((bA.GetType() != b2Body.b2_dynamicBody || bA.IsAwake() == false) && (bB.GetType() != b2Body.b2_dynamicBody || bB.IsAwake() == false))
                     {
                        continue;
                     }
                     t0 = bA.m_sweep.t0;
                     if(bA.m_sweep.t0 < bB.m_sweep.t0)
                     {
                        t0 = bB.m_sweep.t0;
                        bA.m_sweep.Advance(t0);
                     }
                     else if(bB.m_sweep.t0 < bA.m_sweep.t0)
                     {
                        t0 = bA.m_sweep.t0;
                        bB.m_sweep.Advance(t0);
                     }
                     toi = c.ComputeTOI(bA.m_sweep,bB.m_sweep);
                     b2Settings.b2Assert(0 <= toi && toi <= 1);
                     if(toi > 0 && toi < 1)
                     {
                        toi = (1 - toi) * t0 + toi;
                        if(toi > 1)
                        {
                           toi = 1;
                        }
                     }
                     c.m_toi = toi;
                     c.m_flags |= b2Contact.e_toiFlag;
                  }
                  if(Number.MIN_VALUE < toi && toi < minTOI)
                  {
                     minContact = c;
                     minTOI = toi;
                  }
               }
            }
            if(minContact == null || 1 - 100 * Number.MIN_VALUE < minTOI)
            {
               break;
            }
            fA = minContact.m_fixtureA;
            fB = minContact.m_fixtureB;
            bA = fA.m_body;
            bB = fB.m_body;
            s_backupA.Set(bA.m_sweep);
            s_backupB.Set(bB.m_sweep);
            bA.Advance(minTOI);
            bB.Advance(minTOI);
            minContact.Update(this.m_contactManager.m_contactListener);
            minContact.m_flags &= ~b2Contact.e_toiFlag;
            if(minContact.IsSensor() == true || minContact.IsEnabled() == false)
            {
               bA.m_sweep.Set(s_backupA);
               bB.m_sweep.Set(s_backupB);
               bA.SynchronizeTransform();
               bB.SynchronizeTransform();
            }
            else if(minContact.IsTouching() != false)
            {
               seed = bA;
               if(seed.GetType() != b2Body.b2_dynamicBody)
               {
                  seed = bB;
               }
               island.Clear();
               queueStart = 0;
               queueSize = 0;
               queue[queueStart + queueSize++] = seed;
               seed.m_flags |= b2Body.e_islandFlag;
               while(queueSize > 0)
               {
                  b = queue[queueStart++];
                  queueSize--;
                  island.AddBody(b);
                  if(b.IsAwake() == false)
                  {
                     b.SetAwake(true);
                  }
                  if(b.GetType() == b2Body.b2_dynamicBody)
                  {
                     cEdge = b.m_contactList;
                     while(cEdge)
                     {
                        if(island.m_contactCount == island.m_contactCapacity)
                        {
                           break;
                        }
                        if(!(cEdge.contact.m_flags & b2Contact.e_islandFlag))
                        {
                           if(!(cEdge.contact.IsSensor() == true || cEdge.contact.IsEnabled() == false || cEdge.contact.IsTouching() == false))
                           {
                              island.AddContact(cEdge.contact);
                              cEdge.contact.m_flags |= b2Contact.e_islandFlag;
                              other = cEdge.other;
                              if(!(other.m_flags & b2Body.e_islandFlag))
                              {
                                 if(other.GetType() != b2Body.b2_staticBody)
                                 {
                                    other.Advance(minTOI);
                                    other.SetAwake(true);
                                 }
                                 queue[queueStart + queueSize] = other;
                                 queueSize++;
                                 other.m_flags |= b2Body.e_islandFlag;
                              }
                           }
                        }
                        cEdge = cEdge.next;
                     }
                     jEdge = b.m_jointList;
                     while(jEdge)
                     {
                        if(island.m_jointCount != island.m_jointCapacity)
                        {
                           if(jEdge.joint.m_islandFlag != true)
                           {
                              other = jEdge.other;
                              if(other.IsActive() != false)
                              {
                                 island.AddJoint(jEdge.joint);
                                 jEdge.joint.m_islandFlag = true;
                                 if(!(other.m_flags & b2Body.e_islandFlag))
                                 {
                                    if(other.GetType() != b2Body.b2_staticBody)
                                    {
                                       other.Advance(minTOI);
                                       other.SetAwake(true);
                                    }
                                    queue[queueStart + queueSize] = other;
                                    queueSize++;
                                    other.m_flags |= b2Body.e_islandFlag;
                                 }
                              }
                           }
                        }
                        jEdge = jEdge.next;
                     }
                  }
               }
               subStep = s_timestep;
               subStep.warmStarting = false;
               subStep.dt = (1 - minTOI) * step.dt;
               subStep.inv_dt = 1 / subStep.dt;
               subStep.dtRatio = 1;
               subStep.velocityIterations = step.velocityIterations;
               subStep.positionIterations = step.positionIterations;
               island.SolveTOI(subStep);
               for(i = 0; i < island.m_bodyCount; i++)
               {
                  b = island.m_bodies[i];
                  b.m_flags &= ~b2Body.e_islandFlag;
                  if(b.IsAwake() != false)
                  {
                     if(b.GetType() == b2Body.b2_dynamicBody)
                     {
                        b.SynchronizeFixtures();
                        cEdge = b.m_contactList;
                        while(cEdge)
                        {
                           cEdge.contact.m_flags &= ~b2Contact.e_toiFlag;
                           cEdge = cEdge.next;
                        }
                     }
                  }
               }
               for(i = 0; i < island.m_contactCount; i++)
               {
                  c = island.m_contacts[i];
                  c.m_flags &= ~(b2Contact.e_toiFlag | b2Contact.e_islandFlag);
               }
               for(i = 0; i < island.m_jointCount; i++)
               {
                  j = island.m_joints[i];
                  j.m_islandFlag = false;
               }
               this.m_contactManager.FindNewContacts();
            }
         }
      }
      
      b2internal function DrawJoint(joint:b2Joint) : void
      {
         var pulley:b2PulleyJoint = null;
         var s1:b2Vec2 = null;
         var s2:b2Vec2 = null;
         var b1:b2Body = joint.GetBodyA();
         var b2:b2Body = joint.GetBodyB();
         var xf1:b2Transform = b1.m_xf;
         var xf2:b2Transform = b2.m_xf;
         var x1:b2Vec2 = xf1.position;
         var x2:b2Vec2 = xf2.position;
         var p1:b2Vec2 = joint.GetAnchorA();
         var p2:b2Vec2 = joint.GetAnchorB();
         var color:b2Color = s_jointColor;
         switch(joint.m_type)
         {
            case b2Joint.e_distanceJoint:
               this.m_debugDraw.DrawSegment(p1,p2,color);
               break;
            case b2Joint.e_pulleyJoint:
               pulley = joint as b2PulleyJoint;
               s1 = pulley.GetGroundAnchorA();
               s2 = pulley.GetGroundAnchorB();
               this.m_debugDraw.DrawSegment(s1,p1,color);
               this.m_debugDraw.DrawSegment(s2,p2,color);
               this.m_debugDraw.DrawSegment(s1,s2,color);
               break;
            case b2Joint.e_mouseJoint:
               this.m_debugDraw.DrawSegment(p1,p2,color);
               break;
            default:
               if(b1 != this.m_groundBody)
               {
                  this.m_debugDraw.DrawSegment(x1,p1,color);
               }
               this.m_debugDraw.DrawSegment(p1,p2,color);
               if(b2 != this.m_groundBody)
               {
                  this.m_debugDraw.DrawSegment(x2,p2,color);
               }
         }
      }
      
      b2internal function DrawShape(shape:b2Shape, xf:b2Transform, color:b2Color) : void
      {
         var circle:b2CircleShape = null;
         var center:b2Vec2 = null;
         var radius:Number = NaN;
         var axis:b2Vec2 = null;
         var i:int = 0;
         var poly:b2PolygonShape = null;
         var vertexCount:int = 0;
         var localVertices:Vector.<b2Vec2> = null;
         var vertices:Vector.<b2Vec2> = null;
         var edge:b2EdgeShape = null;
         switch(shape.m_type)
         {
            case b2Shape.e_circleShape:
               circle = shape as b2CircleShape;
               center = b2Math.MulX(xf,circle.m_p);
               radius = circle.m_radius;
               axis = xf.R.col1;
               this.m_debugDraw.DrawSolidCircle(center,radius,axis,color);
               break;
            case b2Shape.e_polygonShape:
               poly = shape as b2PolygonShape;
               vertexCount = poly.GetVertexCount();
               localVertices = poly.GetVertices();
               vertices = new Vector.<b2Vec2>(vertexCount);
               for(i = 0; i < vertexCount; i++)
               {
                  vertices[i] = b2Math.MulX(xf,localVertices[i]);
               }
               this.m_debugDraw.DrawSolidPolygon(vertices,vertexCount,color);
               break;
            case b2Shape.e_edgeShape:
               edge = shape as b2EdgeShape;
               this.m_debugDraw.DrawSegment(b2Math.MulX(xf,edge.GetVertex1()),b2Math.MulX(xf,edge.GetVertex2()),color);
         }
      }
   }
}
