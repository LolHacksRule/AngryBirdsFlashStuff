package §]=§
{
   import §%t§.*;
   import §&L§.*;
   import §'s§.*;
   import §+!,§.*;
   import §6!9§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §!%§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §;!,§;
      
      private var §0h§:b2ContactListener;
      
      private var § !i§:b2ContactSolver;
      
      b2internal var §'!^§:Vector.<b2Body>;
      
      b2internal var §@O§:Vector.<b2Contact>;
      
      b2internal var §+g§:Vector.<b2Joint>;
      
      b2internal var §>!8§:int;
      
      b2internal var §<!A§:int;
      
      b2internal var §7!?§:int;
      
      private var §04§:int;
      
      b2internal var §9!"§:int;
      
      b2internal var §?!P§:int;
      
      public function b2Island()
      {
         super();
         this.§'!^§ = new Vector.<b2Body>();
         this.§@O§ = new Vector.<b2Contact>();
         this.§+g§ = new Vector.<b2Joint>();
      }
      
      public function §;o§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§04§ = param1;
         this.§9!"§ = param2;
         this.§?!P§ = param3;
         this.§>!8§ = 0;
         this.§7!?§ = 0;
         this.§<!A§ = 0;
         this.§;!,§ = param4;
         this.§0h§ = param5;
         this.§ !i§ = param6;
         _loc7_ = this.§'!^§.length;
         while(_loc7_ < param1)
         {
            this.§'!^§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§@O§.length;
         while(_loc7_ < param2)
         {
            this.§@O§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§+g§.length;
         while(_loc7_ < param3)
         {
            this.§+g§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §=!b§() : void
      {
         this.§>!8§ = 0;
         this.§7!?§ = 0;
         this.§<!A§ = 0;
      }
      
      public function §<!6§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§>!8§)
         {
            _loc6_ = this.§'!^§[_loc4_];
            if(_loc6_.§-V§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§45§.x += param1.§`"§ * (param2.x + _loc6_.§8[§ * _loc6_.§=q§.x);
               _loc6_.§45§.y += param1.§`"§ * (param2.y + _loc6_.§8[§ * _loc6_.§=q§.y);
               _loc6_.m_angularVelocity += param1.§`"§ * _loc6_.§&f§ * _loc6_.§0e§;
               _loc6_.§45§.§%!U§(b2Math.§[$§(1 - param1.§`"§ * _loc6_.§?k§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§[$§(1 - param1.§`"§ * _loc6_.§"!X§,0,1);
            }
            _loc4_++;
         }
         this.§ !i§.§;o§(param1,this.§@O§,this.§7!?§,this.§;!,§);
         var _loc8_:b2ContactSolver = this.§ !i§;
         _loc8_.InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§<!A§)
         {
            _loc7_ = this.§+g§[_loc4_];
            _loc7_.InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§&!Z§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<!A§)
            {
               _loc7_ = this.§+g§[_loc5_];
               _loc7_.SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§<!A§)
         {
            _loc7_ = this.§+g§[_loc4_];
            _loc7_.§[!B§();
            _loc4_++;
         }
         _loc8_.§[!B§();
         _loc4_ = 0;
         while(_loc4_ < this.§>!8§)
         {
            _loc6_ = this.§'!^§[_loc4_];
            if(_loc6_.§-V§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§`"§ * _loc6_.§45§.x;
               _loc10_ = param1.§`"§ * _loc6_.§45§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§45§.Normalize();
                  _loc6_.§45§.x *= b2Settings.b2_maxTranslation * param1.§%r§;
                  _loc6_.§45§.y *= b2Settings.b2_maxTranslation * param1.§%r§;
               }
               _loc11_ = param1.§`"§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%r§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%r§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§`"§ * _loc6_.§45§.x;
               _loc6_.m_sweep.c.y += param1.§`"§ * _loc6_.§45§.y;
               _loc6_.m_sweep.a += param1.§`"§ * _loc6_.m_angularVelocity;
               _loc6_.§`!e§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§3!"§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§<!A§)
            {
               _loc7_ = this.§+g§[_loc5_];
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
         this.§#O§(_loc8_.§2!7§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§>!8§)
            {
               _loc6_ = this.§'!^§[_loc4_];
               if(_loc6_.§-V§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§3! § & b2Body.§,!f§) == 0)
                  {
                     _loc6_.§`!5§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§3! § & b2Body.§,!f§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§2&§(_loc6_.§45§,_loc6_.§45§) > _loc16_)
                  {
                     _loc6_.§`!5§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§`!5§ += param1.§`"§;
                     _loc15_ = b2Math.§ if§(_loc15_,_loc6_.§`!5§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§>!8§)
               {
                  _loc6_ = this.§'!^§[_loc4_];
                  _loc6_.SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §[!-§(param1:b2TimeStep) : void
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
         this.§ !i§.§;o§(param1,this.§@O§,this.§7!?§,this.§;!,§);
         var _loc4_:b2ContactSolver = this.§ !i§;
         _loc2_ = 0;
         while(_loc2_ < this.§<!A§)
         {
            this.§+g§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§&!Z§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§<!A§)
            {
               this.§+g§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§>!8§)
         {
            _loc6_ = this.§'!^§[_loc2_];
            if(_loc6_.§-V§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§`"§ * _loc6_.§45§.x;
               _loc8_ = param1.§`"§ * _loc6_.§45§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§45§.Normalize();
                  _loc6_.§45§.x *= b2Settings.b2_maxTranslation * param1.§%r§;
                  _loc6_.§45§.y *= b2Settings.b2_maxTranslation * param1.§%r§;
               }
               _loc9_ = param1.§`"§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%r§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%r§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§`"§ * _loc6_.§45§.x;
               _loc6_.m_sweep.c.y += param1.§`"§ * _loc6_.§45§.y;
               _loc6_.m_sweep.a += param1.§`"§ * _loc6_.m_angularVelocity;
               _loc6_.§`!e§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§3!"§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§<!A§)
            {
               _loc12_ = this.§+g§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§#O§(_loc4_.§2!7§);
      }
      
      public function §#O§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§0h§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§7!?§)
         {
            _loc3_ = this.§@O§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§<!8§)
            {
               §!%§.§`!4§[_loc5_] = _loc4_.§5o§[_loc5_].normalImpulse;
               §!%§.§"!g§[_loc5_] = _loc4_.§5o§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§0h§.PostSolve(_loc3_,§!%§);
            _loc2_++;
         }
      }
      
      public function §>!L§(param1:b2Body) : void
      {
         param1.§=!R§ = this.§>!8§;
         var _loc2_:* = this.§>!8§++;
         this.§'!^§[_loc2_] = param1;
      }
      
      public function §5!A§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§7!?§++;
         this.§@O§[_loc2_] = param1;
      }
      
      public function §1T§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§<!A§++;
         this.§+g§[_loc2_] = param1;
      }
   }
}
