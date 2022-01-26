package §?!0§
{
   import §0!2§.*;
   import §3g§.*;
   import §69§.*;
   import §;]§.*;
   import §=E§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §#$§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §@!=§;
      
      private var §-!T§:b2ContactListener;
      
      private var § t§:b2ContactSolver;
      
      b2internal var §+4§:Vector.<b2Body>;
      
      b2internal var §!D§:Vector.<b2Contact>;
      
      b2internal var §"V§:Vector.<b2Joint>;
      
      b2internal var § R§:int;
      
      b2internal var §4!D§:int;
      
      b2internal var §3!1§:int;
      
      private var §,D§:int;
      
      b2internal var §`n§:int;
      
      b2internal var §%!P§:int;
      
      public function b2Island()
      {
         super();
         this.§+4§ = new Vector.<b2Body>();
         this.§!D§ = new Vector.<b2Contact>();
         this.§"V§ = new Vector.<b2Joint>();
      }
      
      public function §1D§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§,D§ = param1;
         this.§`n§ = param2;
         this.§%!P§ = param3;
         this.§ R§ = 0;
         this.§3!1§ = 0;
         this.§4!D§ = 0;
         this.§@!=§ = param4;
         this.§-!T§ = param5;
         this.§ t§ = param6;
         _loc7_ = this.§+4§.length;
         while(_loc7_ < param1)
         {
            this.§+4§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§!D§.length;
         while(_loc7_ < param2)
         {
            this.§!D§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§"V§.length;
         while(_loc7_ < param3)
         {
            this.§"V§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §5!&§() : void
      {
         this.§ R§ = 0;
         this.§3!1§ = 0;
         this.§4!D§ = 0;
      }
      
      public function §]!7§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§ R§)
         {
            if((_loc6_ = this.§+4§[_loc4_]).§0!$§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§0+§.x += param1.§7?§ * (param2.x + _loc6_.§9g§ * _loc6_.§%=§.x);
               _loc6_.§0+§.y += param1.§7?§ * (param2.y + _loc6_.§9g§ * _loc6_.§%=§.y);
               _loc6_.m_angularVelocity += param1.§7?§ * _loc6_.§8>§ * _loc6_.§-U§;
               _loc6_.§0+§.§5y§(b2Math.§2a§(1 - param1.§7?§ * _loc6_.§@!N§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§2a§(1 - param1.§7?§ * _loc6_.§>!Q§,0,1);
            }
            _loc4_++;
         }
         this.§ t§.§1D§(param1,this.§!D§,this.§3!1§,this.§@!=§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§ t§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§4!D§)
         {
            (_loc7_ = this.§"V§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#b§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§4!D§)
            {
               (_loc7_ = this.§"V§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§4!D§)
         {
            (_loc7_ = this.§"V§[_loc4_]).§>h§();
            _loc4_++;
         }
         _loc8_.§>h§();
         _loc4_ = 0;
         while(_loc4_ < this.§ R§)
         {
            if((_loc6_ = this.§+4§[_loc4_]).§0!$§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§7?§ * _loc6_.§0+§.x;
               _loc10_ = param1.§7?§ * _loc6_.§0+§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§0+§.Normalize();
                  _loc6_.§0+§.x *= b2Settings.b2_maxTranslation * param1.§%G§;
                  _loc6_.§0+§.y *= b2Settings.b2_maxTranslation * param1.§%G§;
               }
               _loc11_ = param1.§7?§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%G§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%G§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7?§ * _loc6_.§0+§.x;
               _loc6_.m_sweep.c.y += param1.§7?§ * _loc6_.§0+§.y;
               _loc6_.m_sweep.a += param1.§7?§ * _loc6_.m_angularVelocity;
               _loc6_.§-D§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§-!>§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§4!D§)
            {
               _loc14_ = (_loc7_ = this.§"V§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§!!K§(_loc8_.§9,§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§ R§)
            {
               if((_loc6_ = this.§+4§[_loc4_]).§0!$§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§?z§ & b2Body.§9t§) == 0)
                  {
                     _loc6_.§0R§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§?z§ & b2Body.§9t§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§"!&§(_loc6_.§0+§,_loc6_.§0+§) > _loc16_)
                  {
                     _loc6_.§0R§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§0R§ += param1.§7?§;
                     _loc15_ = b2Math.§2!8§(_loc15_,_loc6_.§0R§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§ R§)
               {
                  (_loc6_ = this.§+4§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §;w§(param1:b2TimeStep) : void
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
         this.§ t§.§1D§(param1,this.§!D§,this.§3!1§,this.§@!=§);
         var _loc4_:b2ContactSolver = this.§ t§;
         _loc2_ = 0;
         while(_loc2_ < this.§4!D§)
         {
            this.§"V§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§#b§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§4!D§)
            {
               this.§"V§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§ R§)
         {
            if((_loc6_ = this.§+4§[_loc2_]).§0!$§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§7?§ * _loc6_.§0+§.x;
               _loc8_ = param1.§7?§ * _loc6_.§0+§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§0+§.Normalize();
                  _loc6_.§0+§.x *= b2Settings.b2_maxTranslation * param1.§%G§;
                  _loc6_.§0+§.y *= b2Settings.b2_maxTranslation * param1.§%G§;
               }
               _loc9_ = param1.§7?§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%G§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%G§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7?§ * _loc6_.§0+§.x;
               _loc6_.m_sweep.c.y += param1.§7?§ * _loc6_.§0+§.y;
               _loc6_.m_sweep.a += param1.§7?§ * _loc6_.m_angularVelocity;
               _loc6_.§-D§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§-!>§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§4!D§)
            {
               _loc12_ = this.§"V§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§!!K§(_loc4_.§9,§);
      }
      
      public function §!!K§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§-!T§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§3!1§)
         {
            _loc3_ = this.§!D§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§,!H§)
            {
               §#$§.§>3§[_loc5_] = _loc4_.§=R§[_loc5_].normalImpulse;
               §#$§.§!d§[_loc5_] = _loc4_.§=R§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§-!T§.PostSolve(_loc3_,§#$§);
            _loc2_++;
         }
      }
      
      public function §2!9§(param1:b2Body) : void
      {
         param1.§4!T§ = this.§ R§;
         var _loc2_:* = this.§ R§++;
         this.§+4§[_loc2_] = param1;
      }
      
      public function §1! §(param1:b2Contact) : void
      {
         var _loc2_:* = this.§3!1§++;
         this.§!D§[_loc2_] = param1;
      }
      
      public function §-!R§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§4!D§++;
         this.§"V§[_loc2_] = param1;
      }
   }
}
