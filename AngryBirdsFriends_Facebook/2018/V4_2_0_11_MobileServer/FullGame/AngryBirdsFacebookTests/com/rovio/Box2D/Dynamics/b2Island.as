package com.rovio.Box2D.Dynamics
{
   import com.rovio.Box2D.Collision.*;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Dynamics.Contacts.*;
   import com.rovio.Box2D.Dynamics.Joints.*;
   
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
      
      public function Initialize(bodyCapacity:int, contactCapacity:int, jointCapacity:int, allocator:*, listener:b2ContactListener, contactSolver:b2ContactSolver) : void
      {
         var i:int = 0;
         this.m_bodyCapacity = bodyCapacity;
         this.m_contactCapacity = contactCapacity;
         this.m_jointCapacity = jointCapacity;
         this.m_bodyCount = 0;
         this.m_contactCount = 0;
         this.m_jointCount = 0;
         this.m_allocator = allocator;
         this.m_listener = listener;
         this.m_contactSolver = contactSolver;
         for(i = this.m_bodies.length; i < bodyCapacity; i++)
         {
            this.m_bodies[i] = null;
         }
         for(i = this.m_contacts.length; i < contactCapacity; i++)
         {
            this.m_contacts[i] = null;
         }
         for(i = this.m_joints.length; i < jointCapacity; i++)
         {
            this.m_joints[i] = null;
         }
      }
      
      public function Clear() : void
      {
         this.m_bodyCount = 0;
         this.m_contactCount = 0;
         this.m_jointCount = 0;
      }
      
      public function Solve(step:b2TimeStep, gravity:b2Vec2, allowSleep:Boolean) : void
      {
         var i:int = 0;
         var j:int = 0;
         var b:b2Body = null;
         var joint:b2Joint = null;
         var translationX:Number = NaN;
         var translationY:Number = NaN;
         var rotation:Number = NaN;
         var contactsOkay:Boolean = false;
         var jointsOkay:Boolean = false;
         var jointOkay:Boolean = false;
         var minSleepTime:Number = NaN;
         var linTolSqr:Number = NaN;
         var angTolSqr:Number = NaN;
         for(i = 0; i < this.m_bodyCount; i++)
         {
            b = this.m_bodies[i];
            if(b.GetType() == b2Body.b2_dynamicBody)
            {
               b.m_sweep.c0.SetV(b.m_sweep.c);
               b.m_sweep.a0 = b.m_sweep.a;
               b.m_linearVelocity.x += step.dt * (b.m_gravityScale * gravity.x + b.m_invMass * b.m_force.x);
               b.m_linearVelocity.y += step.dt * (b.m_gravityScale * gravity.y + b.m_invMass * b.m_force.y);
               b.m_angularVelocity += step.dt * b.m_invI * b.m_torque;
               b.m_linearVelocity.Multiply(b2Math.Clamp(1 - step.dt * b.m_linearDamping,0,1));
               b.m_angularVelocity *= b2Math.Clamp(1 - step.dt * b.m_angularDamping,0,1);
            }
         }
         this.m_contactSolver.Initialize(step,this.m_contacts,this.m_contactCount,this.m_allocator);
         var contactSolver:b2ContactSolver = this.m_contactSolver;
         contactSolver.InitVelocityConstraints(step);
         for(i = 0; i < this.m_jointCount; i++)
         {
            joint = this.m_joints[i];
            joint.InitVelocityConstraints(step);
         }
         for(i = 0; i < step.velocityIterations; i++)
         {
            for(j = 0; j < this.m_jointCount; j++)
            {
               joint = this.m_joints[j];
               joint.SolveVelocityConstraints(step);
            }
            contactSolver.SolveVelocityConstraints();
         }
         for(i = 0; i < this.m_jointCount; i++)
         {
            joint = this.m_joints[i];
            joint.FinalizeVelocityConstraints();
         }
         contactSolver.FinalizeVelocityConstraints();
         for(i = 0; i < this.m_bodyCount; i++)
         {
            b = this.m_bodies[i];
            if(b.GetType() != b2Body.b2_staticBody)
            {
               translationX = step.dt * b.m_linearVelocity.x;
               translationY = step.dt * b.m_linearVelocity.y;
               if(translationX * translationX + translationY * translationY > b2Settings.b2_maxTranslationSquared)
               {
                  b.m_linearVelocity.Normalize();
                  b.m_linearVelocity.x *= b2Settings.b2_maxTranslation * step.inv_dt;
                  b.m_linearVelocity.y *= b2Settings.b2_maxTranslation * step.inv_dt;
               }
               rotation = step.dt * b.m_angularVelocity;
               if(rotation * rotation > b2Settings.b2_maxRotationSquared)
               {
                  if(b.m_angularVelocity < 0)
                  {
                     b.m_angularVelocity = -b2Settings.b2_maxRotation * step.inv_dt;
                  }
                  else
                  {
                     b.m_angularVelocity = b2Settings.b2_maxRotation * step.inv_dt;
                  }
               }
               b.m_sweep.c0.SetV(b.m_sweep.c);
               b.m_sweep.a0 = b.m_sweep.a;
               b.m_sweep.c.x += step.dt * b.m_linearVelocity.x;
               b.m_sweep.c.y += step.dt * b.m_linearVelocity.y;
               b.m_sweep.a += step.dt * b.m_angularVelocity;
               b.SynchronizeTransform();
            }
         }
         for(i = 0; i < step.positionIterations; i++)
         {
            contactsOkay = contactSolver.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            jointsOkay = true;
            for(j = 0; j < this.m_jointCount; j++)
            {
               joint = this.m_joints[j];
               jointOkay = joint.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               jointsOkay = jointsOkay && jointOkay;
            }
            if(contactsOkay && jointsOkay)
            {
               break;
            }
         }
         this.Report(contactSolver.m_constraints);
         if(allowSleep)
         {
            minSleepTime = Number.MAX_VALUE;
            linTolSqr = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            angTolSqr = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            for(i = 0; i < this.m_bodyCount; i++)
            {
               b = this.m_bodies[i];
               if(b.GetType() != b2Body.b2_staticBody)
               {
                  if((b.m_flags & b2Body.e_allowSleepFlag) == 0)
                  {
                     b.m_sleepTime = 0;
                     minSleepTime = 0;
                  }
                  if((b.m_flags & b2Body.e_allowSleepFlag) == 0 || b.m_angularVelocity * b.m_angularVelocity > angTolSqr || b2Math.Dot(b.m_linearVelocity,b.m_linearVelocity) > linTolSqr)
                  {
                     b.m_sleepTime = 0;
                     minSleepTime = 0;
                  }
                  else
                  {
                     b.m_sleepTime += step.dt;
                     minSleepTime = b2Math.Min(minSleepTime,b.m_sleepTime);
                  }
               }
            }
            if(minSleepTime >= b2Settings.b2_timeToSleep)
            {
               for(i = 0; i < this.m_bodyCount; i++)
               {
                  b = this.m_bodies[i];
                  b.SetAwake(false);
               }
            }
         }
      }
      
      public function SolveTOI(subStep:b2TimeStep) : void
      {
         var i:int = 0;
         var j:int = 0;
         var contactsOkay:Boolean = false;
         var jointsOkay:Boolean = false;
         var jointOkay:Boolean = false;
         var b:b2Body = null;
         var translationX:Number = NaN;
         var translationY:Number = NaN;
         var rotation:Number = NaN;
         this.m_contactSolver.Initialize(subStep,this.m_contacts,this.m_contactCount,this.m_allocator);
         var contactSolver:b2ContactSolver = this.m_contactSolver;
         for(i = 0; i < this.m_jointCount; i++)
         {
            this.m_joints[i].InitVelocityConstraints(subStep);
         }
         for(i = 0; i < subStep.positionIterations; i++)
         {
            contactsOkay = contactSolver.SolvePositionConstraints(0.75);
            jointsOkay = true;
            for(j = 0; j < this.m_jointCount; j++)
            {
               jointOkay = this.m_joints[j].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               jointsOkay = jointsOkay && jointOkay;
            }
            if(contactsOkay && jointsOkay)
            {
               break;
            }
         }
         for(i = 0; i < subStep.velocityIterations; i++)
         {
            contactSolver.SolveVelocityConstraints();
            for(j = 0; j < this.m_jointCount; j++)
            {
               this.m_joints[j].SolveVelocityConstraints(subStep);
            }
         }
         for(i = 0; i < this.m_bodyCount; i++)
         {
            b = this.m_bodies[i];
            if(b.GetType() != b2Body.b2_staticBody)
            {
               translationX = subStep.dt * b.m_linearVelocity.x;
               translationY = subStep.dt * b.m_linearVelocity.y;
               if(translationX * translationX + translationY * translationY > b2Settings.b2_maxTranslationSquared)
               {
                  b.m_linearVelocity.Normalize();
                  b.m_linearVelocity.x *= b2Settings.b2_maxTranslation * subStep.inv_dt;
                  b.m_linearVelocity.y *= b2Settings.b2_maxTranslation * subStep.inv_dt;
               }
               rotation = subStep.dt * b.m_angularVelocity;
               if(rotation * rotation > b2Settings.b2_maxRotationSquared)
               {
                  if(b.m_angularVelocity < 0)
                  {
                     b.m_angularVelocity = -b2Settings.b2_maxRotation * subStep.inv_dt;
                  }
                  else
                  {
                     b.m_angularVelocity = b2Settings.b2_maxRotation * subStep.inv_dt;
                  }
               }
               b.m_sweep.c0.SetV(b.m_sweep.c);
               b.m_sweep.a0 = b.m_sweep.a;
               b.m_sweep.c.x += subStep.dt * b.m_linearVelocity.x;
               b.m_sweep.c.y += subStep.dt * b.m_linearVelocity.y;
               b.m_sweep.a += subStep.dt * b.m_angularVelocity;
               b.SynchronizeTransform();
            }
         }
         this.Report(contactSolver.m_constraints);
      }
      
      public function Report(constraints:Vector.<b2ContactConstraint>) : void
      {
         var c:b2Contact = null;
         var cc:b2ContactConstraint = null;
         var j:int = 0;
         if(this.m_listener == null)
         {
            return;
         }
         for(var i:int = 0; i < this.m_contactCount; i++)
         {
            c = this.m_contacts[i];
            cc = constraints[i];
            for(j = 0; j < cc.pointCount; j++)
            {
               s_impulse.normalImpulses[j] = cc.points[j].normalImpulse;
               s_impulse.tangentImpulses[j] = cc.points[j].tangentImpulse;
            }
            this.m_listener.PostSolve(c,s_impulse);
         }
      }
      
      public function AddBody(body:b2Body) : void
      {
         body.m_islandIndex = this.m_bodyCount;
         var _loc2_:* = this.m_bodyCount++;
         this.m_bodies[_loc2_] = body;
      }
      
      public function AddContact(contact:b2Contact) : void
      {
         var _loc2_:* = this.m_contactCount++;
         this.m_contacts[_loc2_] = contact;
      }
      
      public function AddJoint(joint:b2Joint) : void
      {
         var _loc2_:* = this.m_jointCount++;
         this.m_joints[_loc2_] = joint;
      }
   }
}
