package §9t§
{
   import §!!#§.*;
   import §4! §.*;
   import §=!P§.*;
   import §[-§.*;
   import §^q§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §%r§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §8=§;
      
      private var §4!A§:b2ContactListener;
      
      private var §>!F§:b2ContactSolver;
      
      b2internal var §!!7§:Vector.<b2Body>;
      
      b2internal var §6!3§:Vector.<b2Contact>;
      
      b2internal var §6!b§:Vector.<b2Joint>;
      
      b2internal var §&y§:int;
      
      b2internal var §+!U§:int;
      
      b2internal var §2+§:int;
      
      private var §1!^§:int;
      
      b2internal var §`4§:int;
      
      b2internal var §^!D§:int;
      
      public function b2Island()
      {
         super();
         this.§!!7§ = new Vector.<b2Body>();
         this.§6!3§ = new Vector.<b2Contact>();
         this.§6!b§ = new Vector.<b2Joint>();
      }
      
      public function §in §(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§1!^§ = param1;
         this.§`4§ = param2;
         this.§^!D§ = param3;
         this.§&y§ = 0;
         this.§2+§ = 0;
         this.§+!U§ = 0;
         this.§8=§ = param4;
         this.§4!A§ = param5;
         this.§>!F§ = param6;
         _loc7_ = this.§!!7§.length;
         while(_loc7_ < param1)
         {
            this.§!!7§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§6!3§.length;
         while(_loc7_ < param2)
         {
            this.§6!3§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§6!b§.length;
         while(_loc7_ < param3)
         {
            this.§6!b§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §-N§() : void
      {
         this.§&y§ = 0;
         this.§2+§ = 0;
         this.§+!U§ = 0;
      }
      
      public function §#p§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§&y§)
         {
            if((_loc6_ = this.§!!7§[_loc4_]).§9P§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§"!N§.x += param1.§7!H§ * (param2.x + _loc6_.§5Z§ * _loc6_.§]W§.x);
               _loc6_.§"!N§.y += param1.§7!H§ * (param2.y + _loc6_.§5Z§ * _loc6_.§]W§.y);
               _loc6_.m_angularVelocity += param1.§7!H§ * _loc6_.§[S§ * _loc6_.§7!Q§;
               _loc6_.§"!N§.§=v§(b2Math.§in§(1 - param1.§7!H§ * _loc6_.§%J§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§in§(1 - param1.§7!H§ * _loc6_.§5[§,0,1);
            }
            _loc4_++;
         }
         this.§>!F§.§in §(param1,this.§6!3§,this.§2+§,this.§8=§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§>!F§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§+!U§)
         {
            (_loc7_ = this.§6!b§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§;x§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§+!U§)
            {
               (_loc7_ = this.§6!b§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§+!U§)
         {
            (_loc7_ = this.§6!b§[_loc4_]).§]!6§();
            _loc4_++;
         }
         _loc8_.§]!6§();
         _loc4_ = 0;
         while(_loc4_ < this.§&y§)
         {
            if((_loc6_ = this.§!!7§[_loc4_]).§9P§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§7!H§ * _loc6_.§"!N§.x;
               _loc10_ = param1.§7!H§ * _loc6_.§"!N§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§"!N§.Normalize();
                  _loc6_.§"!N§.x *= b2Settings.b2_maxTranslation * param1.§,!_§;
                  _loc6_.§"!N§.y *= b2Settings.b2_maxTranslation * param1.§,!_§;
               }
               _loc11_ = param1.§7!H§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§,!_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§,!_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7!H§ * _loc6_.§"!N§.x;
               _loc6_.m_sweep.c.y += param1.§7!H§ * _loc6_.§"!N§.y;
               _loc6_.m_sweep.a += param1.§7!H§ * _loc6_.m_angularVelocity;
               _loc6_.§`%§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§@w§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§+!U§)
            {
               _loc14_ = (_loc7_ = this.§6!b§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§0!H§(_loc8_.§=_§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§&y§)
            {
               if((_loc6_ = this.§!!7§[_loc4_]).§9P§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§ -§ & b2Body.§`!S§) == 0)
                  {
                     _loc6_.§6!O§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§ -§ & b2Body.§`!S§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§2P§(_loc6_.§"!N§,_loc6_.§"!N§) > _loc16_)
                  {
                     _loc6_.§6!O§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§6!O§ += param1.§7!H§;
                     _loc15_ = b2Math.§33§(_loc15_,_loc6_.§6!O§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§&y§)
               {
                  (_loc6_ = this.§!!7§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §>Z§(param1:b2TimeStep) : void
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
         this.§>!F§.§in §(param1,this.§6!3§,this.§2+§,this.§8=§);
         var _loc4_:b2ContactSolver = this.§>!F§;
         _loc2_ = 0;
         while(_loc2_ < this.§+!U§)
         {
            this.§6!b§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§;x§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§+!U§)
            {
               this.§6!b§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&y§)
         {
            if((_loc6_ = this.§!!7§[_loc2_]).§9P§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§7!H§ * _loc6_.§"!N§.x;
               _loc8_ = param1.§7!H§ * _loc6_.§"!N§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§"!N§.Normalize();
                  _loc6_.§"!N§.x *= b2Settings.b2_maxTranslation * param1.§,!_§;
                  _loc6_.§"!N§.y *= b2Settings.b2_maxTranslation * param1.§,!_§;
               }
               _loc9_ = param1.§7!H§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§,!_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§,!_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7!H§ * _loc6_.§"!N§.x;
               _loc6_.m_sweep.c.y += param1.§7!H§ * _loc6_.§"!N§.y;
               _loc6_.m_sweep.a += param1.§7!H§ * _loc6_.m_angularVelocity;
               _loc6_.§`%§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§@w§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§+!U§)
            {
               _loc12_ = this.§6!b§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§0!H§(_loc4_.§=_§);
      }
      
      public function §0!H§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§4!A§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§2+§)
         {
            _loc3_ = this.§6!3§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§0f§)
            {
               §%r§.§'!P§[_loc5_] = _loc4_.§!!C§[_loc5_].normalImpulse;
               §%r§.§ case§[_loc5_] = _loc4_.§!!C§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§4!A§.PostSolve(_loc3_,§%r§);
            _loc2_++;
         }
      }
      
      public function §9!P§(param1:b2Body) : void
      {
         param1.§%!O§ = this.§&y§;
         var _loc2_:* = this.§&y§++;
         this.§!!7§[_loc2_] = param1;
      }
      
      public function §9T§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§2+§++;
         this.§6!3§[_loc2_] = param1;
      }
      
      public function §=!4§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§+!U§++;
         this.§6!b§[_loc2_] = param1;
      }
   }
}
