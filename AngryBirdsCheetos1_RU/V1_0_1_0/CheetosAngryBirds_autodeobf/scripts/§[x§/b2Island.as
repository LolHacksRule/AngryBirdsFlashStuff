package §[x§
{
   import §%!B§.*;
   import §&!B§.*;
   import §,!8§.*;
   import §43§.*;
   import §^<§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §0,§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §;!S§;
      
      private var §;!G§:b2ContactListener;
      
      private var §5L§:b2ContactSolver;
      
      b2internal var §]!A§:Vector.<b2Body>;
      
      b2internal var §[!O§:Vector.<b2Contact>;
      
      b2internal var §'-§:Vector.<b2Joint>;
      
      b2internal var §]t§:int;
      
      b2internal var §3!7§:int;
      
      b2internal var §[!W§:int;
      
      private var §?!^§:int;
      
      b2internal var §#!6§:int;
      
      b2internal var §+!S§:int;
      
      public function b2Island()
      {
         super();
         this.§]!A§ = new Vector.<b2Body>();
         this.§[!O§ = new Vector.<b2Contact>();
         this.§'-§ = new Vector.<b2Joint>();
      }
      
      public function §8#§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§?!^§ = param1;
         this.§#!6§ = param2;
         this.§+!S§ = param3;
         this.§]t§ = 0;
         this.§[!W§ = 0;
         this.§3!7§ = 0;
         this.§;!S§ = param4;
         this.§;!G§ = param5;
         this.§5L§ = param6;
         _loc7_ = this.§]!A§.length;
         while(_loc7_ < param1)
         {
            this.§]!A§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§[!O§.length;
         while(_loc7_ < param2)
         {
            this.§[!O§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§'-§.length;
         while(_loc7_ < param3)
         {
            this.§'-§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §8!a§() : void
      {
         this.§]t§ = 0;
         this.§[!W§ = 0;
         this.§3!7§ = 0;
      }
      
      public function §>M§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§]t§)
         {
            if((_loc6_ = this.§]!A§[_loc4_]).§=!,§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§%q§.x += param1.§>!!§ * (param2.x + _loc6_.§6I§ * _loc6_.§0!!§.x);
               _loc6_.§%q§.y += param1.§>!!§ * (param2.y + _loc6_.§6I§ * _loc6_.§0!!§.y);
               _loc6_.m_angularVelocity += param1.§>!!§ * _loc6_.§2!L§ * _loc6_.§,!P§;
               _loc6_.§%q§.§7!G§(b2Math.§,W§(1 - param1.§>!!§ * _loc6_.§9!T§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§,W§(1 - param1.§>!!§ * _loc6_.§0z§,0,1);
            }
            _loc4_++;
         }
         this.§5L§.§8#§(param1,this.§[!O§,this.§[!W§,this.§;!S§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§5L§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§3!7§)
         {
            (_loc7_ = this.§'-§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§4Q§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§3!7§)
            {
               (_loc7_ = this.§'-§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§3!7§)
         {
            (_loc7_ = this.§'-§[_loc4_]).§8p§();
            _loc4_++;
         }
         _loc8_.§8p§();
         _loc4_ = 0;
         while(_loc4_ < this.§]t§)
         {
            if((_loc6_ = this.§]!A§[_loc4_]).§=!,§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§>!!§ * _loc6_.§%q§.x;
               _loc10_ = param1.§>!!§ * _loc6_.§%q§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%q§.Normalize();
                  _loc6_.§%q§.x *= b2Settings.b2_maxTranslation * param1.§^!T§;
                  _loc6_.§%q§.y *= b2Settings.b2_maxTranslation * param1.§^!T§;
               }
               _loc11_ = param1.§>!!§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§^!T§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§^!T§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§>!!§ * _loc6_.§%q§.x;
               _loc6_.m_sweep.c.y += param1.§>!!§ * _loc6_.§%q§.y;
               _loc6_.m_sweep.a += param1.§>!!§ * _loc6_.m_angularVelocity;
               _loc6_.§[B§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§9!&§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§3!7§)
            {
               _loc14_ = (_loc7_ = this.§'-§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§,!>§(_loc8_.§6O§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§]t§)
            {
               if((_loc6_ = this.§]!A§[_loc4_]).§=!,§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§`"§ & b2Body.§"§) == 0)
                  {
                     _loc6_.§2<§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§`"§ & b2Body.§"§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§-m§(_loc6_.§%q§,_loc6_.§%q§) > _loc16_)
                  {
                     _loc6_.§2<§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§2<§ += param1.§>!!§;
                     _loc15_ = b2Math.§=#§(_loc15_,_loc6_.§2<§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§]t§)
               {
                  (_loc6_ = this.§]!A§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §0=§(param1:b2TimeStep) : void
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
         this.§5L§.§8#§(param1,this.§[!O§,this.§[!W§,this.§;!S§);
         var _loc4_:b2ContactSolver = this.§5L§;
         _loc2_ = 0;
         while(_loc2_ < this.§3!7§)
         {
            this.§'-§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§4Q§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§3!7§)
            {
               this.§'-§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]t§)
         {
            if((_loc6_ = this.§]!A§[_loc2_]).§=!,§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§>!!§ * _loc6_.§%q§.x;
               _loc8_ = param1.§>!!§ * _loc6_.§%q§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%q§.Normalize();
                  _loc6_.§%q§.x *= b2Settings.b2_maxTranslation * param1.§^!T§;
                  _loc6_.§%q§.y *= b2Settings.b2_maxTranslation * param1.§^!T§;
               }
               _loc9_ = param1.§>!!§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§^!T§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§^!T§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§>!!§ * _loc6_.§%q§.x;
               _loc6_.m_sweep.c.y += param1.§>!!§ * _loc6_.§%q§.y;
               _loc6_.m_sweep.a += param1.§>!!§ * _loc6_.m_angularVelocity;
               _loc6_.§[B§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§9!&§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§3!7§)
            {
               _loc12_ = this.§'-§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§,!>§(_loc4_.§6O§);
      }
      
      public function §,!>§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§;!G§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§[!W§)
         {
            _loc3_ = this.§[!O§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§8!"§)
            {
               §0,§.§0g§[_loc5_] = _loc4_.§^!4§[_loc5_].normalImpulse;
               §0,§.§-#§[_loc5_] = _loc4_.§^!4§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§;!G§.PostSolve(_loc3_,§0,§);
            _loc2_++;
         }
      }
      
      public function §!$§(param1:b2Body) : void
      {
         param1.§0!X§ = this.§]t§;
         var _loc2_:* = this.§]t§++;
         this.§]!A§[_loc2_] = param1;
      }
      
      public function § j§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§[!W§++;
         this.§[!O§[_loc2_] = param1;
      }
      
      public function §+t§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§3!7§++;
         this.§'-§[_loc2_] = param1;
      }
   }
}
