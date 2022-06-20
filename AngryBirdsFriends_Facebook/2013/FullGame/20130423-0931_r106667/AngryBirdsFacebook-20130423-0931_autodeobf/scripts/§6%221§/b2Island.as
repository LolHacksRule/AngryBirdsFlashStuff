package §6"1§
{
   import §'"-§.*;
   import §'"6§.*;
   import §,"[§.*;
   import §,,§.*;
   import §6!^§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §@!_§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §>!`§;
      
      private var §,"1§:b2ContactListener;
      
      private var §,"V§:b2ContactSolver;
      
      b2internal var §;"[§:Vector.<b2Body>;
      
      b2internal var §=p§:Vector.<b2Contact>;
      
      b2internal var §,!f§:Vector.<b2Joint>;
      
      b2internal var §;0§:int;
      
      b2internal var §<!y§:int;
      
      b2internal var §%!0§:int;
      
      private var §?#§:int;
      
      b2internal var §9"3§:int;
      
      b2internal var §9!q§:int;
      
      public function b2Island()
      {
         super();
         this.§;"[§ = new Vector.<b2Body>();
         this.§=p§ = new Vector.<b2Contact>();
         this.§,!f§ = new Vector.<b2Joint>();
      }
      
      public function §6!Q§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§?#§ = param1;
         this.§9"3§ = param2;
         this.§9!q§ = param3;
         this.§;0§ = 0;
         this.§%!0§ = 0;
         this.§<!y§ = 0;
         this.§>!`§ = param4;
         this.§,"1§ = param5;
         this.§,"V§ = param6;
         _loc7_ = this.§;"[§.length;
         while(_loc7_ < param1)
         {
            this.§;"[§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§=p§.length;
         while(_loc7_ < param2)
         {
            this.§=p§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§,!f§.length;
         while(_loc7_ < param3)
         {
            this.§,!f§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §7!P§() : void
      {
         this.§;0§ = 0;
         this.§%!0§ = 0;
         this.§<!y§ = 0;
      }
      
      public function §+!o§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§;0§)
         {
            if((_loc6_ = this.§;"[§[_loc4_]).§>!f§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§"!_§.x += param1.§;J§ * (param2.x + _loc6_.§-@§ * _loc6_.§8"?§.x);
               _loc6_.§"!_§.y += param1.§;J§ * (param2.y + _loc6_.§-@§ * _loc6_.§8"?§.y);
               _loc6_.m_angularVelocity += param1.§;J§ * _loc6_.§,H§ * _loc6_.§1"@§;
               _loc6_.§"!_§.§!!L§(b2Math.§1"T§(1 - param1.§;J§ * _loc6_.§>!e§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§1"T§(1 - param1.§;J§ * _loc6_.§]";§,0,1);
            }
            _loc4_++;
         }
         this.§,"V§.§6!Q§(param1,this.§=p§,this.§%!0§,this.§>!`§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§,"V§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§<!y§)
         {
            (_loc7_ = this.§,!f§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§;N§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<!y§)
            {
               (_loc7_ = this.§,!f§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§<!y§)
         {
            (_loc7_ = this.§,!f§[_loc4_]).§,t§();
            _loc4_++;
         }
         _loc8_.§,t§();
         _loc4_ = 0;
         while(_loc4_ < this.§;0§)
         {
            if((_loc6_ = this.§;"[§[_loc4_]).§>!f§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§;J§ * _loc6_.§"!_§.x;
               _loc10_ = param1.§;J§ * _loc6_.§"!_§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§"!_§.Normalize();
                  _loc6_.§"!_§.x *= b2Settings.b2_maxTranslation * param1.§9n§;
                  _loc6_.§"!_§.y *= b2Settings.b2_maxTranslation * param1.§9n§;
               }
               _loc11_ = param1.§;J§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§9n§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§9n§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§;J§ * _loc6_.§"!_§.x;
               _loc6_.m_sweep.c.y += param1.§;J§ * _loc6_.§"!_§.y;
               _loc6_.m_sweep.a += param1.§;J§ * _loc6_.m_angularVelocity;
               _loc6_.§+!q§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§="W§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§<!y§)
            {
               _loc14_ = (_loc7_ = this.§,!f§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§""Q§(_loc8_.§6o§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§;0§)
            {
               if((_loc6_ = this.§;"[§[_loc4_]).§>!f§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§2"B§ & b2Body.§-!g§) == 0)
                  {
                     _loc6_.§&"3§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§2"B§ & b2Body.§-!g§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§[!3§(_loc6_.§"!_§,_loc6_.§"!_§) > _loc16_)
                  {
                     _loc6_.§&"3§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§&"3§ += param1.§;J§;
                     _loc15_ = b2Math.§@U§(_loc15_,_loc6_.§&"3§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§;0§)
               {
                  (_loc6_ = this.§;"[§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §7!_§(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:b2Body = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         this.§,"V§.§6!Q§(param1,this.§=p§,this.§%!0§,this.§>!`§);
         var _loc4_:b2ContactSolver = this.§,"V§;
         _loc2_ = 0;
         while(_loc2_ < this.§<!y§)
         {
            this.§,!f§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§;N§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§<!y§)
            {
               this.§,!f§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§;0§)
         {
            if((_loc6_ = this.§;"[§[_loc2_]).§>!f§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§;J§ * _loc6_.§"!_§.x;
               _loc8_ = param1.§;J§ * _loc6_.§"!_§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§"!_§.Normalize();
                  _loc6_.§"!_§.x *= b2Settings.b2_maxTranslation * param1.§9n§;
                  _loc6_.§"!_§.y *= b2Settings.b2_maxTranslation * param1.§9n§;
               }
               _loc9_ = param1.§;J§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§9n§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§9n§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§;J§ * _loc6_.§"!_§.x;
               _loc6_.m_sweep.c.y += param1.§;J§ * _loc6_.§"!_§.y;
               _loc6_.m_sweep.a += param1.§;J§ * _loc6_.m_angularVelocity;
               _loc6_.§+!q§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§="W§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§<!y§)
            {
               _loc12_ = this.§,!f§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§""Q§(_loc4_.§6o§);
      }
      
      public function §""Q§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§,"1§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%!0§)
         {
            _loc3_ = this.§=p§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§=!7§)
            {
               §@!_§.§'5§[_loc5_] = _loc4_.§]!@§[_loc5_].normalImpulse;
               §@!_§.§%!O§[_loc5_] = _loc4_.§]!@§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§,"1§.PostSolve(_loc3_,§@!_§);
            _loc2_++;
         }
      }
      
      public function §'!$§(param1:b2Body) : void
      {
         param1.§3"R§ = this.§;0§;
         var _loc2_:* = this.§;0§++;
         this.§;"[§[_loc2_] = param1;
      }
      
      public function §87§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§%!0§++;
         this.§=p§[_loc2_] = param1;
      }
      
      public function §@"9§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§<!y§++;
         this.§,!f§[_loc2_] = param1;
      }
   }
}
