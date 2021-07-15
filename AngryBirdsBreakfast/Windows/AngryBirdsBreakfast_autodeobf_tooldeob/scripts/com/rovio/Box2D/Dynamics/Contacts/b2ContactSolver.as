package com.rovio.Box2D.Dynamics.Contacts
{
   import com.rovio.Box2D.Collision.Shapes.b2Shape;
   import com.rovio.Box2D.Common.*;
   import com.rovio.Box2D.Dynamics.*;
   import com.rovio.Box2D.Common.Math.*;
   import com.rovio.Box2D.Collision.*;
   
   use namespace b2internal;
   
   public class b2ContactSolver
   {
      
      private static var s_worldManifold:b2WorldManifold = new b2WorldManifold();
      
      private static var s_psm:b2PositionSolverManifold = new b2PositionSolverManifold();
       
      
      private var m_step:b2TimeStep;
      
      private var m_allocator;
      
      b2internal var m_constraints:Vector.<b2ContactConstraint>;
      
      private var m_constraintCount:int;
      
      public function b2ContactSolver()
      {
         this.m_step = new b2TimeStep();
         this.m_constraints = new Vector.<b2ContactConstraint>();
         super();
      }
      
      public function Initialize(param1:b2TimeStep, param2:Vector.<b2Contact>, param3:int, param4:*) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 2701
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc6_:b2ContactConstraint = null;
         var _loc7_:b2Body = null;
         var _loc8_:b2Body = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:b2ContactConstraintPoint = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2ContactConstraintPoint = null;
         var _loc5_:int = 0;
         while(_loc5_ < this.m_constraintCount)
         {
            _loc7_ = (_loc6_ = this.m_constraints[_loc5_]).bodyA;
            _loc8_ = _loc6_.bodyB;
            _loc9_ = _loc7_.m_invMass;
            _loc10_ = _loc7_.m_invI;
            _loc11_ = _loc8_.m_invMass;
            _loc12_ = _loc8_.m_invI;
            _loc13_ = _loc6_.normal.x;
            _loc15_ = _loc14_ = _loc6_.normal.y;
            _loc16_ = -_loc13_;
            if(param1.warmStarting)
            {
               _loc19_ = _loc6_.pointCount;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  _loc20_ = _loc6_.points[_loc18_];
                  _loc20_.normalImpulse *= param1.dtRatio;
                  _loc20_.tangentImpulse *= param1.dtRatio;
                  _loc21_ = _loc20_.normalImpulse * _loc13_ + _loc20_.tangentImpulse * _loc15_;
                  _loc22_ = _loc20_.normalImpulse * _loc14_ + _loc20_.tangentImpulse * _loc16_;
                  _loc7_.m_angularVelocity -= _loc10_ * (_loc20_.rA.x * _loc22_ - _loc20_.rA.y * _loc21_);
                  _loc7_.m_linearVelocity.x -= _loc9_ * _loc21_;
                  _loc7_.m_linearVelocity.y -= _loc9_ * _loc22_;
                  _loc8_.m_angularVelocity += _loc12_ * (_loc20_.rB.x * _loc22_ - _loc20_.rB.y * _loc21_);
                  _loc8_.m_linearVelocity.x += _loc11_ * _loc21_;
                  _loc8_.m_linearVelocity.y += _loc11_ * _loc22_;
                  _loc18_++;
               }
            }
            else
            {
               _loc19_ = _loc6_.pointCount;
               _loc18_ = 0;
               while(_loc18_ < _loc19_)
               {
                  (_loc23_ = _loc6_.points[_loc18_]).normalImpulse = 0;
                  _loc23_.tangentImpulse = 0;
                  _loc18_++;
               }
            }
            _loc5_++;
         }
      }
      
      public function SolveVelocityConstraints() : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 5610
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function FinalizeVelocityConstraints() : void
      {
         var _loc2_:b2ContactConstraint = null;
         var _loc3_:b2Manifold = null;
         var _loc4_:int = 0;
         var _loc5_:b2ManifoldPoint = null;
         var _loc6_:b2ContactConstraintPoint = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.m_constraintCount)
         {
            _loc2_ = this.m_constraints[_loc1_];
            _loc3_ = _loc2_.manifold;
            _loc4_ = 0;
            while(_loc4_ < _loc2_.pointCount)
            {
               _loc5_ = _loc3_.m_points[_loc4_];
               _loc6_ = _loc2_.points[_loc4_];
               _loc5_.m_normalImpulse = _loc6_.normalImpulse;
               _loc5_.m_tangentImpulse = _loc6_.tangentImpulse;
               _loc4_++;
            }
            _loc1_++;
         }
      }
      
      public function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:b2Body = null;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:b2Vec2 = null;
         var _loc12_:int = 0;
         var _loc13_:b2ContactConstraintPoint = null;
         var _loc14_:b2Vec2 = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.m_constraintCount)
         {
            _loc5_ = (_loc4_ = this.m_constraints[_loc3_]).bodyA;
            _loc6_ = _loc4_.bodyB;
            _loc7_ = _loc5_.m_mass * _loc5_.m_invMass;
            _loc8_ = _loc5_.m_mass * _loc5_.m_invI;
            _loc9_ = _loc6_.m_mass * _loc6_.m_invMass;
            _loc10_ = _loc6_.m_mass * _loc6_.m_invI;
            s_psm.Initialize(_loc4_);
            _loc11_ = s_psm.m_normal;
            _loc12_ = 0;
            while(_loc12_ < _loc4_.pointCount)
            {
               _loc13_ = _loc4_.points[_loc12_];
               _loc14_ = s_psm.m_points[_loc12_];
               _loc15_ = s_psm.m_separations[_loc12_];
               _loc16_ = _loc14_.x - _loc5_.m_sweep.c.x;
               _loc17_ = _loc14_.y - _loc5_.m_sweep.c.y;
               _loc18_ = _loc14_.x - _loc6_.m_sweep.c.x;
               _loc19_ = _loc14_.y - _loc6_.m_sweep.c.y;
               _loc2_ = _loc2_ < _loc15_ ? Number(_loc2_) : Number(_loc15_);
               _loc20_ = b2Math.Clamp(param1 * (_loc15_ + b2Settings.b2_linearSlop),-b2Settings.b2_maxLinearCorrection,0);
               _loc22_ = (_loc21_ = -_loc13_.equalizedMass * _loc20_) * _loc11_.x;
               _loc23_ = _loc21_ * _loc11_.y;
               _loc5_.m_sweep.c.x -= _loc7_ * _loc22_;
               _loc5_.m_sweep.c.y -= _loc7_ * _loc23_;
               _loc5_.m_sweep.a -= _loc8_ * (_loc16_ * _loc23_ - _loc17_ * _loc22_);
               _loc5_.SynchronizeTransform();
               _loc6_.m_sweep.c.x += _loc9_ * _loc22_;
               _loc6_.m_sweep.c.y += _loc9_ * _loc23_;
               _loc6_.m_sweep.a += _loc10_ * (_loc18_ * _loc23_ - _loc19_ * _loc22_);
               _loc6_.SynchronizeTransform();
               _loc12_++;
            }
            _loc3_++;
         }
         return _loc2_ > -1.5 * b2Settings.b2_linearSlop;
      }
   }
}
