package §0!?§
{
   import §0!=§.*;
   import §0^§.*;
   import §8<§.*;
   import §;!U§.*;
   import §`!E§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §8N§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §;B§;
      
      private var §,!1§:b2ContactListener;
      
      private var §6;§:b2ContactSolver;
      
      b2internal var §^!3§:Vector.<b2Body>;
      
      b2internal var §,!!§:Vector.<b2Contact>;
      
      b2internal var §=!S§:Vector.<b2Joint>;
      
      b2internal var §8a§:int;
      
      b2internal var §^;§:int;
      
      b2internal var §6!I§:int;
      
      private var §>]§:int;
      
      b2internal var §^!R§:int;
      
      b2internal var §6!=§:int;
      
      public function b2Island()
      {
         super();
         this.§^!3§ = new Vector.<b2Body>();
         this.§,!!§ = new Vector.<b2Contact>();
         this.§=!S§ = new Vector.<b2Joint>();
      }
      
      public function §8!6§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§>]§ = param1;
         this.§^!R§ = param2;
         this.§6!=§ = param3;
         this.§8a§ = 0;
         this.§6!I§ = 0;
         this.§^;§ = 0;
         this.§;B§ = param4;
         this.§,!1§ = param5;
         this.§6;§ = param6;
         _loc7_ = this.§^!3§.length;
         while(_loc7_ < param1)
         {
            this.§^!3§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§,!!§.length;
         while(_loc7_ < param2)
         {
            this.§,!!§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§=!S§.length;
         while(_loc7_ < param3)
         {
            this.§=!S§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §@!U§() : void
      {
         this.§8a§ = 0;
         this.§6!I§ = 0;
         this.§^;§ = 0;
      }
      
      public function §@L§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§8a§)
         {
            if((_loc6_ = this.§^!3§[_loc4_]).§7"§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§#P§.x += param1.§<G§ * (param2.x + _loc6_.§!q§ * _loc6_.§%!3§.x);
               _loc6_.§#P§.y += param1.§<G§ * (param2.y + _loc6_.§!q§ * _loc6_.§%!3§.y);
               _loc6_.m_angularVelocity += param1.§<G§ * _loc6_.§&!Y§ * _loc6_.§24§;
               _loc6_.§#P§.§>!W§(b2Math.§%%§(1 - param1.§<G§ * _loc6_.§4h§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§%%§(1 - param1.§<G§ * _loc6_.§@u§,0,1);
            }
            _loc4_++;
         }
         this.§6;§.§8!6§(param1,this.§,!!§,this.§6!I§,this.§;B§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§6;§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§^;§)
         {
            (_loc7_ = this.§=!S§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§-!A§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§^;§)
            {
               (_loc7_ = this.§=!S§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§^;§)
         {
            (_loc7_ = this.§=!S§[_loc4_]).§;H§();
            _loc4_++;
         }
         _loc8_.§;H§();
         _loc4_ = 0;
         while(_loc4_ < this.§8a§)
         {
            if((_loc6_ = this.§^!3§[_loc4_]).§7"§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§<G§ * _loc6_.§#P§.x;
               _loc10_ = param1.§<G§ * _loc6_.§#P§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§#P§.Normalize();
                  _loc6_.§#P§.x *= b2Settings.b2_maxTranslation * param1.§[!F§;
                  _loc6_.§#P§.y *= b2Settings.b2_maxTranslation * param1.§[!F§;
               }
               _loc11_ = param1.§<G§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§[!F§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§[!F§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§<G§ * _loc6_.§#P§.x;
               _loc6_.m_sweep.c.y += param1.§<G§ * _loc6_.§#P§.y;
               _loc6_.m_sweep.a += param1.§<G§ * _loc6_.m_angularVelocity;
               _loc6_.§ L§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§[S§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§^;§)
            {
               _loc14_ = (_loc7_ = this.§=!S§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§`@§(_loc8_.§'!T§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§8a§)
            {
               if((_loc6_ = this.§^!3§[_loc4_]).§7"§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§&W§ & b2Body.§%!O§) == 0)
                  {
                     _loc6_.§<D§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§&W§ & b2Body.§%!O§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§3!2§(_loc6_.§#P§,_loc6_.§#P§) > _loc16_)
                  {
                     _loc6_.§<D§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§<D§ += param1.§<G§;
                     _loc15_ = b2Math.§]!F§(_loc15_,_loc6_.§<D§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§8a§)
               {
                  (_loc6_ = this.§^!3§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §%!e§(param1:b2TimeStep) : void
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
         this.§6;§.§8!6§(param1,this.§,!!§,this.§6!I§,this.§;B§);
         var _loc4_:b2ContactSolver = this.§6;§;
         _loc2_ = 0;
         while(_loc2_ < this.§^;§)
         {
            this.§=!S§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§-!A§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§^;§)
            {
               this.§=!S§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§8a§)
         {
            if((_loc6_ = this.§^!3§[_loc2_]).§7"§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§<G§ * _loc6_.§#P§.x;
               _loc8_ = param1.§<G§ * _loc6_.§#P§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§#P§.Normalize();
                  _loc6_.§#P§.x *= b2Settings.b2_maxTranslation * param1.§[!F§;
                  _loc6_.§#P§.y *= b2Settings.b2_maxTranslation * param1.§[!F§;
               }
               _loc9_ = param1.§<G§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§[!F§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§[!F§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§<G§ * _loc6_.§#P§.x;
               _loc6_.m_sweep.c.y += param1.§<G§ * _loc6_.§#P§.y;
               _loc6_.m_sweep.a += param1.§<G§ * _loc6_.m_angularVelocity;
               _loc6_.§ L§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§[S§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§^;§)
            {
               _loc12_ = this.§=!S§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§`@§(_loc4_.§'!T§);
      }
      
      public function §`@§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§,!1§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§6!I§)
         {
            _loc3_ = this.§,!!§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§[=§)
            {
               §8N§.§"@§[_loc5_] = _loc4_.§#!8§[_loc5_].normalImpulse;
               §8N§.§+!9§[_loc5_] = _loc4_.§#!8§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§,!1§.PostSolve(_loc3_,§8N§);
            _loc2_++;
         }
      }
      
      public function §45§(param1:b2Body) : void
      {
         param1.§?8§ = this.§8a§;
         var _loc2_:* = this.§8a§++;
         this.§^!3§[_loc2_] = param1;
      }
      
      public function §2n§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§6!I§++;
         this.§,!!§[_loc2_] = param1;
      }
      
      public function §%J§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§^;§++;
         this.§=!S§[_loc2_] = param1;
      }
   }
}
