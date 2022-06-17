package §8#t§
{
   import §0"=§.*;
   import §0# §.*;
   import §0J§.*;
   import §[!3§.*;
   import §`# §.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §9"C§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §>!=§;
      
      private var §6!x§:b2ContactListener;
      
      private var §%$%§:b2ContactSolver;
      
      b2internal var §,"0§:Vector.<b2Body>;
      
      b2internal var §<!E§:Vector.<b2Contact>;
      
      b2internal var §>$,§:Vector.<b2Joint>;
      
      b2internal var §3$1§:int;
      
      b2internal var §!§:int;
      
      b2internal var §@O§:int;
      
      private var §<#K§:int;
      
      b2internal var §2#2§:int;
      
      b2internal var §0!g§:int;
      
      public function b2Island()
      {
         super();
         this.§,"0§ = new Vector.<b2Body>();
         this.§<!E§ = new Vector.<b2Contact>();
         this.§>$,§ = new Vector.<b2Joint>();
      }
      
      public function §7##§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§<#K§ = param1;
         this.§2#2§ = param2;
         this.§0!g§ = param3;
         this.§3$1§ = 0;
         this.§@O§ = 0;
         this.§!§ = 0;
         this.§>!=§ = param4;
         this.§6!x§ = param5;
         this.§%$%§ = param6;
         _loc7_ = this.§,"0§.length;
         while(_loc7_ < param1)
         {
            this.§,"0§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§<!E§.length;
         while(_loc7_ < param2)
         {
            this.§<!E§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§>$,§.length;
         while(_loc7_ < param3)
         {
            this.§>$,§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §;"l§() : void
      {
         this.§3$1§ = 0;
         this.§@O§ = 0;
         this.§!§ = 0;
      }
      
      public function §]<§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc4_ = 0;
         while(_loc4_ < this.§3$1§)
         {
            if((_loc6_ = this.§,"0§[_loc4_]).§52§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§8!z§.x += param1.dt * (_loc6_.§?$<§ * param2.x + _loc6_.§&!s§ * _loc6_.§[#T§.x);
               _loc6_.§8!z§.y += param1.dt * (_loc6_.§?$<§ * param2.y + _loc6_.§&!s§ * _loc6_.§[#T§.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.§!$5§ * _loc6_.§>p§;
               _loc6_.§8!z§.§<#3§(b2Math.§%!"§(1 - param1.dt * _loc6_.§["8§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§%!"§(1 - param1.dt * _loc6_.§9q§,0,1);
            }
            _loc4_++;
         }
         this.§%$%§.§7##§(param1,this.§<!E§,this.§@O§,this.§>!=§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§%$%§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§!§)
         {
            this.§>$,§[_loc4_].InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§"#Q§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§!§)
            {
               this.§>$,§[_loc5_].SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§!§)
         {
            this.§>$,§[_loc4_].§""I§();
            _loc4_++;
         }
         _loc8_.§""I§();
         _loc4_ = 0;
         while(_loc4_ < this.§3$1§)
         {
            if((_loc6_ = this.§,"0§[_loc4_]).§52§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.§8!z§.x;
               _loc10_ = param1.dt * _loc6_.§8!z§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§8!z§.Normalize();
                  _loc6_.§8!z§.x *= b2Settings.b2_maxTranslation * param1.§`"7§;
                  _loc6_.§8!z§.y *= b2Settings.b2_maxTranslation * param1.§`"7§;
               }
               if(param1.dt * _loc6_.m_angularVelocity * (Number(param1.dt * _loc6_.m_angularVelocity)) > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§`"7§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§`"7§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.§8!z§.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.§8!z§.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§8$0§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§2#U§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§!§)
            {
               _loc14_ = this.§>$,§[_loc5_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§;#V§(_loc8_.§,6§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§3$1§)
            {
               if((_loc6_ = this.§,"0§[_loc4_]).§52§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§;!O§ & b2Body.§^"^§) == 0)
                  {
                     _loc6_.§<"L§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§;!O§ & b2Body.§^"^§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§4"P§(_loc6_.§8!z§,_loc6_.§8!z§) > _loc16_)
                  {
                     _loc6_.§<"L§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§<"L§ += param1.dt;
                     _loc15_ = b2Math.§9!6§(_loc15_,_loc6_.§<"L§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§3$1§)
               {
                  (_loc6_ = this.§,"0§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §?$C§(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:b2Body = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§%$%§.§7##§(param1,this.§<!E§,this.§@O§,this.§>!=§);
         var _loc4_:b2ContactSolver = this.§%$%§;
         _loc2_ = 0;
         while(_loc2_ < this.§!§)
         {
            this.§>$,§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§2#U§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§!§)
            {
               _loc8_ = this.§>$,§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§"#Q§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§!§)
            {
               this.§>$,§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§3$1§)
         {
            if((_loc9_ = this.§,"0§[_loc2_]).§52§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.§8!z§.x;
               _loc11_ = param1.dt * _loc9_.§8!z§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§8!z§.Normalize();
                  _loc9_.§8!z§.x *= b2Settings.b2_maxTranslation * param1.§`"7§;
                  _loc9_.§8!z§.y *= b2Settings.b2_maxTranslation * param1.§`"7§;
               }
               if(param1.dt * _loc9_.m_angularVelocity * (Number(param1.dt * _loc9_.m_angularVelocity)) > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§`"7§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§`"7§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.§8!z§.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.§8!z§.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.§8$0§();
            }
            _loc2_++;
         }
         this.§;#V§(_loc4_.§,6§);
      }
      
      public function §;#V§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§6!x§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§@O§)
         {
            _loc3_ = this.§<!E§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§%"-§)
            {
               §9"C§.§%#h§[_loc5_] = _loc4_.§<"S§[_loc5_].normalImpulse;
               §9"C§.§;"=§[_loc5_] = _loc4_.§<"S§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§6!x§.PostSolve(_loc3_,§9"C§);
            _loc2_++;
         }
      }
      
      public function § ?§(param1:b2Body) : void
      {
         param1.§&!C§ = this.§3$1§;
         var _loc2_:* = this.§3$1§++;
         this.§,"0§[_loc2_] = param1;
      }
      
      public function §0"S§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§@O§++;
         this.§<!E§[_loc2_] = param1;
      }
      
      public function §1!X§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§!§++;
         this.§>$,§[_loc2_] = param1;
      }
   }
}
