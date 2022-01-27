package §>!L§
{
   import §!m§.*;
   import §#!0§.*;
   import §+!g§.*;
   import §=;§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §"3§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §6I§;
      
      private var §+!>§:b2ContactListener;
      
      private var §%A§:b2ContactSolver;
      
      b2internal var §,!<§:Vector.<b2Body>;
      
      b2internal var §`!4§:Vector.<b2Contact>;
      
      b2internal var §0!a§:Vector.<b2Joint>;
      
      b2internal var §+C§:int;
      
      b2internal var § var§:int;
      
      b2internal var § !Q§:int;
      
      private var §2`§:int;
      
      b2internal var §6_§:int;
      
      b2internal var §>P§:int;
      
      public function b2Island()
      {
         super();
         this.§,!<§ = new Vector.<b2Body>();
         this.§`!4§ = new Vector.<b2Contact>();
         this.§0!a§ = new Vector.<b2Joint>();
      }
      
      public function §2@§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§2`§ = param1;
         this.§6_§ = param2;
         this.§>P§ = param3;
         this.§+C§ = 0;
         this.§ !Q§ = 0;
         this.§ var§ = 0;
         this.§6I§ = param4;
         this.§+!>§ = param5;
         this.§%A§ = param6;
         _loc7_ = this.§,!<§.length;
         while(_loc7_ < param1)
         {
            this.§,!<§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§`!4§.length;
         while(_loc7_ < param2)
         {
            this.§`!4§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§0!a§.length;
         while(_loc7_ < param3)
         {
            this.§0!a§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §-!g§() : void
      {
         this.§+C§ = 0;
         this.§ !Q§ = 0;
         this.§ var§ = 0;
      }
      
      public function §]j§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§+C§)
         {
            _loc6_ = this.§,!<§[_loc4_];
            if(_loc6_.§6!-§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§4!h§.x += param1.§`M§ * (param2.x + _loc6_.§=n§ * _loc6_.§4!&§.x);
               _loc6_.§4!h§.y += param1.§`M§ * (param2.y + _loc6_.§=n§ * _loc6_.§4!&§.y);
               _loc6_.m_angularVelocity += param1.§`M§ * _loc6_.§1&§ * _loc6_.§`!c§;
               _loc6_.§4!h§.§2p§(b2Math.§3X§(1 - param1.§`M§ * _loc6_.§=-§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§3X§(1 - param1.§`M§ * _loc6_.§[<§,0,1);
            }
            _loc4_++;
         }
         this.§%A§.§2@§(param1,this.§`!4§,this.§ !Q§,this.§6I§);
         var _loc8_:b2ContactSolver = this.§%A§;
         _loc8_.InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§ var§)
         {
            _loc7_ = this.§0!a§[_loc4_];
            _loc7_.InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§[Z§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ var§)
            {
               _loc7_ = this.§0!a§[_loc5_];
               _loc7_.SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§ var§)
         {
            _loc7_ = this.§0!a§[_loc4_];
            _loc7_.§9r§();
            _loc4_++;
         }
         _loc8_.§9r§();
         _loc4_ = 0;
         while(_loc4_ < this.§+C§)
         {
            _loc6_ = this.§,!<§[_loc4_];
            if(_loc6_.§6!-§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§`M§ * _loc6_.§4!h§.x;
               _loc10_ = param1.§`M§ * _loc6_.§4!h§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§4!h§.Normalize();
                  _loc6_.§4!h§.x *= b2Settings.b2_maxTranslation * param1.§^!_§;
                  _loc6_.§4!h§.y *= b2Settings.b2_maxTranslation * param1.§^!_§;
               }
               _loc11_ = param1.§`M§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§^!_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§^!_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§`M§ * _loc6_.§4!h§.x;
               _loc6_.m_sweep.c.y += param1.§`M§ * _loc6_.§4!h§.y;
               _loc6_.m_sweep.a += param1.§`M§ * _loc6_.m_angularVelocity;
               _loc6_.§"!_§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§@<§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§ var§)
            {
               _loc7_ = this.§0!a§[_loc5_];
               _loc14_ = _loc7_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§0k§(_loc8_.§%!,§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§+C§)
            {
               _loc6_ = this.§,!<§[_loc4_];
               if(_loc6_.§6!-§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§]!D§ & b2Body.§"!-§) == 0)
                  {
                     _loc6_.§7!P§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§]!D§ & b2Body.§"!-§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§extends§(_loc6_.§4!h§,_loc6_.§4!h§) > _loc16_)
                  {
                     _loc6_.§7!P§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§7!P§ += param1.§`M§;
                     _loc15_ = b2Math.§]!#§(_loc15_,_loc6_.§7!P§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§+C§)
               {
                  _loc6_ = this.§,!<§[_loc4_];
                  _loc6_.SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §`k§(param1:b2TimeStep) : void
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
         this.§%A§.§2@§(param1,this.§`!4§,this.§ !Q§,this.§6I§);
         var _loc4_:b2ContactSolver = this.§%A§;
         _loc2_ = 0;
         while(_loc2_ < this.§ var§)
         {
            this.§0!a§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§[Z§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§ var§)
            {
               this.§0!a§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§+C§)
         {
            _loc6_ = this.§,!<§[_loc2_];
            if(_loc6_.§6!-§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§`M§ * _loc6_.§4!h§.x;
               _loc8_ = param1.§`M§ * _loc6_.§4!h§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§4!h§.Normalize();
                  _loc6_.§4!h§.x *= b2Settings.b2_maxTranslation * param1.§^!_§;
                  _loc6_.§4!h§.y *= b2Settings.b2_maxTranslation * param1.§^!_§;
               }
               _loc9_ = param1.§`M§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§^!_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§^!_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§`M§ * _loc6_.§4!h§.x;
               _loc6_.m_sweep.c.y += param1.§`M§ * _loc6_.§4!h§.y;
               _loc6_.m_sweep.a += param1.§`M§ * _loc6_.m_angularVelocity;
               _loc6_.§"!_§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§@<§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§ var§)
            {
               _loc12_ = this.§0!a§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§0k§(_loc4_.§%!,§);
      }
      
      public function §0k§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§+!>§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !Q§)
         {
            _loc3_ = this.§`!4§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§39§)
            {
               §"3§.§4W§[_loc5_] = _loc4_.§]!8§[_loc5_].normalImpulse;
               §"3§.§]!<§[_loc5_] = _loc4_.§]!8§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§+!>§.PostSolve(_loc3_,§"3§);
            _loc2_++;
         }
      }
      
      public function §0!Y§(param1:b2Body) : void
      {
         param1.§"+§ = this.§+C§;
         var _loc2_:* = this.§+C§++;
         this.§,!<§[_loc2_] = param1;
      }
      
      public function §^]§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§ !Q§++;
         this.§`!4§[_loc2_] = param1;
      }
      
      public function §5p§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§ var§++;
         this.§0!a§[_loc2_] = param1;
      }
   }
}
