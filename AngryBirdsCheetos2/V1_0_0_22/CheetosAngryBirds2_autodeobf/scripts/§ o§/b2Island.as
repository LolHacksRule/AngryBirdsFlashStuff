package § o§
{
   import §"0§.*;
   import §-r§.*;
   import §30§.*;
   import §6!H§.*;
   import §;!#§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §&!J§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §`!Y§;
      
      private var §?t§:b2ContactListener;
      
      private var §2!T§:b2ContactSolver;
      
      b2internal var §4!#§:Vector.<b2Body>;
      
      b2internal var § !E§:Vector.<b2Contact>;
      
      b2internal var §7f§:Vector.<b2Joint>;
      
      b2internal var §`#§:int;
      
      b2internal var §;6§:int;
      
      b2internal var §,!^§:int;
      
      private var §3!A§:int;
      
      b2internal var §,<§:int;
      
      b2internal var §^$§:int;
      
      public function b2Island()
      {
         super();
         this.§4!#§ = new Vector.<b2Body>();
         this.§ !E§ = new Vector.<b2Contact>();
         this.§7f§ = new Vector.<b2Joint>();
      }
      
      public function §#!O§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§3!A§ = param1;
         this.§,<§ = param2;
         this.§^$§ = param3;
         this.§`#§ = 0;
         this.§,!^§ = 0;
         this.§;6§ = 0;
         this.§`!Y§ = param4;
         this.§?t§ = param5;
         this.§2!T§ = param6;
         _loc7_ = this.§4!#§.length;
         while(_loc7_ < param1)
         {
            this.§4!#§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§ !E§.length;
         while(_loc7_ < param2)
         {
            this.§ !E§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§7f§.length;
         while(_loc7_ < param3)
         {
            this.§7f§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §#R§() : void
      {
         this.§`#§ = 0;
         this.§,!^§ = 0;
         this.§;6§ = 0;
      }
      
      public function § §(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§`#§)
         {
            if((_loc6_ = this.§4!#§[_loc4_]).§7!_§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§2!@§.x += param1.§1_§ * (param2.x + _loc6_.§+5§ * _loc6_.§']§.x);
               _loc6_.§2!@§.y += param1.§1_§ * (param2.y + _loc6_.§+5§ * _loc6_.§']§.y);
               _loc6_.m_angularVelocity += param1.§1_§ * _loc6_.§%L§ * _loc6_.§'!$§;
               _loc6_.§2!@§.§[!T§(b2Math.§9!%§(1 - param1.§1_§ * _loc6_.§;K§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§9!%§(1 - param1.§1_§ * _loc6_.§^,§,0,1);
            }
            _loc4_++;
         }
         this.§2!T§.§#!O§(param1,this.§ !E§,this.§,!^§,this.§`!Y§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§2!T§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§;6§)
         {
            (_loc7_ = this.§7f§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§@-§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§;6§)
            {
               (_loc7_ = this.§7f§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§;6§)
         {
            (_loc7_ = this.§7f§[_loc4_]).§8!O§();
            _loc4_++;
         }
         _loc8_.§8!O§();
         _loc4_ = 0;
         while(_loc4_ < this.§`#§)
         {
            if((_loc6_ = this.§4!#§[_loc4_]).§7!_§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§1_§ * _loc6_.§2!@§.x;
               _loc10_ = param1.§1_§ * _loc6_.§2!@§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§2!@§.Normalize();
                  _loc6_.§2!@§.x *= b2Settings.b2_maxTranslation * param1.§<l§;
                  _loc6_.§2!@§.y *= b2Settings.b2_maxTranslation * param1.§<l§;
               }
               _loc11_ = param1.§1_§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§<l§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§<l§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§1_§ * _loc6_.§2!@§.x;
               _loc6_.m_sweep.c.y += param1.§1_§ * _loc6_.§2!@§.y;
               _loc6_.m_sweep.a += param1.§1_§ * _loc6_.m_angularVelocity;
               _loc6_.§&I§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§-!B§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§;6§)
            {
               _loc14_ = (_loc7_ = this.§7f§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§"S§(_loc8_.§4[§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§`#§)
            {
               if((_loc6_ = this.§4!#§[_loc4_]).§7!_§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§0b§ & b2Body.§"!Z§) == 0)
                  {
                     _loc6_.§3!E§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§0b§ & b2Body.§"!Z§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§%!a§(_loc6_.§2!@§,_loc6_.§2!@§) > _loc16_)
                  {
                     _loc6_.§3!E§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§3!E§ += param1.§1_§;
                     _loc15_ = b2Math.§?I§(_loc15_,_loc6_.§3!E§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§`#§)
               {
                  (_loc6_ = this.§4!#§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §6b§(param1:b2TimeStep) : void
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
         this.§2!T§.§#!O§(param1,this.§ !E§,this.§,!^§,this.§`!Y§);
         var _loc4_:b2ContactSolver = this.§2!T§;
         _loc2_ = 0;
         while(_loc2_ < this.§;6§)
         {
            this.§7f§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§@-§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§;6§)
            {
               this.§7f§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§`#§)
         {
            if((_loc6_ = this.§4!#§[_loc2_]).§7!_§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§1_§ * _loc6_.§2!@§.x;
               _loc8_ = param1.§1_§ * _loc6_.§2!@§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§2!@§.Normalize();
                  _loc6_.§2!@§.x *= b2Settings.b2_maxTranslation * param1.§<l§;
                  _loc6_.§2!@§.y *= b2Settings.b2_maxTranslation * param1.§<l§;
               }
               _loc9_ = param1.§1_§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§<l§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§<l§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§1_§ * _loc6_.§2!@§.x;
               _loc6_.m_sweep.c.y += param1.§1_§ * _loc6_.§2!@§.y;
               _loc6_.m_sweep.a += param1.§1_§ * _loc6_.m_angularVelocity;
               _loc6_.§&I§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§-!B§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§;6§)
            {
               _loc12_ = this.§7f§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§"S§(_loc4_.§4[§);
      }
      
      public function §"S§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§?t§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!^§)
         {
            _loc3_ = this.§ !E§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§&n§)
            {
               §&!J§.§"!W§[_loc5_] = _loc4_.§ try§[_loc5_].normalImpulse;
               §&!J§.§]!+§[_loc5_] = _loc4_.§ try§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§?t§.PostSolve(_loc3_,§&!J§);
            _loc2_++;
         }
      }
      
      public function §^!,§(param1:b2Body) : void
      {
         param1.§-_§ = this.§`#§;
         var _loc2_:* = this.§`#§++;
         this.§4!#§[_loc2_] = param1;
      }
      
      public function § null§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§,!^§++;
         this.§ !E§[_loc2_] = param1;
      }
      
      public function §;!`§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§;6§++;
         this.§7f§[_loc2_] = param1;
      }
   }
}
