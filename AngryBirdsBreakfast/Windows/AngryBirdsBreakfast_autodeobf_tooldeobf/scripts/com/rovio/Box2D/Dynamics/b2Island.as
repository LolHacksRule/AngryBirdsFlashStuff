package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Dynamics.Joints.*;
   import com.rovio.Box2D.Dynamics.Contacts.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Collision.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var s_impulse:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var m_allocator;
      
      private var m_listener:b2ContactListener;
      
      private var m_contactSolver:b2ContactSolver;
      
      b2internal var m_bodies:Vector.<b2Body>;
      
      b2internal var m_contacts:Vector.<b2Contact>;
      
      b2internal var m_joints:Vector.<b2Joint>;
      
      b2internal var m_bodyCount:int;
      
      b2internal var m_jointCount:int;
      
      b2internal var m_contactCount:int;
      
      private var m_bodyCapacity:int;
      
      b2internal var m_contactCapacity:int;
      
      b2internal var m_jointCapacity:int;
      
      public function b2Island()
      {
         super();
         this.m_bodies = new Vector.<b2Body>();
         this.m_contacts = new Vector.<b2Contact>();
         this.m_joints = new Vector.<b2Joint>();
      }
      
      public function Initialize(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.m_bodyCapacity = param1;
         this.m_contactCapacity = param2;
         this.m_jointCapacity = param3;
         this.m_bodyCount = 0;
         this.m_contactCount = 0;
         this.m_jointCount = 0;
         this.m_allocator = param4;
         this.m_listener = param5;
         this.m_contactSolver = param6;
         _loc7_ = this.m_bodies.length;
         while(_loc7_ < param1)
         {
            this.m_bodies[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.m_contacts.length;
         while(_loc7_ < param2)
         {
            this.m_contacts[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.m_joints.length;
         while(_loc7_ < param3)
         {
            this.m_joints[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function Clear() : void
      {
         this.m_bodyCount = 0;
         this.m_contactCount = 0;
         this.m_jointCount = 0;
      }
      
      public function Solve(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:b2Joint = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc4_ = 0;
         while(_loc4_ < this.m_bodyCount)
         {
            if((_loc6_ = this.m_bodies[_loc4_]).GetType() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_linearVelocity.x += param1.dt * (_loc6_.m_gravityScale * param2.x + _loc6_.m_invMass * _loc6_.m_force.x);
               _loc6_.m_linearVelocity.y += param1.dt * (_loc6_.m_gravityScale * param2.y + _loc6_.m_invMass * _loc6_.m_force.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.m_invI * _loc6_.m_torque;
               _loc6_.m_linearVelocity.Multiply(b2Math.Clamp(1 - param1.dt * _loc6_.m_linearDamping,0,1));
               _loc6_.m_angularVelocity *= b2Math.Clamp(1 - param1.dt * _loc6_.m_angularDamping,0,1);
            }
            _loc4_++;
         }
         this.m_contactSolver.Initialize(param1,this.m_contacts,this.m_contactCount,this.m_allocator);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.m_contactSolver).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.m_jointCount)
         {
            (_loc7_ = this.m_joints[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.velocityIterations)
         {
            _loc5_ = 0;
            while(_loc5_ < this.m_jointCount)
            {
               (_loc7_ = this.m_joints[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.m_jointCount)
         {
            (_loc7_ = this.m_joints[_loc4_]).FinalizeVelocityConstraints();
            _loc4_++;
         }
         _loc8_.FinalizeVelocityConstraints();
         _loc4_ = 0;
         while(_loc4_ < this.m_bodyCount)
         {
            if((_loc6_ = this.m_bodies[_loc4_]).GetType() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.m_linearVelocity.x;
               _loc10_ = param1.dt * _loc6_.m_linearVelocity.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.m_linearVelocity.Normalize();
                  _loc6_.m_linearVelocity.x *= b2Settings.b2_maxTranslation * param1.inv_dt;
                  _loc6_.m_linearVelocity.y *= b2Settings.b2_maxTranslation * param1.inv_dt;
               }
               _loc11_ = param1.dt * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.inv_dt;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.inv_dt;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.m_linearVelocity.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.m_linearVelocity.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.SynchronizeTransform();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.positionIterations)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.m_jointCount)
            {
               _loc14_ = (_loc7_ = this.m_joints[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.Report(_loc8_.m_constraints);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.m_bodyCount)
            {
               if((_loc6_ = this.m_bodies[_loc4_]).GetType() != b2Body.b2_staticBody)
               {
                  if((_loc6_.m_flags & b2Body.e_allowSleepFlag) == 0)
                  {
                     _loc6_.m_sleepTime = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.m_flags & b2Body.e_allowSleepFlag) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.Dot(_loc6_.m_linearVelocity,_loc6_.m_linearVelocity) > _loc16_)
                  {
                     _loc6_.m_sleepTime = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.m_sleepTime += param1.dt;
                     _loc15_ = b2Math.Min(_loc15_,_loc6_.m_sleepTime);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.m_bodyCount)
               {
                  (_loc6_ = this.m_bodies[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function SolveTOI(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:b2Body = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         this.m_contactSolver.Initialize(param1,this.m_contacts,this.m_contactCount,this.m_allocator);
         var _loc4_:b2ContactSolver = this.m_contactSolver;
         _loc2_ = 0;
         while(_loc2_ < this.m_jointCount)
         {
            this.m_joints[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.positionIterations)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.m_jointCount)
            {
               _loc8_ = this.m_joints[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc7_ = _loc7_ && _loc8_;
               _loc3_++;
            }
            if(_loc6_ && _loc7_)
            {
               break;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.velocityIterations)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.m_jointCount)
            {
               this.m_joints[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.m_bodyCount)
         {
            if((_loc9_ = this.m_bodies[_loc2_]).GetType() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.m_linearVelocity.x;
               _loc11_ = param1.dt * _loc9_.m_linearVelocity.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.m_linearVelocity.Normalize();
                  _loc9_.m_linearVelocity.x *= b2Settings.b2_maxTranslation * param1.inv_dt;
                  _loc9_.m_linearVelocity.y *= b2Settings.b2_maxTranslation * param1.inv_dt;
               }
               _loc12_ = param1.dt * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.inv_dt;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.inv_dt;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.m_linearVelocity.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.m_linearVelocity.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.SynchronizeTransform();
            }
            _loc2_++;
         }
         this.Report(_loc4_.m_constraints);
      }
      
      public function Report(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.m_listener == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.m_contactCount)
         {
            _loc3_ = this.m_contacts[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.pointCount)
            {
               s_impulse.normalImpulses[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
               s_impulse.tangentImpulses[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.m_listener.PostSolve(_loc3_,s_impulse);
            _loc2_++;
         }
      }
      
      public function AddBody(param1:b2Body) : void
      {
         param1.m_islandIndex = this.m_bodyCount;
         var _loc2_:* = this.m_bodyCount++;
         this.m_bodies[_loc2_] = param1;
      }
      
      public function AddContact(param1:b2Contact) : void
      {
         var _loc2_:* = this.m_contactCount++;
         this.m_contacts[_loc2_] = param1;
      }
      
      public function AddJoint(param1:b2Joint) : void
      {
         var _loc2_:* = this.m_jointCount++;
         this.m_joints[_loc2_] = param1;
      }
   }
}
