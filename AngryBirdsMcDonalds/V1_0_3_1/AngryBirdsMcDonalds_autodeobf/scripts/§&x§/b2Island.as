package §&x§
{
   import §!4§.*;
   import §'!J§.*;
   import §-!T§.*;
   import §0,§.*;
   import §3o§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §#!<§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §]!A§;
      
      private var §8!n§:b2ContactListener;
      
      private var §'S§:b2ContactSolver;
      
      b2internal var §<!O§:Vector.<b2Body>;
      
      b2internal var §=!7§:Vector.<b2Contact>;
      
      b2internal var §8!c§:Vector.<b2Joint>;
      
      b2internal var §7!N§:int;
      
      b2internal var §`N§:int;
      
      b2internal var §=?§:int;
      
      private var §;j§:int;
      
      b2internal var §>;§:int;
      
      b2internal var §9I§:int;
      
      public function b2Island()
      {
         super();
         this.§<!O§ = new Vector.<b2Body>();
         this.§=!7§ = new Vector.<b2Contact>();
         this.§8!c§ = new Vector.<b2Joint>();
      }
      
      public function §,!p§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§;j§ = param1;
         this.§>;§ = param2;
         this.§9I§ = param3;
         this.§7!N§ = 0;
         this.§=?§ = 0;
         this.§`N§ = 0;
         this.§]!A§ = param4;
         this.§8!n§ = param5;
         this.§'S§ = param6;
         _loc7_ = this.§<!O§.length;
         while(_loc7_ < param1)
         {
            this.§<!O§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§=!7§.length;
         while(_loc7_ < param2)
         {
            this.§=!7§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8!c§.length;
         while(_loc7_ < param3)
         {
            this.§8!c§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §^6§() : void
      {
         this.§7!N§ = 0;
         this.§=?§ = 0;
         this.§`N§ = 0;
      }
      
      public function §'s§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§7!N§)
         {
            if((_loc6_ = this.§<!O§[_loc4_]).§"!I§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§"M§.x += param1.§"!?§ * (param2.x + _loc6_.§&l§ * _loc6_.§<!1§.x);
               _loc6_.§"M§.y += param1.§"!?§ * (param2.y + _loc6_.§&l§ * _loc6_.§<!1§.y);
               _loc6_.m_angularVelocity += param1.§"!?§ * _loc6_.§]!Q§ * _loc6_.§=!?§;
               _loc6_.§"M§.§5D§(b2Math.§@!-§(1 - param1.§"!?§ * _loc6_.§7!-§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§@!-§(1 - param1.§"!?§ * _loc6_.§0!S§,0,1);
            }
            _loc4_++;
         }
         this.§'S§.§,!p§(param1,this.§=!7§,this.§=?§,this.§]!A§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§'S§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§`N§)
         {
            (_loc7_ = this.§8!c§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§>!i§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§`N§)
            {
               (_loc7_ = this.§8!c§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§`N§)
         {
            (_loc7_ = this.§8!c§[_loc4_]).§%!<§();
            _loc4_++;
         }
         _loc8_.§%!<§();
         _loc4_ = 0;
         while(_loc4_ < this.§7!N§)
         {
            if((_loc6_ = this.§<!O§[_loc4_]).§"!I§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§"!?§ * _loc6_.§"M§.x;
               _loc10_ = param1.§"!?§ * _loc6_.§"M§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§"M§.Normalize();
                  _loc6_.§"M§.x *= b2Settings.b2_maxTranslation * param1.§9j§;
                  _loc6_.§"M§.y *= b2Settings.b2_maxTranslation * param1.§9j§;
               }
               _loc11_ = param1.§"!?§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§9j§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§9j§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§"!?§ * _loc6_.§"M§.x;
               _loc6_.m_sweep.c.y += param1.§"!?§ * _loc6_.§"M§.y;
               _loc6_.m_sweep.a += param1.§"!?§ * _loc6_.m_angularVelocity;
               _loc6_.§4l§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#P§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§`N§)
            {
               _loc14_ = (_loc7_ = this.§8!c§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§4!$§(_loc8_.§?&§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§7!N§)
            {
               if((_loc6_ = this.§<!O§[_loc4_]).§"!I§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§ 3§ & b2Body.§6U§) == 0)
                  {
                     _loc6_.§4!;§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§ 3§ & b2Body.§6U§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§6!Z§(_loc6_.§"M§,_loc6_.§"M§) > _loc16_)
                  {
                     _loc6_.§4!;§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§4!;§ += param1.§"!?§;
                     _loc15_ = b2Math.§;!F§(_loc15_,_loc6_.§4!;§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§7!N§)
               {
                  (_loc6_ = this.§<!O§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §"D§(param1:b2TimeStep) : void
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
         this.§'S§.§,!p§(param1,this.§=!7§,this.§=?§,this.§]!A§);
         var _loc4_:b2ContactSolver = this.§'S§;
         _loc2_ = 0;
         while(_loc2_ < this.§`N§)
         {
            this.§8!c§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§>!i§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§`N§)
            {
               this.§8!c§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7!N§)
         {
            if((_loc6_ = this.§<!O§[_loc2_]).§"!I§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§"!?§ * _loc6_.§"M§.x;
               _loc8_ = param1.§"!?§ * _loc6_.§"M§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§"M§.Normalize();
                  _loc6_.§"M§.x *= b2Settings.b2_maxTranslation * param1.§9j§;
                  _loc6_.§"M§.y *= b2Settings.b2_maxTranslation * param1.§9j§;
               }
               _loc9_ = param1.§"!?§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§9j§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§9j§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§"!?§ * _loc6_.§"M§.x;
               _loc6_.m_sweep.c.y += param1.§"!?§ * _loc6_.§"M§.y;
               _loc6_.m_sweep.a += param1.§"!?§ * _loc6_.m_angularVelocity;
               _loc6_.§4l§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§#P§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§`N§)
            {
               _loc12_ = this.§8!c§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§4!$§(_loc4_.§?&§);
      }
      
      public function §4!$§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§8!n§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=?§)
         {
            _loc3_ = this.§=!7§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§"4§)
            {
               §#!<§.§?!h§[_loc5_] = _loc4_.§7!Q§[_loc5_].normalImpulse;
               §#!<§.§5!_§[_loc5_] = _loc4_.§7!Q§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§8!n§.PostSolve(_loc3_,§#!<§);
            _loc2_++;
         }
      }
      
      public function §[w§(param1:b2Body) : void
      {
         param1.§;!L§ = this.§7!N§;
         var _loc2_:* = this.§7!N§++;
         this.§<!O§[_loc2_] = param1;
      }
      
      public function §9!B§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§=?§++;
         this.§=!7§[_loc2_] = param1;
      }
      
      public function §]!,§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§`N§++;
         this.§8!c§[_loc2_] = param1;
      }
   }
}
