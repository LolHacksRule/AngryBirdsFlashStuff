package §#I§
{
   import §&H§.*;
   import §2!'§.*;
   import §4]§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §for§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §'!H§;
      
      private var §02§:b2ContactListener;
      
      private var §[!§:b2ContactSolver;
      
      b2internal var §?m§:Vector.<b2Body>;
      
      b2internal var §"!V§:Vector.<b2Contact>;
      
      b2internal var §"!2§:Vector.<b2Joint>;
      
      b2internal var §=!t§:int;
      
      b2internal var §9f§:int;
      
      b2internal var §,l§:int;
      
      private var §2! §:int;
      
      b2internal var §6%§:int;
      
      b2internal var § !3§:int;
      
      public function b2Island()
      {
         super();
         this.§?m§ = new Vector.<b2Body>();
         this.§"!V§ = new Vector.<b2Contact>();
         this.§"!2§ = new Vector.<b2Joint>();
      }
      
      public function §`!D§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§2! § = param1;
         this.§6%§ = param2;
         this.§ !3§ = param3;
         this.§=!t§ = 0;
         this.§,l§ = 0;
         this.§9f§ = 0;
         this.§'!H§ = param4;
         this.§02§ = param5;
         this.§[!§ = param6;
         _loc7_ = this.§?m§.length;
         while(_loc7_ < param1)
         {
            this.§?m§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§"!V§.length;
         while(_loc7_ < param2)
         {
            this.§"!V§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§"!2§.length;
         while(_loc7_ < param3)
         {
            this.§"!2§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §6!6§() : void
      {
         this.§=!t§ = 0;
         this.§,l§ = 0;
         this.§9f§ = 0;
      }
      
      public function §,!&§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§=!t§)
         {
            if((_loc6_ = this.§?m§[_loc4_]).§ 5§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§%!<§.x += param1.§?!C§ * (param2.x + _loc6_.§3!q§ * _loc6_.§76§.x);
               _loc6_.§%!<§.y += param1.§?!C§ * (param2.y + _loc6_.§3!q§ * _loc6_.§76§.y);
               _loc6_.m_angularVelocity += param1.§?!C§ * _loc6_.§2!1§ * _loc6_.§5n§;
               _loc6_.§%!<§.§9""§(b2Math.§?!?§(1 - param1.§?!C§ * _loc6_.§];§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§?!?§(1 - param1.§?!C§ * _loc6_.§[!7§,0,1);
            }
            _loc4_++;
         }
         this.§[!§.§`!D§(param1,this.§"!V§,this.§,l§,this.§'!H§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§[!§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§9f§)
         {
            (_loc7_ = this.§"!2§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§7q§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§9f§)
            {
               (_loc7_ = this.§"!2§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§9f§)
         {
            (_loc7_ = this.§"!2§[_loc4_]).§@!O§();
            _loc4_++;
         }
         _loc8_.§@!O§();
         _loc4_ = 0;
         while(_loc4_ < this.§=!t§)
         {
            if((_loc6_ = this.§?m§[_loc4_]).§ 5§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§?!C§ * _loc6_.§%!<§.x;
               _loc10_ = param1.§?!C§ * _loc6_.§%!<§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%!<§.Normalize();
                  _loc6_.§%!<§.x *= b2Settings.b2_maxTranslation * param1.§!!<§;
                  _loc6_.§%!<§.y *= b2Settings.b2_maxTranslation * param1.§!!<§;
               }
               _loc11_ = param1.§?!C§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§!!<§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§!!<§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?!C§ * _loc6_.§%!<§.x;
               _loc6_.m_sweep.c.y += param1.§?!C§ * _loc6_.§%!<§.y;
               _loc6_.m_sweep.a += param1.§?!C§ * _loc6_.m_angularVelocity;
               _loc6_.§@!1§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§7!?§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§9f§)
            {
               _loc14_ = (_loc7_ = this.§"!2§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§7=§(_loc8_.§;!d§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§=!t§)
            {
               if((_loc6_ = this.§?m§[_loc4_]).§ 5§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§[B§ & b2Body.§6T§) == 0)
                  {
                     _loc6_.§+0§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§[B§ & b2Body.§6T§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§#D§(_loc6_.§%!<§,_loc6_.§%!<§) > _loc16_)
                  {
                     _loc6_.§+0§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§+0§ += param1.§?!C§;
                     _loc15_ = b2Math.§;!t§(_loc15_,_loc6_.§+0§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§=!t§)
               {
                  (_loc6_ = this.§?m§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §%!@§(param1:b2TimeStep) : void
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
         this.§[!§.§`!D§(param1,this.§"!V§,this.§,l§,this.§'!H§);
         var _loc4_:b2ContactSolver = this.§[!§;
         _loc2_ = 0;
         while(_loc2_ < this.§9f§)
         {
            this.§"!2§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§7q§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§9f§)
            {
               this.§"!2§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§=!t§)
         {
            if((_loc6_ = this.§?m§[_loc2_]).§ 5§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§?!C§ * _loc6_.§%!<§.x;
               _loc8_ = param1.§?!C§ * _loc6_.§%!<§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%!<§.Normalize();
                  _loc6_.§%!<§.x *= b2Settings.b2_maxTranslation * param1.§!!<§;
                  _loc6_.§%!<§.y *= b2Settings.b2_maxTranslation * param1.§!!<§;
               }
               _loc9_ = param1.§?!C§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§!!<§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§!!<§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?!C§ * _loc6_.§%!<§.x;
               _loc6_.m_sweep.c.y += param1.§?!C§ * _loc6_.§%!<§.y;
               _loc6_.m_sweep.a += param1.§?!C§ * _loc6_.m_angularVelocity;
               _loc6_.§@!1§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§7!?§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§9f§)
            {
               _loc12_ = this.§"!2§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§7=§(_loc4_.§;!d§);
      }
      
      public function §7=§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§02§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,l§)
         {
            _loc3_ = this.§"!V§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§%!3§)
            {
               §for§.§]Q§[_loc5_] = _loc4_.§+"§[_loc5_].normalImpulse;
               §for§.§5!K§[_loc5_] = _loc4_.§+"§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§02§.PostSolve(_loc3_,§for§);
            _loc2_++;
         }
      }
      
      public function §`!n§(param1:b2Body) : void
      {
         param1.§-!_§ = this.§=!t§;
         var _loc2_:* = this.§=!t§++;
         this.§?m§[_loc2_] = param1;
      }
      
      public function §4N§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§,l§++;
         this.§"!V§[_loc2_] = param1;
      }
      
      public function §8!c§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§9f§++;
         this.§"!2§[_loc2_] = param1;
      }
   }
}
