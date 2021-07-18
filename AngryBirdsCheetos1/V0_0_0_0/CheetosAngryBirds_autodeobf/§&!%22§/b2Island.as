package §&!"§
{
   import § G§.*;
   import §3g§.*;
   import §69§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §7?§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §@!=§;
      
      private var §+4§:b2ContactListener;
      
      private var § !%§:b2ContactSolver;
      
      b2internal var §!D§:Vector.<b2Body>;
      
      b2internal var §"V§:Vector.<b2Contact>;
      
      b2internal var §,D§:Vector.<b2Joint>;
      
      b2internal var §-!N§:int;
      
      b2internal var §>k§:int;
      
      b2internal var §4!D§:int;
      
      private var §`n§:int;
      
      b2internal var §%!P§:int;
      
      b2internal var §#$§:int;
      
      public function b2Island()
      {
         super();
         this.§!D§ = new Vector.<b2Body>();
         this.§"V§ = new Vector.<b2Contact>();
         this.§,D§ = new Vector.<b2Joint>();
      }
      
      public function §1D§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§`n§ = param1;
         this.§%!P§ = param2;
         this.§#$§ = param3;
         this.§-!N§ = 0;
         this.§4!D§ = 0;
         this.§>k§ = 0;
         this.§@!=§ = param4;
         this.§+4§ = param5;
         this.§ !%§ = param6;
         _loc7_ = this.§!D§.length;
         while(_loc7_ < param1)
         {
            this.§!D§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§"V§.length;
         while(_loc7_ < param2)
         {
            this.§"V§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§,D§.length;
         while(_loc7_ < param3)
         {
            this.§,D§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §`Y§() : void
      {
         this.§-!N§ = 0;
         this.§4!D§ = 0;
         this.§>k§ = 0;
      }
      
      public function §;!D§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§-!N§)
         {
            if((_loc6_ = this.§!D§[_loc4_]).§0!$§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§%=§.x += param1.§%G§ * (param2.x + _loc6_.§]m§ * _loc6_.§-U§.x);
               _loc6_.§%=§.y += param1.§%G§ * (param2.y + _loc6_.§]m§ * _loc6_.§-U§.y);
               _loc6_.m_angularVelocity += param1.§%G§ * _loc6_.§?0§ * _loc6_.§&m§;
               _loc6_.§%=§.§?Q§(b2Math.§?!&§(1 - param1.§%G§ * _loc6_.§>!Q§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§?!&§(1 - param1.§%G§ * _loc6_.§0R§,0,1);
            }
            _loc4_++;
         }
         this.§ !%§.§1D§(param1,this.§"V§,this.§4!D§,this.§@!=§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§ !%§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§>k§)
         {
            (_loc7_ = this.§,D§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§-!>§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§>k§)
            {
               (_loc7_ = this.§,D§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§>k§)
         {
            (_loc7_ = this.§,D§[_loc4_]).§>h§();
            _loc4_++;
         }
         _loc8_.§>h§();
         _loc4_ = 0;
         while(_loc4_ < this.§-!N§)
         {
            if((_loc6_ = this.§!D§[_loc4_]).§0!$§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§%G§ * _loc6_.§%=§.x;
               _loc10_ = param1.§%G§ * _loc6_.§%=§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%=§.Normalize();
                  _loc6_.§%=§.x *= b2Settings.b2_maxTranslation * param1.§5!B§;
                  _loc6_.§%=§.y *= b2Settings.b2_maxTranslation * param1.§5!B§;
               }
               _loc11_ = param1.§%G§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§5!B§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§5!B§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§%G§ * _loc6_.§%=§.x;
               _loc6_.m_sweep.c.y += param1.§%G§ * _loc6_.§%=§.y;
               _loc6_.m_sweep.a += param1.§%G§ * _loc6_.m_angularVelocity;
               _loc6_.§,M§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§<W§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§>k§)
            {
               _loc14_ = (_loc7_ = this.§,D§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§1! §(_loc8_.§9,§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§-!N§)
            {
               if((_loc6_ = this.§!D§[_loc4_]).§0!$§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§?z§ & b2Body.§5]§) == 0)
                  {
                     _loc6_.§"!?§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§?z§ & b2Body.§5]§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§9-§(_loc6_.§%=§,_loc6_.§%=§) > _loc16_)
                  {
                     _loc6_.§"!?§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§"!?§ += param1.§%G§;
                     _loc15_ = b2Math.§&f§(_loc15_,_loc6_.§"!?§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§-!N§)
               {
                  (_loc6_ = this.§!D§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §%d§(param1:b2TimeStep) : void
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
         this.§ !%§.§1D§(param1,this.§"V§,this.§4!D§,this.§@!=§);
         var _loc4_:b2ContactSolver = this.§ !%§;
         _loc2_ = 0;
         while(_loc2_ < this.§>k§)
         {
            this.§,D§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§-!>§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§>k§)
            {
               this.§,D§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§-!N§)
         {
            if((_loc6_ = this.§!D§[_loc2_]).§0!$§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§%G§ * _loc6_.§%=§.x;
               _loc8_ = param1.§%G§ * _loc6_.§%=§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%=§.Normalize();
                  _loc6_.§%=§.x *= b2Settings.b2_maxTranslation * param1.§5!B§;
                  _loc6_.§%=§.y *= b2Settings.b2_maxTranslation * param1.§5!B§;
               }
               _loc9_ = param1.§%G§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§5!B§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§5!B§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§%G§ * _loc6_.§%=§.x;
               _loc6_.m_sweep.c.y += param1.§%G§ * _loc6_.§%=§.y;
               _loc6_.m_sweep.a += param1.§%G§ * _loc6_.m_angularVelocity;
               _loc6_.§,M§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§<W§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§>k§)
            {
               _loc12_ = this.§,D§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§1! §(_loc4_.§9,§);
      }
      
      public function §1! §(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§+4§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!D§)
         {
            _loc3_ = this.§"V§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§,!H§)
            {
               §7?§.§!d§[_loc5_] = _loc4_.§=R§[_loc5_].normalImpulse;
               §7?§.§<!Y§[_loc5_] = _loc4_.§=R§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§+4§.PostSolve(_loc3_,§7?§);
            _loc2_++;
         }
      }
      
      public function §3J§(param1:b2Body) : void
      {
         param1.§0+§ = this.§-!N§;
         var _loc2_:* = this.§-!N§++;
         this.§!D§[_loc2_] = param1;
      }
      
      public function §-!R§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§4!D§++;
         this.§"V§[_loc2_] = param1;
      }
      
      public function §-!T§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§>k§++;
         this.§,D§[_loc2_] = param1;
      }
   }
}
