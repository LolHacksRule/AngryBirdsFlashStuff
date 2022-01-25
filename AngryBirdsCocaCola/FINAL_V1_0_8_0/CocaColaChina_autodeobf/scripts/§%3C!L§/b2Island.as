package §<!L§
{
   import §1z§.*;
   import §4!J§.*;
   import §6V§.*;
   import §?F§.*;
   import §[!$§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §;!_§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §]!M§;
      
      private var §+K§:b2ContactListener;
      
      private var §'!+§:b2ContactSolver;
      
      b2internal var §&Z§:Vector.<b2Body>;
      
      b2internal var § !d§:Vector.<b2Contact>;
      
      b2internal var §4!#§:Vector.<b2Joint>;
      
      b2internal var §7D§:int;
      
      b2internal var §@T§:int;
      
      b2internal var §<R§:int;
      
      private var §!L§:int;
      
      b2internal var §&!_§:int;
      
      b2internal var §2'§:int;
      
      public function b2Island()
      {
         super();
         this.§&Z§ = new Vector.<b2Body>();
         this.§ !d§ = new Vector.<b2Contact>();
         this.§4!#§ = new Vector.<b2Joint>();
      }
      
      public function §2#§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§!L§ = param1;
         this.§&!_§ = param2;
         this.§2'§ = param3;
         this.§7D§ = 0;
         this.§<R§ = 0;
         this.§@T§ = 0;
         this.§]!M§ = param4;
         this.§+K§ = param5;
         this.§'!+§ = param6;
         _loc7_ = this.§&Z§.length;
         while(_loc7_ < param1)
         {
            this.§&Z§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§ !d§.length;
         while(_loc7_ < param2)
         {
            this.§ !d§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§4!#§.length;
         while(_loc7_ < param3)
         {
            this.§4!#§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §^!V§() : void
      {
         this.§7D§ = 0;
         this.§<R§ = 0;
         this.§@T§ = 0;
      }
      
      public function §?!7§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§7D§)
         {
            if((_loc6_ = this.§&Z§[_loc4_]).§1k§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§1!K§.x += param1.§?!§ * (param2.x + _loc6_.§;z§ * _loc6_.§ !U§.x);
               _loc6_.§1!K§.y += param1.§?!§ * (param2.y + _loc6_.§;z§ * _loc6_.§ !U§.y);
               _loc6_.m_angularVelocity += param1.§?!§ * _loc6_.§?C§ * _loc6_.§@!A§;
               _loc6_.§1!K§.§`!e§(b2Math.§^7§(1 - param1.§?!§ * _loc6_.§[!D§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§^7§(1 - param1.§?!§ * _loc6_.§>n§,0,1);
            }
            _loc4_++;
         }
         this.§'!+§.§2#§(param1,this.§ !d§,this.§<R§,this.§]!M§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§'!+§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§@T§)
         {
            (_loc7_ = this.§4!#§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§%!J§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§@T§)
            {
               (_loc7_ = this.§4!#§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§@T§)
         {
            (_loc7_ = this.§4!#§[_loc4_]).§5!6§();
            _loc4_++;
         }
         _loc8_.§5!6§();
         _loc4_ = 0;
         while(_loc4_ < this.§7D§)
         {
            if((_loc6_ = this.§&Z§[_loc4_]).§1k§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§?!§ * _loc6_.§1!K§.x;
               _loc10_ = param1.§?!§ * _loc6_.§1!K§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§1!K§.Normalize();
                  _loc6_.§1!K§.x *= b2Settings.b2_maxTranslation * param1.§>=§;
                  _loc6_.§1!K§.y *= b2Settings.b2_maxTranslation * param1.§>=§;
               }
               _loc11_ = param1.§?!§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§>=§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§>=§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?!§ * _loc6_.§1!K§.x;
               _loc6_.m_sweep.c.y += param1.§?!§ * _loc6_.§1!K§.y;
               _loc6_.m_sweep.a += param1.§?!§ * _loc6_.m_angularVelocity;
               _loc6_.§>u§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§%9§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§@T§)
            {
               _loc14_ = (_loc7_ = this.§4!#§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§=T§(_loc8_.§?s§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§7D§)
            {
               if((_loc6_ = this.§&Z§[_loc4_]).§1k§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§0=§ & b2Body.§,8§) == 0)
                  {
                     _loc6_.§2o§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§0=§ & b2Body.§,8§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§9O§(_loc6_.§1!K§,_loc6_.§1!K§) > _loc16_)
                  {
                     _loc6_.§2o§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§2o§ += param1.§?!§;
                     _loc15_ = b2Math.§]!e§(_loc15_,_loc6_.§2o§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§7D§)
               {
                  (_loc6_ = this.§&Z§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §8!$§(param1:b2TimeStep) : void
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
         this.§'!+§.§2#§(param1,this.§ !d§,this.§<R§,this.§]!M§);
         var _loc4_:b2ContactSolver = this.§'!+§;
         _loc2_ = 0;
         while(_loc2_ < this.§@T§)
         {
            this.§4!#§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§%!J§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§@T§)
            {
               this.§4!#§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7D§)
         {
            if((_loc6_ = this.§&Z§[_loc2_]).§1k§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§?!§ * _loc6_.§1!K§.x;
               _loc8_ = param1.§?!§ * _loc6_.§1!K§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§1!K§.Normalize();
                  _loc6_.§1!K§.x *= b2Settings.b2_maxTranslation * param1.§>=§;
                  _loc6_.§1!K§.y *= b2Settings.b2_maxTranslation * param1.§>=§;
               }
               _loc9_ = param1.§?!§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§>=§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§>=§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?!§ * _loc6_.§1!K§.x;
               _loc6_.m_sweep.c.y += param1.§?!§ * _loc6_.§1!K§.y;
               _loc6_.m_sweep.a += param1.§?!§ * _loc6_.m_angularVelocity;
               _loc6_.§>u§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§%9§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§@T§)
            {
               _loc12_ = this.§4!#§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§=T§(_loc4_.§?s§);
      }
      
      public function §=T§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§+K§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§<R§)
         {
            _loc3_ = this.§ !d§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§^Q§)
            {
               §;!_§.§]!P§[_loc5_] = _loc4_.§?!$§[_loc5_].normalImpulse;
               §;!_§.§!!T§[_loc5_] = _loc4_.§?!$§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§+K§.PostSolve(_loc3_,§;!_§);
            _loc2_++;
         }
      }
      
      public function §;!N§(param1:b2Body) : void
      {
         param1.§6!Q§ = this.§7D§;
         var _loc2_:* = this.§7D§++;
         this.§&Z§[_loc2_] = param1;
      }
      
      public function §8!M§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§<R§++;
         this.§ !d§[_loc2_] = param1;
      }
      
      public function §[!X§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§@T§++;
         this.§4!#§[_loc2_] = param1;
      }
   }
}
