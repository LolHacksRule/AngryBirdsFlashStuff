package §+#$§
{
   import §1!2§.*;
   import §3"5§.*;
   import §5"i§.*;
   import §8[§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §`!!§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §+!z§;
      
      private var § !5§:b2ContactListener;
      
      private var §"!k§:b2ContactSolver;
      
      b2internal var §%6§:Vector.<b2Body>;
      
      b2internal var §+"C§:Vector.<b2Contact>;
      
      b2internal var §8!s§:Vector.<b2Joint>;
      
      b2internal var §9#,§:int;
      
      b2internal var §5!I§:int;
      
      b2internal var §1N§:int;
      
      private var §-x§:int;
      
      b2internal var §5"x§:int;
      
      b2internal var §=!I§:int;
      
      public function b2Island()
      {
         super();
         this.§%6§ = new Vector.<b2Body>();
         this.§+"C§ = new Vector.<b2Contact>();
         this.§8!s§ = new Vector.<b2Joint>();
      }
      
      public function §8#5§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§-x§ = param1;
         this.§5"x§ = param2;
         this.§=!I§ = param3;
         this.§9#,§ = 0;
         this.§1N§ = 0;
         this.§5!I§ = 0;
         this.§+!z§ = param4;
         this.§ !5§ = param5;
         this.§"!k§ = param6;
         _loc7_ = this.§%6§.length;
         while(_loc7_ < param1)
         {
            this.§%6§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§+"C§.length;
         while(_loc7_ < param2)
         {
            this.§+"C§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8!s§.length;
         while(_loc7_ < param3)
         {
            this.§8!s§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §#u§() : void
      {
         this.§9#,§ = 0;
         this.§1N§ = 0;
         this.§5!I§ = 0;
      }
      
      public function §=#6§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§9#,§)
         {
            if((_loc6_ = this.§%6§[_loc4_]).§8! §() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§ #`§.x += param1.§1!O§ * (_loc6_.§]"`§ * param2.x + _loc6_.§3#>§ * _loc6_.§#r§.x);
               _loc6_.§ #`§.y += param1.§1!O§ * (_loc6_.§]"`§ * param2.y + _loc6_.§3#>§ * _loc6_.§#r§.y);
               _loc6_.m_angularVelocity += param1.§1!O§ * _loc6_.§3"y§ * _loc6_.§?"4§;
               _loc6_.§ #`§.§?1§(b2Math.§<"X§(1 - param1.§1!O§ * _loc6_.§6"H§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§<"X§(1 - param1.§1!O§ * _loc6_.each,0,1);
            }
            _loc4_++;
         }
         this.§"!k§.§8#5§(param1,this.§+"C§,this.§1N§,this.§+!z§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§"!k§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§5!I§)
         {
            (_loc7_ = this.§8!s§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§,H§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§5!I§)
            {
               (_loc7_ = this.§8!s§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§5!I§)
         {
            (_loc7_ = this.§8!s§[_loc4_]).§4"J§();
            _loc4_++;
         }
         _loc8_.§4"J§();
         _loc4_ = 0;
         while(_loc4_ < this.§9#,§)
         {
            if((_loc6_ = this.§%6§[_loc4_]).§8! §() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§1!O§ * _loc6_.§ #`§.x;
               _loc10_ = param1.§1!O§ * _loc6_.§ #`§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§ #`§.Normalize();
                  _loc6_.§ #`§.x *= b2Settings.b2_maxTranslation * param1.§4"r§;
                  _loc6_.§ #`§.y *= b2Settings.b2_maxTranslation * param1.§4"r§;
               }
               _loc11_ = param1.§1!O§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§4"r§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§4"r§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§1!O§ * _loc6_.§ #`§.x;
               _loc6_.m_sweep.c.y += param1.§1!O§ * _loc6_.§ #`§.y;
               _loc6_.m_sweep.a += param1.§1!O§ * _loc6_.m_angularVelocity;
               _loc6_.§`"a§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§5"A§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§5!I§)
            {
               _loc14_ = (_loc7_ = this.§8!s§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§6#N§(_loc8_.§[#@§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§9#,§)
            {
               if((_loc6_ = this.§%6§[_loc4_]).§8! §() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§6b§ & b2Body.§&J§) == 0)
                  {
                     _loc6_.§9-§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§6b§ & b2Body.§&J§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§+#>§(_loc6_.§ #`§,_loc6_.§ #`§) > _loc16_)
                  {
                     _loc6_.§9-§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§9-§ += param1.§1!O§;
                     _loc15_ = b2Math.§'#Z§(_loc15_,_loc6_.§9-§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§9#,§)
               {
                  (_loc6_ = this.§%6§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §,!x§(param1:b2TimeStep) : void
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
         this.§"!k§.§8#5§(param1,this.§+"C§,this.§1N§,this.§+!z§);
         var _loc4_:b2ContactSolver = this.§"!k§;
         _loc2_ = 0;
         while(_loc2_ < this.§5!I§)
         {
            this.§8!s§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§5"A§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§5!I§)
            {
               _loc8_ = this.§8!s§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§,H§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§5!I§)
            {
               this.§8!s§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9#,§)
         {
            if((_loc9_ = this.§%6§[_loc2_]).§8! §() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§1!O§ * _loc9_.§ #`§.x;
               _loc11_ = param1.§1!O§ * _loc9_.§ #`§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§ #`§.Normalize();
                  _loc9_.§ #`§.x *= b2Settings.b2_maxTranslation * param1.§4"r§;
                  _loc9_.§ #`§.y *= b2Settings.b2_maxTranslation * param1.§4"r§;
               }
               _loc12_ = param1.§1!O§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§4"r§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§4"r§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§1!O§ * _loc9_.§ #`§.x;
               _loc9_.m_sweep.c.y += param1.§1!O§ * _loc9_.§ #`§.y;
               _loc9_.m_sweep.a += param1.§1!O§ * _loc9_.m_angularVelocity;
               _loc9_.§`"a§();
            }
            _loc2_++;
         }
         this.§6#N§(_loc4_.§[#@§);
      }
      
      public function §6#N§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§ !5§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§1N§)
         {
            _loc3_ = this.§+"C§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§6!c§)
            {
               §`!!§.§?"^§[_loc5_] = _loc4_.§9"`§[_loc5_].normalImpulse;
               §`!!§.§[l§[_loc5_] = _loc4_.§9"`§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§ !5§.PostSolve(_loc3_,§`!!§);
            _loc2_++;
         }
      }
      
      public function §%j§(param1:b2Body) : void
      {
         param1.§[5§ = this.§9#,§;
         var _loc2_:* = this.§9#,§++;
         this.§%6§[_loc2_] = param1;
      }
      
      public function §`"Q§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§1N§++;
         this.§+"C§[_loc2_] = param1;
      }
      
      public function §^#1§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§5!I§++;
         this.§8!s§[_loc2_] = param1;
      }
   }
}
