package §1x§
{
   import §%!#§.*;
   import §+!,§.*;
   import §2",§.*;
   import §9!s§.*;
   import §^>§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §8!J§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §3!L§;
      
      private var §4Y§:b2ContactListener;
      
      private var §>"N§:b2ContactSolver;
      
      b2internal var §<Q§:Vector.<b2Body>;
      
      b2internal var §6"`§:Vector.<b2Contact>;
      
      b2internal var § !3§:Vector.<b2Joint>;
      
      b2internal var §%_§:int;
      
      b2internal var §;"w§:int;
      
      b2internal var § # §:int;
      
      private var §?"?§:int;
      
      b2internal var §"6§:int;
      
      b2internal var §=-§:int;
      
      public function b2Island()
      {
         super();
         this.§<Q§ = new Vector.<b2Body>();
         this.§6"`§ = new Vector.<b2Contact>();
         this.§ !3§ = new Vector.<b2Joint>();
      }
      
      public function §8!s§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§?"?§ = param1;
         this.§"6§ = param2;
         this.§=-§ = param3;
         this.§%_§ = 0;
         this.§ # § = 0;
         this.§;"w§ = 0;
         this.§3!L§ = param4;
         this.§4Y§ = param5;
         this.§>"N§ = param6;
         _loc7_ = this.§<Q§.length;
         while(_loc7_ < param1)
         {
            this.§<Q§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§6"`§.length;
         while(_loc7_ < param2)
         {
            this.§6"`§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§ !3§.length;
         while(_loc7_ < param3)
         {
            this.§ !3§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §4"6§() : void
      {
         this.§%_§ = 0;
         this.§ # § = 0;
         this.§;"w§ = 0;
      }
      
      public function §]"K§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§%_§)
         {
            if((_loc6_ = this.§<Q§[_loc4_]).§ "N§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§5!r§.x += param1.§&"%§ * (_loc6_.§[]§ * param2.x + _loc6_.§@"P§ * _loc6_.§=w§.x);
               _loc6_.§5!r§.y += param1.§&"%§ * (_loc6_.§[]§ * param2.y + _loc6_.§@"P§ * _loc6_.§=w§.y);
               _loc6_.m_angularVelocity += param1.§&"%§ * _loc6_.§%#2§ * _loc6_.§=!!§;
               _loc6_.§5!r§.§ !I§(b2Math.§2"R§(1 - param1.§&"%§ * _loc6_.§[!q§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§2"R§(1 - param1.§&"%§ * _loc6_.§8"@§,0,1);
            }
            _loc4_++;
         }
         this.§>"N§.§8!s§(param1,this.§6"`§,this.§ # §,this.§3!L§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§>"N§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§;"w§)
         {
            (_loc7_ = this.§ !3§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§&!I§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§;"w§)
            {
               (_loc7_ = this.§ !3§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§;"w§)
         {
            (_loc7_ = this.§ !3§[_loc4_]).§else§();
            _loc4_++;
         }
         _loc8_.§else§();
         _loc4_ = 0;
         while(_loc4_ < this.§%_§)
         {
            if((_loc6_ = this.§<Q§[_loc4_]).§ "N§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§&"%§ * _loc6_.§5!r§.x;
               _loc10_ = param1.§&"%§ * _loc6_.§5!r§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§5!r§.Normalize();
                  _loc6_.§5!r§.x *= b2Settings.b2_maxTranslation * param1.§3"S§;
                  _loc6_.§5!r§.y *= b2Settings.b2_maxTranslation * param1.§3"S§;
               }
               _loc11_ = param1.§&"%§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§3"S§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§3"S§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§&"%§ * _loc6_.§5!r§.x;
               _loc6_.m_sweep.c.y += param1.§&"%§ * _loc6_.§5!r§.y;
               _loc6_.m_sweep.a += param1.§&"%§ * _loc6_.m_angularVelocity;
               _loc6_.§"a§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§0!T§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§;"w§)
            {
               _loc14_ = (_loc7_ = this.§ !3§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§]%§(_loc8_.§?"q§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§%_§)
            {
               if((_loc6_ = this.§<Q§[_loc4_]).§ "N§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§7K§ & b2Body.§8w§) == 0)
                  {
                     _loc6_.§`"<§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§7K§ & b2Body.§8w§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§2$§(_loc6_.§5!r§,_loc6_.§5!r§) > _loc16_)
                  {
                     _loc6_.§`"<§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§`"<§ += param1.§&"%§;
                     _loc15_ = b2Math.§9!P§(_loc15_,_loc6_.§`"<§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§%_§)
               {
                  (_loc6_ = this.§<Q§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §2!"§(param1:b2TimeStep) : void
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
         this.§>"N§.§8!s§(param1,this.§6"`§,this.§ # §,this.§3!L§);
         var _loc4_:b2ContactSolver = this.§>"N§;
         _loc2_ = 0;
         while(_loc2_ < this.§;"w§)
         {
            this.§ !3§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§0!T§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§;"w§)
            {
               _loc8_ = this.§ !3§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§&!I§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§;"w§)
            {
               this.§ !3§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%_§)
         {
            if((_loc9_ = this.§<Q§[_loc2_]).§ "N§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§&"%§ * _loc9_.§5!r§.x;
               _loc11_ = param1.§&"%§ * _loc9_.§5!r§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§5!r§.Normalize();
                  _loc9_.§5!r§.x *= b2Settings.b2_maxTranslation * param1.§3"S§;
                  _loc9_.§5!r§.y *= b2Settings.b2_maxTranslation * param1.§3"S§;
               }
               _loc12_ = param1.§&"%§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§3"S§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§3"S§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§&"%§ * _loc9_.§5!r§.x;
               _loc9_.m_sweep.c.y += param1.§&"%§ * _loc9_.§5!r§.y;
               _loc9_.m_sweep.a += param1.§&"%§ * _loc9_.m_angularVelocity;
               _loc9_.§"a§();
            }
            _loc2_++;
         }
         this.§]%§(_loc4_.§?"q§);
      }
      
      public function §]%§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§4Y§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ # §)
         {
            _loc3_ = this.§6"`§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§6!o§)
            {
               §8!J§.§[!f§[_loc5_] = _loc4_.§;Y§[_loc5_].normalImpulse;
               §8!J§.§?!!§[_loc5_] = _loc4_.§;Y§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§4Y§.PostSolve(_loc3_,§8!J§);
            _loc2_++;
         }
      }
      
      public function §=#5§(param1:b2Body) : void
      {
         param1.§8A§ = this.§%_§;
         var _loc2_:* = this.§%_§++;
         this.§<Q§[_loc2_] = param1;
      }
      
      public function §?!-§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§ # §++;
         this.§6"`§[_loc2_] = param1;
      }
      
      public function §,!L§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§;"w§++;
         this.§ !3§[_loc2_] = param1;
      }
   }
}
