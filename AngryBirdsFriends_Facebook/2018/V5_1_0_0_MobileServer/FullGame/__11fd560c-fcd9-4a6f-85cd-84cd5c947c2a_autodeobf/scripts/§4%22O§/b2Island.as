package §4"O§
{
   import § ! §.*;
   import § "%§.*;
   import §'"$§.*;
   import §,!s§.*;
   import §`!k§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §#!R§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §%@§;
      
      private var §;#s§:b2ContactListener;
      
      private var §+#,§:b2ContactSolver;
      
      b2internal var §5#d§:Vector.<b2Body>;
      
      b2internal var §+c§:Vector.<b2Contact>;
      
      b2internal var §76§:Vector.<b2Joint>;
      
      b2internal var §9l§:int;
      
      b2internal var §'"O§:int;
      
      b2internal var §<"$§:int;
      
      private var §#$-§:int;
      
      b2internal var §+#;§:int;
      
      b2internal var §>$9§:int;
      
      public function b2Island()
      {
         super();
         this.§5#d§ = new Vector.<b2Body>();
         this.§+c§ = new Vector.<b2Contact>();
         this.§76§ = new Vector.<b2Joint>();
      }
      
      public function §?#W§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§#$-§ = param1;
         this.§+#;§ = param2;
         this.§>$9§ = param3;
         this.§9l§ = 0;
         this.§<"$§ = 0;
         this.§'"O§ = 0;
         this.§%@§ = param4;
         this.§;#s§ = param5;
         this.§+#,§ = param6;
         _loc7_ = this.§5#d§.length;
         while(_loc7_ < param1)
         {
            this.§5#d§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§+c§.length;
         while(_loc7_ < param2)
         {
            this.§+c§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§76§.length;
         while(_loc7_ < param3)
         {
            this.§76§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §,n§() : void
      {
         this.§9l§ = 0;
         this.§<"$§ = 0;
         this.§'"O§ = 0;
      }
      
      public function §3!Z§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§9l§)
         {
            if((_loc6_ = this.§5#d§[_loc4_]).§+L§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§4!I§.x += param1.dt * (_loc6_.§1!_§ * param2.x + _loc6_.§@P§ * _loc6_.§?"?§.x);
               _loc6_.§4!I§.y += param1.dt * (_loc6_.§1!_§ * param2.y + _loc6_.§@P§ * _loc6_.§?"?§.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.§ !q§ * _loc6_.§'#<§;
               _loc6_.§4!I§.§8!O§(b2Math.§0"k§(1 - param1.dt * _loc6_.§]#c§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§0"k§(1 - param1.dt * _loc6_.§6#O§,0,1);
            }
            _loc4_++;
         }
         this.§+#,§.§?#W§(param1,this.§+c§,this.§<"$§,this.§%@§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§+#,§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§'"O§)
         {
            (_loc7_ = this.§76§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#8§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§'"O§)
            {
               (_loc7_ = this.§76§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§'"O§)
         {
            (_loc7_ = this.§76§[_loc4_]).§!!D§();
            _loc4_++;
         }
         _loc8_.§!!D§();
         _loc4_ = 0;
         while(_loc4_ < this.§9l§)
         {
            if((_loc6_ = this.§5#d§[_loc4_]).§+L§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.§4!I§.x;
               _loc10_ = param1.dt * _loc6_.§4!I§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§4!I§.Normalize();
                  _loc6_.§4!I§.x *= b2Settings.b2_maxTranslation * param1.§6$2§;
                  _loc6_.§4!I§.y *= b2Settings.b2_maxTranslation * param1.§6$2§;
               }
               _loc11_ = param1.dt * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§6$2§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§6$2§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.§4!I§.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.§4!I§.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§6#K§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§^$@§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§'"O§)
            {
               _loc14_ = (_loc7_ = this.§76§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§?-§(_loc8_.§-$@§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§9l§)
            {
               if((_loc6_ = this.§5#d§[_loc4_]).§+L§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§ $8§ & b2Body.§@#f§) == 0)
                  {
                     _loc6_.§6!!§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§ $8§ & b2Body.§@#f§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§=7§(_loc6_.§4!I§,_loc6_.§4!I§) > _loc16_)
                  {
                     _loc6_.§6!!§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§6!!§ += param1.dt;
                     _loc15_ = b2Math.§;$0§(_loc15_,_loc6_.§6!!§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§9l§)
               {
                  (_loc6_ = this.§5#d§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §%$8§(param1:b2TimeStep) : void
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
         this.§+#,§.§?#W§(param1,this.§+c§,this.§<"$§,this.§%@§);
         var _loc4_:b2ContactSolver = this.§+#,§;
         _loc2_ = 0;
         while(_loc2_ < this.§'"O§)
         {
            this.§76§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§^$@§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§'"O§)
            {
               _loc8_ = this.§76§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§#8§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§'"O§)
            {
               this.§76§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§9l§)
         {
            if((_loc9_ = this.§5#d§[_loc2_]).§+L§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.§4!I§.x;
               _loc11_ = param1.dt * _loc9_.§4!I§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§4!I§.Normalize();
                  _loc9_.§4!I§.x *= b2Settings.b2_maxTranslation * param1.§6$2§;
                  _loc9_.§4!I§.y *= b2Settings.b2_maxTranslation * param1.§6$2§;
               }
               _loc12_ = param1.dt * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§6$2§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§6$2§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.§4!I§.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.§4!I§.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.§6#K§();
            }
            _loc2_++;
         }
         this.§?-§(_loc4_.§-$@§);
      }
      
      public function §?-§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§;#s§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§<"$§)
         {
            _loc3_ = this.§+c§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§7!$§)
            {
               §#!R§.§>!L§[_loc5_] = _loc4_.§;$$§[_loc5_].normalImpulse;
               §#!R§.§6#7§[_loc5_] = _loc4_.§;$$§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§;#s§.PostSolve(_loc3_,§#!R§);
            _loc2_++;
         }
      }
      
      public function §8"#§(param1:b2Body) : void
      {
         param1.§8#t§ = this.§9l§;
         var _loc2_:* = this.§9l§++;
         this.§5#d§[_loc2_] = param1;
      }
      
      public function §&#@§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§<"$§++;
         this.§+c§[_loc2_] = param1;
      }
      
      public function §""y§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§'"O§++;
         this.§76§[_loc2_] = param1;
      }
   }
}
