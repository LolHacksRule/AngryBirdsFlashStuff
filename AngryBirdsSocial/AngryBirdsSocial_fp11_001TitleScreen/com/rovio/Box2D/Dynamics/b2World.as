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
      
      private static var s_xf:b2Transform = new b2Transform();
      
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
      
      private var m_jointList:b2Joint;
      
      b2internal var m_contactList:b2Contact;
      
      private var m_bodyCount:int;
      
      b2internal var m_contactCount:int;
      
      private var m_jointCount:int;
      
      private var m_controllerList:b2Controller;
      
      private var m_controllerCount:int;
      
      private var m_gravity:b2Vec2;
      
      private var m_allowSleep:Boolean;
      
      b2internal var m_groundBody:b2Body;
      
      private var m_destructionListener:b2DestructionListener;
      
      private var m_debugDraw:b2DebugDraw;
      
      private var m_inv_dt0:Number;
      
      public function b2World(param1:b2Vec2, param2:Boolean)
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
         this.m_allowSleep = param2;
         this.m_gravity = param1;
         this.m_inv_dt0 = 0;
         this.m_contactManager.m_world = this;
         var _loc3_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = this.CreateBody(_loc3_);
      }
      
      public function SetDestructionListener(param1:b2DestructionListener) : void
      {
         this.m_destructionListener = param1;
      }
      
      public function SetContactFilter(param1:b2ContactFilter) : void
      {
         this.m_contactManager.m_contactFilter = param1;
      }
      
      public function SetContactListener(param1:b2ContactListener) : void
      {
         this.m_contactManager.m_contactListener = param1;
      }
      
      public function SetDebugDraw(param1:b2DebugDraw) : void
      {
         this.m_debugDraw = param1;
      }
      
      public function SetBroadPhase(param1:IBroadPhase) : void
      {
         var _loc4_:b2Fixture = null;
         var _loc2_:IBroadPhase = this.m_contactManager.m_broadPhase;
         this.m_contactManager.m_broadPhase = param1;
         var _loc3_:b2Body = this.m_bodyList;
         while(_loc3_)
         {
            _loc4_ = _loc3_.m_fixtureList;
            while(_loc4_)
            {
               _loc4_.m_proxy = param1.CreateProxy(_loc2_.GetFatAABB(_loc4_.m_proxy),_loc4_);
               _loc4_ = _loc4_.m_next;
            }
            _loc3_ = _loc3_.m_next;
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
      
      public function CreateBody(param1:b2BodyDef) : b2Body
      {
         if(this.IsLocked() == true)
         {
            return null;
         }
         var _loc2_:b2Body = new b2Body(param1,this);
         _loc2_.m_prev = null;
         _loc2_.m_next = this.m_bodyList;
         if(this.m_bodyList)
         {
            this.m_bodyList.m_prev = _loc2_;
         }
         this.m_bodyList = _loc2_;
         ++this.m_bodyCount;
         return _loc2_;
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         var _loc6_:b2JointEdge = null;
         var _loc7_:b2ControllerEdge = null;
         var _loc8_:b2ContactEdge = null;
         var _loc9_:b2Fixture = null;
         if(this.IsLocked() == true)
         {
            return;
         }
         var _loc2_:b2JointEdge = param1.m_jointList;
         while(_loc2_)
         {
            _loc6_ = _loc2_;
            _loc2_ = _loc2_.next;
            if(this.m_destructionListener)
            {
               this.m_destructionListener.SayGoodbyeJoint(_loc6_.joint);
            }
            this.DestroyJoint(_loc6_.joint);
         }
         var _loc3_:b2ControllerEdge = param1.m_controllerList;
         while(_loc3_)
         {
            _loc7_ = _loc3_;
            _loc3_ = _loc3_.nextController;
            _loc7_.controller.RemoveBody(param1);
         }
         var _loc4_:b2ContactEdge = param1.m_contactList;
         while(_loc4_)
         {
            _loc8_ = _loc4_;
            _loc4_ = _loc4_.next;
            this.m_contactManager.Destroy(_loc8_.contact);
         }
         param1.m_contactList = null;
         var _loc5_:b2Fixture = param1.m_fixtureList;
         while(_loc5_)
         {
            _loc9_ = _loc5_;
            _loc5_ = _loc5_.m_next;
            if(this.m_destructionListener)
            {
               this.m_destructionListener.SayGoodbyeFixture(_loc9_);
            }
            _loc9_.DestroyProxy(this.m_contactManager.m_broadPhase);
            _loc9_.Destroy();
         }
         param1.m_fixtureList = null;
         param1.m_fixtureCount = 0;
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1 == this.m_bodyList)
         {
            this.m_bodyList = param1.m_next;
         }
         --this.m_bodyCount;
      }
      
      public function CreateJoint(param1:b2JointDef) : b2Joint
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:b2Joint = b2Joint.Create(param1,null);
         _loc2_.m_prev = null;
         _loc2_.m_next = this.m_jointList;
         if(this.m_jointList)
         {
            this.m_jointList.m_prev = _loc2_;
         }
         this.m_jointList = _loc2_;
         ++this.m_jointCount;
         _loc2_.m_edgeA.joint = _loc2_;
         _loc2_.m_edgeA.other = _loc2_.m_bodyB;
         _loc2_.m_edgeA.prev = null;
         _loc2_.m_edgeA.next = _loc2_.m_bodyA.m_jointList;
         if(_loc2_.m_bodyA.m_jointList)
         {
            _loc2_.m_bodyA.m_jointList.prev = _loc2_.m_edgeA;
         }
         _loc2_.m_bodyA.m_jointList = _loc2_.m_edgeA;
         _loc2_.m_edgeB.joint = _loc2_;
         _loc2_.m_edgeB.other = _loc2_.m_bodyA;
         _loc2_.m_edgeB.prev = null;
         _loc2_.m_edgeB.next = _loc2_.m_bodyB.m_jointList;
         if(_loc2_.m_bodyB.m_jointList)
         {
            _loc2_.m_bodyB.m_jointList.prev = _loc2_.m_edgeB;
         }
         _loc2_.m_bodyB.m_jointList = _loc2_.m_edgeB;
         var _loc3_:b2Body = param1.bodyA;
         var _loc4_:b2Body = param1.bodyB;
         if(param1.collideConnected == false)
         {
            _loc5_ = _loc4_.GetContactList();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.contact.FlagForFiltering();
               }
               _loc5_ = _loc5_.next;
            }
         }
         return _loc2_;
      }
      
      public function DestroyJoint(param1:b2Joint) : void
      {
         var _loc5_:b2ContactEdge = null;
         var _loc2_:Boolean = param1.m_collideConnected;
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1 == this.m_jointList)
         {
            this.m_jointList = param1.m_next;
         }
         var _loc3_:b2Body = param1.m_bodyA;
         var _loc4_:b2Body = param1.m_bodyB;
         _loc3_.SetAwake(true);
         _loc4_.SetAwake(true);
         if(param1.m_edgeA.prev)
         {
            param1.m_edgeA.prev.next = param1.m_edgeA.next;
         }
         if(param1.m_edgeA.next)
         {
            param1.m_edgeA.next.prev = param1.m_edgeA.prev;
         }
         if(param1.m_edgeA == _loc3_.m_jointList)
         {
            _loc3_.m_jointList = param1.m_edgeA.next;
         }
         param1.m_edgeA.prev = null;
         param1.m_edgeA.next = null;
         if(param1.m_edgeB.prev)
         {
            param1.m_edgeB.prev.next = param1.m_edgeB.next;
         }
         if(param1.m_edgeB.next)
         {
            param1.m_edgeB.next.prev = param1.m_edgeB.prev;
         }
         if(param1.m_edgeB == _loc4_.m_jointList)
         {
            _loc4_.m_jointList = param1.m_edgeB.next;
         }
         param1.m_edgeB.prev = null;
         param1.m_edgeB.next = null;
         b2Joint.Destroy(param1,null);
         --this.m_jointCount;
         if(_loc2_ == false)
         {
            _loc5_ = _loc4_.GetContactList();
            while(_loc5_)
            {
               if(_loc5_.other == _loc3_)
               {
                  _loc5_.contact.FlagForFiltering();
               }
               _loc5_ = _loc5_.next;
            }
         }
      }
      
      public function AddController(param1:b2Controller) : b2Controller
      {
         param1.m_next = this.m_controllerList;
         param1.m_prev = null;
         this.m_controllerList = param1;
         param1.m_world = this;
         ++this.m_controllerCount;
         return param1;
      }
      
      public function RemoveController(param1:b2Controller) : void
      {
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(this.m_controllerList == param1)
         {
            this.m_controllerList = param1.m_next;
         }
         --this.m_controllerCount;
      }
      
      public function CreateController(param1:b2Controller) : b2Controller
      {
         if(param1.m_world != this)
         {
            throw new Error("Controller can only be a member of one world");
         }
         param1.m_next = this.m_controllerList;
         param1.m_prev = null;
         if(this.m_controllerList)
         {
            this.m_controllerList.m_prev = param1;
         }
         this.m_controllerList = param1;
         ++this.m_controllerCount;
         param1.m_world = this;
         return param1;
      }
      
      public function DestroyController(param1:b2Controller) : void
      {
         param1.Clear();
         if(param1.m_next)
         {
            param1.m_next.m_prev = param1.m_prev;
         }
         if(param1.m_prev)
         {
            param1.m_prev.m_next = param1.m_next;
         }
         if(param1 == this.m_controllerList)
         {
            this.m_controllerList = param1.m_next;
         }
         --this.m_controllerCount;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         m_warmStarting = param1;
      }
      
      public function SetContinuousPhysics(param1:Boolean) : void
      {
         m_continuousPhysics = param1;
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
      
      public function SetGravity(param1:b2Vec2) : void
      {
         this.m_gravity = param1;
      }
      
      public function GetGravity() : b2Vec2
      {
         return this.m_gravity;
      }
      
      public function GetGroundBody() : b2Body
      {
         return this.m_groundBody;
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         if(this.m_flags & e_newFixture)
         {
            this.m_contactManager.FindNewContacts();
            this.m_flags &= ~e_newFixture;
         }
         this.m_flags |= e_locked;
         var _loc4_:b2TimeStep;
         (_loc4_ = s_timestep2).dt = param1;
         _loc4_.velocityIterations = param2;
         _loc4_.positionIterations = param3;
         if(param1 > 0)
         {
            _loc4_.inv_dt = 1 / param1;
         }
         else
         {
            _loc4_.inv_dt = 0;
         }
         _loc4_.dtRatio = this.m_inv_dt0 * param1;
         _loc4_.warmStarting = m_warmStarting;
         this.m_contactManager.Collide();
         if(_loc4_.dt > 0)
         {
            this.Solve(_loc4_);
         }
         if(m_continuousPhysics && _loc4_.dt > 0)
         {
            this.SolveTOI(_loc4_);
         }
         if(_loc4_.dt > 0)
         {
            this.m_inv_dt0 = _loc4_.inv_dt;
         }
         this.m_flags &= ~e_locked;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.m_bodyList;
         while(_loc1_)
         {
            _loc1_.m_force.SetZero();
            _loc1_.m_torque = 0;
            _loc1_ = _loc1_.m_next;
         }
      }
      
      public function DrawDebugData() : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Body = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Joint = null;
         var _loc7_:IBroadPhase = null;
         var _loc11_:b2Transform = null;
         var _loc16_:b2Controller = null;
         var _loc17_:b2Contact = null;
         var _loc18_:b2Fixture = null;
         var _loc19_:b2Fixture = null;
         var _loc20_:b2Vec2 = null;
         var _loc21_:b2Vec2 = null;
         var _loc22_:b2AABB = null;
         if(this.m_debugDraw == null)
         {
            return;
         }
         this.m_debugDraw.m_sprite.graphics.clear();
         var _loc1_:uint = this.m_debugDraw.GetFlags();
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2();
         var _loc10_:b2Vec2 = new b2Vec2();
         var _loc12_:b2AABB = new b2AABB();
         var _loc13_:b2AABB = new b2AABB();
         var _loc14_:Array = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
         var _loc15_:b2Color = new b2Color(0,0,0);
         if(_loc1_ & b2DebugDraw.e_shapeBit)
         {
            _loc3_ = this.m_bodyList;
            while(_loc3_)
            {
               _loc11_ = _loc3_.m_xf;
               _loc4_ = _loc3_.GetFixtureList();
               while(_loc4_)
               {
                  _loc5_ = _loc4_.GetShape();
                  if(_loc3_.IsActive() == false)
                  {
                     _loc15_.Set(0.5,0.5,0.3);
                     this.DrawShape(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.GetType() == b2Body.b2_staticBody)
                  {
                     _loc15_.Set(0.5,0.9,0.5);
                     this.DrawShape(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.GetType() == b2Body.b2_kinematicBody)
                  {
                     _loc15_.Set(0.5,0.5,0.9);
                     this.DrawShape(_loc5_,_loc11_,_loc15_);
                  }
                  else if(_loc3_.IsAwake() == false)
                  {
                     _loc15_.Set(0.6,0.6,0.6);
                     this.DrawShape(_loc5_,_loc11_,_loc15_);
                  }
                  else
                  {
                     _loc15_.Set(0.9,0.7,0.7);
                     this.DrawShape(_loc5_,_loc11_,_loc15_);
                  }
                  _loc4_ = _loc4_.m_next;
               }
               _loc3_ = _loc3_.m_next;
            }
         }
         if(_loc1_ & b2DebugDraw.e_jointBit)
         {
            _loc6_ = this.m_jointList;
            while(_loc6_)
            {
               this.DrawJoint(_loc6_);
               _loc6_ = _loc6_.m_next;
            }
         }
         if(_loc1_ & b2DebugDraw.e_controllerBit)
         {
            _loc16_ = this.m_controllerList;
            while(_loc16_)
            {
               _loc16_.Draw(this.m_debugDraw);
               _loc16_ = _loc16_.m_next;
            }
         }
         if(_loc1_ & b2DebugDraw.e_pairBit)
         {
            _loc15_.Set(0.3,0.9,0.9);
            _loc17_ = this.m_contactManager.m_contactList;
            while(_loc17_)
            {
               _loc18_ = _loc17_.GetFixtureA();
               _loc19_ = _loc17_.GetFixtureB();
               _loc20_ = _loc18_.GetAABB().GetCenter();
               _loc21_ = _loc19_.GetAABB().GetCenter();
               this.m_debugDraw.DrawSegment(_loc20_,_loc21_,_loc15_);
               _loc17_ = _loc17_.GetNext();
            }
         }
         if(_loc1_ & b2DebugDraw.e_aabbBit)
         {
            _loc7_ = this.m_contactManager.m_broadPhase;
            _loc14_ = [new b2Vec2(),new b2Vec2(),new b2Vec2(),new b2Vec2()];
            _loc3_ = this.m_bodyList;
            while(_loc3_)
            {
               if(_loc3_.IsActive() != false)
               {
                  _loc4_ = _loc3_.GetFixtureList();
                  while(_loc4_)
                  {
                     _loc22_ = _loc7_.GetFatAABB(_loc4_.m_proxy);
                     _loc14_[0].Set(_loc22_.lowerBound.x,_loc22_.lowerBound.y);
                     _loc14_[1].Set(_loc22_.upperBound.x,_loc22_.lowerBound.y);
                     _loc14_[2].Set(_loc22_.upperBound.x,_loc22_.upperBound.y);
                     _loc14_[3].Set(_loc22_.lowerBound.x,_loc22_.upperBound.y);
                     this.m_debugDraw.DrawPolygon(_loc14_,4,_loc15_);
                     _loc4_ = _loc4_.GetNext();
                  }
               }
               _loc3_ = _loc3_.GetNext();
            }
         }
         if(_loc1_ & b2DebugDraw.e_centerOfMassBit)
         {
            _loc3_ = this.m_bodyList;
            while(_loc3_)
            {
               (_loc11_ = s_xf).R = _loc3_.m_xf.R;
               _loc11_.position = _loc3_.GetWorldCenter();
               this.m_debugDraw.DrawTransform(_loc11_);
               _loc3_ = _loc3_.m_next;
            }
         }
      }
      
      public function QueryAABB(param1:Function, param2:b2AABB) : void
      {
         var broadPhase:IBroadPhase = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var aabb:b2AABB = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            return callback(broadPhase.GetUserData(param1));
         };
         broadPhase = this.m_contactManager.m_broadPhase;
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function QueryShape(param1:Function, param2:b2Shape, param3:b2Transform = null) : void
      {
         var broadPhase:IBroadPhase = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var shape:b2Shape = param2;
         var transform:b2Transform = param3;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(b2Shape.TestOverlap(shape,transform,_loc2_.GetShape(),_loc2_.GetBody().GetTransform()))
            {
               return callback(_loc2_);
            }
            return true;
         };
         if(transform == null)
         {
            transform = new b2Transform();
            transform.SetIdentity();
         }
         broadPhase = this.m_contactManager.m_broadPhase;
         var aabb:b2AABB = new b2AABB();
         shape.ComputeAABB(aabb,transform);
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function QueryPoint(param1:Function, param2:b2Vec2) : void
      {
         var broadPhase:IBroadPhase = null;
         var WorldQueryWrapper:Function = null;
         var callback:Function = param1;
         var p:b2Vec2 = param2;
         WorldQueryWrapper = function(param1:*):Boolean
         {
            var _loc2_:b2Fixture = broadPhase.GetUserData(param1) as b2Fixture;
            if(_loc2_.TestPoint(p))
            {
               return callback(_loc2_);
            }
            return true;
         };
         broadPhase = this.m_contactManager.m_broadPhase;
         var aabb:b2AABB = new b2AABB();
         aabb.lowerBound.Set(p.x - b2Settings.b2_linearSlop,p.y - b2Settings.b2_linearSlop);
         aabb.upperBound.Set(p.x + b2Settings.b2_linearSlop,p.y + b2Settings.b2_linearSlop);
         broadPhase.Query(WorldQueryWrapper,aabb);
      }
      
      public function RayCast(param1:Function, param2:b2Vec2, param3:b2Vec2) : void
      {
         var broadPhase:IBroadPhase = null;
         var output:b2RayCastOutput = null;
         var RayCastWrapper:Function = null;
         var callback:Function = param1;
         var point1:b2Vec2 = param2;
         var point2:b2Vec2 = param3;
         RayCastWrapper = function(param1:b2RayCastInput, param2:*):Number
         {
            var _loc6_:Number = NaN;
            var _loc7_:b2Vec2 = null;
            var _loc3_:* = broadPhase.GetUserData(param2);
            var _loc5_:Boolean;
            var _loc4_:b2Fixture;
            if(_loc5_ = (_loc4_ = _loc3_ as b2Fixture).RayCast(output,param1))
            {
               _loc6_ = output.fraction;
               _loc7_ = new b2Vec2((1 - _loc6_) * point1.x + _loc6_ * point2.x,(1 - _loc6_) * point1.y + _loc6_ * point2.y);
               return callback(_loc4_,_loc7_,output.normal,_loc6_);
            }
            return param1.maxFraction;
         };
         broadPhase = this.m_contactManager.m_broadPhase;
         output = new b2RayCastOutput();
         var input:b2RayCastInput = new b2RayCastInput(point1,point2);
         broadPhase.RayCast(RayCastWrapper,input);
      }
      
      public function RayCastOne(param1:b2Vec2, param2:b2Vec2) : b2Fixture
      {
         var result:b2Fixture = null;
         var RayCastOneWrapper:Function = null;
         var point1:b2Vec2 = param1;
         var point2:b2Vec2 = param2;
         RayCastOneWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            result = param1;
            return param4;
         };
         this.RayCast(RayCastOneWrapper,point1,point2);
         return result;
      }
      
      public function RayCastAll(param1:b2Vec2, param2:b2Vec2) : Vector.<b2Fixture>
      {
         var result:Vector.<b2Fixture> = null;
         var RayCastAllWrapper:Function = null;
         var point1:b2Vec2 = param1;
         var point2:b2Vec2 = param2;
         RayCastAllWrapper = function(param1:b2Fixture, param2:b2Vec2, param3:b2Vec2, param4:Number):Number
         {
            result[result.length] = param1;
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
      
      b2internal function Solve(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:b2Body = null;
         var _loc13_:b2ContactEdge = null;
         var _loc14_:b2JointEdge = null;
         var _loc3_:b2Controller = this.m_controllerList;
         while(_loc3_)
         {
            _loc3_.Step(param1);
            _loc3_ = _loc3_.m_next;
         }
         var _loc4_:b2Island;
         (_loc4_ = this.m_island).Initialize(this.m_bodyCount,this.m_contactCount,this.m_jointCount,null,this.m_contactManager.m_contactListener,this.m_contactSolver);
         _loc2_ = this.m_bodyList;
         while(_loc2_)
         {
            _loc2_.m_flags &= ~b2Body.e_islandFlag;
            _loc2_ = _loc2_.m_next;
         }
         var _loc5_:b2Contact = this.m_contactList;
         while(_loc5_)
         {
            _loc5_.m_flags &= ~b2Contact.e_islandFlag;
            _loc5_ = _loc5_.m_next;
         }
         var _loc6_:b2Joint = this.m_jointList;
         while(_loc6_)
         {
            _loc6_.m_islandFlag = false;
            _loc6_ = _loc6_.m_next;
         }
         var _loc7_:int = this.m_bodyCount;
         var _loc8_:Vector.<b2Body> = this.s_stack;
         var _loc9_:b2Body = this.m_bodyList;
         while(_loc9_)
         {
            if(!(_loc9_.m_flags & b2Body.e_islandFlag))
            {
               if(!(_loc9_.IsAwake() == false || _loc9_.IsActive() == false))
               {
                  if(_loc9_.GetType() != b2Body.b2_staticBody)
                  {
                     _loc4_.Clear();
                     _loc10_ = 0;
                     var _loc15_:*;
                     _loc8_[_loc15_ = _loc10_++] = _loc9_;
                     _loc9_.m_flags |= b2Body.e_islandFlag;
                     while(_loc10_ > 0)
                     {
                        _loc2_ = _loc8_[--_loc10_];
                        _loc4_.AddBody(_loc2_);
                        if(_loc2_.IsAwake() == false)
                        {
                           _loc2_.SetAwake(true);
                        }
                        if(_loc2_.GetType() != b2Body.b2_staticBody)
                        {
                           _loc13_ = _loc2_.m_contactList;
                           while(_loc13_)
                           {
                              if(!(_loc13_.contact.m_flags & b2Contact.e_islandFlag))
                              {
                                 if(!(_loc13_.contact.IsSensor() == true || _loc13_.contact.IsEnabled() == false || _loc13_.contact.IsTouching() == false))
                                 {
                                    _loc4_.AddContact(_loc13_.contact);
                                    _loc13_.contact.m_flags |= b2Contact.e_islandFlag;
                                    if(!((_loc12_ = _loc13_.other).m_flags & b2Body.e_islandFlag))
                                    {
                                       var _loc16_:*;
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.m_flags |= b2Body.e_islandFlag;
                                    }
                                 }
                              }
                              _loc13_ = _loc13_.next;
                           }
                           _loc14_ = _loc2_.m_jointList;
                           while(_loc14_)
                           {
                              if(_loc14_.joint.m_islandFlag != true)
                              {
                                 if((_loc12_ = _loc14_.other).IsActive() != false)
                                 {
                                    _loc4_.AddJoint(_loc14_.joint);
                                    _loc14_.joint.m_islandFlag = true;
                                    if(!(_loc12_.m_flags & b2Body.e_islandFlag))
                                    {
                                       _loc8_[_loc16_ = _loc10_++] = _loc12_;
                                       _loc12_.m_flags |= b2Body.e_islandFlag;
                                    }
                                 }
                              }
                              _loc14_ = _loc14_.next;
                           }
                        }
                     }
                     _loc4_.Solve(param1,this.m_gravity,this.m_allowSleep);
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.m_bodyCount)
                     {
                        _loc2_ = _loc4_.m_bodies[_loc11_];
                        if(_loc2_.GetType() == b2Body.b2_staticBody)
                        {
                           _loc2_.m_flags &= ~b2Body.e_islandFlag;
                        }
                        _loc11_++;
                     }
                  }
               }
            }
            _loc9_ = _loc9_.m_next;
         }
         _loc11_ = 0;
         while(_loc11_ < _loc8_.length)
         {
            if(!_loc8_[_loc11_])
            {
               break;
            }
            _loc8_[_loc11_] = null;
            _loc11_++;
         }
         _loc2_ = this.m_bodyList;
         while(_loc2_)
         {
            if(!(_loc2_.IsAwake() == false || _loc2_.IsActive() == false))
            {
               if(_loc2_.GetType() != b2Body.b2_staticBody)
               {
                  _loc2_.SynchronizeFixtures();
               }
            }
            _loc2_ = _loc2_.m_next;
         }
         this.m_contactManager.FindNewContacts();
      }
      
      b2internal function SolveTOI(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:b2ContactEdge = null;
         var _loc8_:b2Joint = null;
         var _loc11_:b2Contact = null;
         var _loc12_:b2Contact = null;
         var _loc13_:Number = NaN;
         var _loc14_:b2Body = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:b2TimeStep = null;
         var _loc18_:int = 0;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:b2JointEdge = null;
         var _loc22_:b2Body = null;
         var _loc9_:b2Island;
         (_loc9_ = this.m_island).Initialize(this.m_bodyCount,b2Settings.b2_maxTOIContactsPerIsland,b2Settings.b2_maxTOIJointsPerIsland,null,this.m_contactManager.m_contactListener,this.m_contactSolver);
         var _loc10_:Vector.<b2Body> = s_queue;
         _loc2_ = this.m_bodyList;
         while(_loc2_)
         {
            _loc2_.m_flags &= ~b2Body.e_islandFlag;
            _loc2_.m_sweep.t0 = 0;
            _loc2_ = _loc2_.m_next;
         }
         _loc11_ = this.m_contactList;
         while(_loc11_)
         {
            _loc11_.m_flags &= ~(b2Contact.e_toiFlag | b2Contact.e_islandFlag);
            _loc11_ = _loc11_.m_next;
         }
         _loc8_ = this.m_jointList;
         while(_loc8_)
         {
            _loc8_.m_islandFlag = false;
            _loc8_ = _loc8_.m_next;
         }
         while(true)
         {
            _loc12_ = null;
            _loc13_ = 1;
            _loc11_ = this.m_contactList;
            for(; _loc11_; _loc11_ = _loc11_.m_next)
            {
               if(!(_loc11_.IsSensor() == true || _loc11_.IsEnabled() == false || _loc11_.IsContinuous() == false))
               {
                  _loc19_ = 1;
                  if(_loc11_.m_flags & b2Contact.e_toiFlag)
                  {
                     _loc19_ = _loc11_.m_toi;
                  }
                  else
                  {
                     _loc3_ = _loc11_.m_fixtureA;
                     _loc4_ = _loc11_.m_fixtureB;
                     _loc5_ = _loc3_.m_body;
                     _loc6_ = _loc4_.m_body;
                     if((_loc5_.GetType() != b2Body.b2_dynamicBody || _loc5_.IsAwake() == false) && (_loc6_.GetType() != b2Body.b2_dynamicBody || _loc6_.IsAwake() == false))
                     {
                        continue;
                     }
                     _loc20_ = _loc5_.m_sweep.t0;
                     if(_loc5_.m_sweep.t0 < _loc6_.m_sweep.t0)
                     {
                        _loc20_ = _loc6_.m_sweep.t0;
                        _loc5_.m_sweep.Advance(_loc20_);
                     }
                     else if(_loc6_.m_sweep.t0 < _loc5_.m_sweep.t0)
                     {
                        _loc20_ = _loc5_.m_sweep.t0;
                        _loc6_.m_sweep.Advance(_loc20_);
                     }
                     _loc19_ = _loc11_.ComputeTOI(_loc5_.m_sweep,_loc6_.m_sweep);
                     b2Settings.b2Assert(0 <= _loc19_ && _loc19_ <= 1);
                     if(_loc19_ > 0 && _loc19_ < 1)
                     {
                        if((_loc19_ = (1 - _loc19_) * _loc20_ + _loc19_) > 1)
                        {
                           _loc19_ = 1;
                        }
                     }
                     _loc11_.m_toi = _loc19_;
                     _loc11_.m_flags |= b2Contact.e_toiFlag;
                  }
                  if(Number.MIN_VALUE < _loc19_ && _loc19_ < _loc13_)
                  {
                     _loc12_ = _loc11_;
                     _loc13_ = _loc19_;
                  }
               }
            }
            if(_loc12_ == null || 1 - 100 * Number.MIN_VALUE < _loc13_)
            {
               break;
            }
            _loc3_ = _loc12_.m_fixtureA;
            _loc4_ = _loc12_.m_fixtureB;
            _loc5_ = _loc3_.m_body;
            _loc6_ = _loc4_.m_body;
            s_backupA.Set(_loc5_.m_sweep);
            s_backupB.Set(_loc6_.m_sweep);
            _loc5_.Advance(_loc13_);
            _loc6_.Advance(_loc13_);
            _loc12_.Update(this.m_contactManager.m_contactListener);
            _loc12_.m_flags &= ~b2Contact.e_toiFlag;
            if(_loc12_.IsSensor() == true || _loc12_.IsEnabled() == false)
            {
               _loc5_.m_sweep.Set(s_backupA);
               _loc6_.m_sweep.Set(s_backupB);
               _loc5_.SynchronizeTransform();
               _loc6_.SynchronizeTransform();
            }
            else if(_loc12_.IsTouching() != false)
            {
               if((_loc14_ = _loc5_).GetType() != b2Body.b2_dynamicBody)
               {
                  _loc14_ = _loc6_;
               }
               _loc9_.Clear();
               _loc15_ = 0;
               _loc16_ = 0;
               _loc10_[_loc15_ + _loc16_++] = _loc14_;
               _loc14_.m_flags |= b2Body.e_islandFlag;
               while(_loc16_ > 0)
               {
                  _loc2_ = _loc10_[_loc15_++];
                  _loc16_--;
                  _loc9_.AddBody(_loc2_);
                  if(_loc2_.IsAwake() == false)
                  {
                     _loc2_.SetAwake(true);
                  }
                  if(_loc2_.GetType() == b2Body.b2_dynamicBody)
                  {
                     _loc7_ = _loc2_.m_contactList;
                     while(_loc7_)
                     {
                        if(_loc9_.m_contactCount == _loc9_.m_contactCapacity)
                        {
                           break;
                        }
                        if(!(_loc7_.contact.m_flags & b2Contact.e_islandFlag))
                        {
                           if(!(_loc7_.contact.IsSensor() == true || _loc7_.contact.IsEnabled() == false || _loc7_.contact.IsTouching() == false))
                           {
                              _loc9_.AddContact(_loc7_.contact);
                              _loc7_.contact.m_flags |= b2Contact.e_islandFlag;
                              if(!((_loc22_ = _loc7_.other).m_flags & b2Body.e_islandFlag))
                              {
                                 if(_loc22_.GetType() != b2Body.b2_staticBody)
                                 {
                                    _loc22_.Advance(_loc13_);
                                    _loc22_.SetAwake(true);
                                 }
                                 _loc10_[_loc15_ + _loc16_] = _loc22_;
                                 _loc16_++;
                                 _loc22_.m_flags |= b2Body.e_islandFlag;
                              }
                           }
                        }
                        _loc7_ = _loc7_.next;
                     }
                     _loc21_ = _loc2_.m_jointList;
                     while(_loc21_)
                     {
                        if(_loc9_.m_jointCount != _loc9_.m_jointCapacity)
                        {
                           if(_loc21_.joint.m_islandFlag != true)
                           {
                              if((_loc22_ = _loc21_.other).IsActive() != false)
                              {
                                 _loc9_.AddJoint(_loc21_.joint);
                                 _loc21_.joint.m_islandFlag = true;
                                 if(!(_loc22_.m_flags & b2Body.e_islandFlag))
                                 {
                                    if(_loc22_.GetType() != b2Body.b2_staticBody)
                                    {
                                       _loc22_.Advance(_loc13_);
                                       _loc22_.SetAwake(true);
                                    }
                                    _loc10_[_loc15_ + _loc16_] = _loc22_;
                                    _loc16_++;
                                    _loc22_.m_flags |= b2Body.e_islandFlag;
                                 }
                              }
                           }
                        }
                        _loc21_ = _loc21_.next;
                     }
                  }
               }
               (_loc17_ = s_timestep).warmStarting = false;
               _loc17_.dt = (1 - _loc13_) * param1.dt;
               _loc17_.inv_dt = 1 / _loc17_.dt;
               _loc17_.dtRatio = 0;
               _loc17_.velocityIterations = param1.velocityIterations;
               _loc17_.positionIterations = param1.positionIterations;
               _loc9_.SolveTOI(_loc17_);
               _loc18_ = 0;
               while(_loc18_ < _loc9_.m_bodyCount)
               {
                  _loc2_ = _loc9_.m_bodies[_loc18_];
                  _loc2_.m_flags &= ~b2Body.e_islandFlag;
                  if(_loc2_.IsAwake() != false)
                  {
                     if(_loc2_.GetType() == b2Body.b2_dynamicBody)
                     {
                        _loc2_.SynchronizeFixtures();
                        _loc7_ = _loc2_.m_contactList;
                        while(_loc7_)
                        {
                           _loc7_.contact.m_flags &= ~b2Contact.e_toiFlag;
                           _loc7_ = _loc7_.next;
                        }
                     }
                  }
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.m_contactCount)
               {
                  _loc11_ = _loc9_.m_contacts[_loc18_];
                  _loc11_.m_flags &= ~(b2Contact.e_toiFlag | b2Contact.e_islandFlag);
                  _loc18_++;
               }
               _loc18_ = 0;
               while(_loc18_ < _loc9_.m_jointCount)
               {
                  (_loc8_ = _loc9_.m_joints[_loc18_]).m_islandFlag = false;
                  _loc18_++;
               }
               this.m_contactManager.FindNewContacts();
            }
         }
      }
      
      b2internal function DrawJoint(param1:b2Joint) : void
      {
         var _loc11_:b2PulleyJoint = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:b2Vec2 = null;
         var _loc2_:b2Body = param1.GetBodyA();
         var _loc3_:b2Body = param1.GetBodyB();
         var _loc4_:b2Transform = _loc2_.m_xf;
         var _loc5_:b2Transform = _loc3_.m_xf;
         var _loc6_:b2Vec2 = _loc4_.position;
         var _loc7_:b2Vec2 = _loc5_.position;
         var _loc8_:b2Vec2 = param1.GetAnchorA();
         var _loc9_:b2Vec2 = param1.GetAnchorB();
         var _loc10_:b2Color = s_jointColor;
         switch(param1.m_type)
         {
            case b2Joint.e_distanceJoint:
               this.m_debugDraw.DrawSegment(_loc8_,_loc9_,_loc10_);
               break;
            case b2Joint.e_pulleyJoint:
               _loc12_ = (_loc11_ = param1 as b2PulleyJoint).GetGroundAnchorA();
               _loc13_ = _loc11_.GetGroundAnchorB();
               this.m_debugDraw.DrawSegment(_loc12_,_loc8_,_loc10_);
               this.m_debugDraw.DrawSegment(_loc13_,_loc9_,_loc10_);
               this.m_debugDraw.DrawSegment(_loc12_,_loc13_,_loc10_);
               break;
            case b2Joint.e_mouseJoint:
               this.m_debugDraw.DrawSegment(_loc8_,_loc9_,_loc10_);
               break;
            default:
               if(_loc2_ != this.m_groundBody)
               {
                  this.m_debugDraw.DrawSegment(_loc6_,_loc8_,_loc10_);
               }
               this.m_debugDraw.DrawSegment(_loc8_,_loc9_,_loc10_);
               if(_loc3_ != this.m_groundBody)
               {
                  this.m_debugDraw.DrawSegment(_loc7_,_loc9_,_loc10_);
               }
         }
      }
      
      b2internal function DrawShape(param1:b2Shape, param2:b2Transform, param3:b2Color) : void
      {
         var _loc4_:b2CircleShape = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:Number = NaN;
         var _loc7_:b2Vec2 = null;
         var _loc8_:int = 0;
         var _loc9_:b2PolygonShape = null;
         var _loc10_:int = 0;
         var _loc11_:Vector.<b2Vec2> = null;
         var _loc12_:Vector.<b2Vec2> = null;
         var _loc13_:b2EdgeShape = null;
         switch(param1.m_type)
         {
            case b2Shape.e_circleShape:
               _loc4_ = param1 as b2CircleShape;
               _loc5_ = b2Math.MulX(param2,_loc4_.m_p);
               _loc6_ = _loc4_.m_radius;
               _loc7_ = param2.R.col1;
               this.m_debugDraw.DrawSolidCircle(_loc5_,_loc6_,_loc7_,param3);
               break;
            case b2Shape.e_polygonShape:
               _loc10_ = (_loc9_ = param1 as b2PolygonShape).GetVertexCount();
               _loc11_ = _loc9_.GetVertices();
               _loc12_ = new Vector.<b2Vec2>(_loc10_);
               _loc8_ = 0;
               while(_loc8_ < _loc10_)
               {
                  _loc12_[_loc8_] = b2Math.MulX(param2,_loc11_[_loc8_]);
                  _loc8_++;
               }
               this.m_debugDraw.DrawSolidPolygon(_loc12_,_loc10_,param3);
               break;
            case b2Shape.e_edgeShape:
               _loc13_ = param1 as b2EdgeShape;
               this.m_debugDraw.DrawSegment(b2Math.MulX(param2,_loc13_.GetVertex1()),b2Math.MulX(param2,_loc13_.GetVertex2()),param3);
         }
      }
   }
}
