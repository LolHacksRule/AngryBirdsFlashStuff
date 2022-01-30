package §&!M§
{
   import §3!t§.*;
   import §4"$§.*;
   import §6!`§.*;
   import §;"0§.*;
   import §?!D§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §%!m§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §=!a§;
      
      private var §,!D§:b2ContactListener;
      
      private var §4,§:b2ContactSolver;
      
      b2internal var § "-§:Vector.<b2Body>;
      
      b2internal var §8!P§:Vector.<b2Contact>;
      
      b2internal var §&!>§:Vector.<b2Joint>;
      
      b2internal var §,b§:int;
      
      b2internal var §=!m§:int;
      
      b2internal var §`"+§:int;
      
      private var §,!j§:int;
      
      b2internal var §]y§:int;
      
      b2internal var §9u§:int;
      
      public function b2Island()
      {
         super();
         this.§ "-§ = new Vector.<b2Body>();
         this.§8!P§ = new Vector.<b2Contact>();
         this.§&!>§ = new Vector.<b2Joint>();
      }
      
      public function §[z§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§,!j§ = param1;
         this.§]y§ = param2;
         this.§9u§ = param3;
         this.§,b§ = 0;
         this.§`"+§ = 0;
         this.§=!m§ = 0;
         this.§=!a§ = param4;
         this.§,!D§ = param5;
         this.§4,§ = param6;
         _loc7_ = this.§ "-§.length;
         while(_loc7_ < param1)
         {
            this.§ "-§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8!P§.length;
         while(_loc7_ < param2)
         {
            this.§8!P§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&!>§.length;
         while(_loc7_ < param3)
         {
            this.§&!>§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §?!w§() : void
      {
         this.§,b§ = 0;
         this.§`"+§ = 0;
         this.§=!m§ = 0;
      }
      
      public function §6;§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§,b§)
         {
            if((_loc6_ = this.§ "-§[_loc4_]).§6!Q§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§[!m§.x += param1.§!"7§ * (param2.x + _loc6_.§+!O§ * _loc6_.§+4§.x);
               _loc6_.§[!m§.y += param1.§!"7§ * (param2.y + _loc6_.§+!O§ * _loc6_.§+4§.y);
               _loc6_.m_angularVelocity += param1.§!"7§ * _loc6_.§#f§ * _loc6_.§^E§;
               _loc6_.§[!m§.§%!?§(b2Math.§4"?§(1 - param1.§!"7§ * _loc6_.§4!K§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§4"?§(1 - param1.§!"7§ * _loc6_.§["§,0,1);
            }
            _loc4_++;
         }
         this.§4,§.§[z§(param1,this.§8!P§,this.§`"+§,this.§=!a§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§4,§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§=!m§)
         {
            (_loc7_ = this.§&!>§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§",§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§=!m§)
            {
               (_loc7_ = this.§&!>§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§=!m§)
         {
            (_loc7_ = this.§&!>§[_loc4_]).§8[§();
            _loc4_++;
         }
         _loc8_.§8[§();
         _loc4_ = 0;
         while(_loc4_ < this.§,b§)
         {
            if((_loc6_ = this.§ "-§[_loc4_]).§6!Q§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§!"7§ * _loc6_.§[!m§.x;
               _loc10_ = param1.§!"7§ * _loc6_.§[!m§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§[!m§.Normalize();
                  _loc6_.§[!m§.x *= b2Settings.b2_maxTranslation * param1.§7"!§;
                  _loc6_.§[!m§.y *= b2Settings.b2_maxTranslation * param1.§7"!§;
               }
               _loc11_ = param1.§!"7§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§7"!§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§7"!§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§!"7§ * _loc6_.§[!m§.x;
               _loc6_.m_sweep.c.y += param1.§!"7§ * _loc6_.§[!m§.y;
               _loc6_.m_sweep.a += param1.§!"7§ * _loc6_.m_angularVelocity;
               _loc6_.§=!z§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§41§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§=!m§)
            {
               _loc14_ = (_loc7_ = this.§&!>§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§-"0§(_loc8_.§4"+§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§,b§)
            {
               if((_loc6_ = this.§ "-§[_loc4_]).§6!Q§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§[d§ & b2Body.§'!n§) == 0)
                  {
                     _loc6_.§;7§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§[d§ & b2Body.§'!n§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§"!o§(_loc6_.§[!m§,_loc6_.§[!m§) > _loc16_)
                  {
                     _loc6_.§;7§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§;7§ += param1.§!"7§;
                     _loc15_ = b2Math.§#!>§(_loc15_,_loc6_.§;7§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§,b§)
               {
                  (_loc6_ = this.§ "-§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §package§(param1:b2TimeStep) : void
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
         this.§4,§.§[z§(param1,this.§8!P§,this.§`"+§,this.§=!a§);
         var _loc4_:b2ContactSolver = this.§4,§;
         _loc2_ = 0;
         while(_loc2_ < this.§=!m§)
         {
            this.§&!>§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§",§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§=!m§)
            {
               this.§&!>§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,b§)
         {
            if((_loc6_ = this.§ "-§[_loc2_]).§6!Q§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§!"7§ * _loc6_.§[!m§.x;
               _loc8_ = param1.§!"7§ * _loc6_.§[!m§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§[!m§.Normalize();
                  _loc6_.§[!m§.x *= b2Settings.b2_maxTranslation * param1.§7"!§;
                  _loc6_.§[!m§.y *= b2Settings.b2_maxTranslation * param1.§7"!§;
               }
               _loc9_ = param1.§!"7§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§7"!§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§7"!§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§!"7§ * _loc6_.§[!m§.x;
               _loc6_.m_sweep.c.y += param1.§!"7§ * _loc6_.§[!m§.y;
               _loc6_.m_sweep.a += param1.§!"7§ * _loc6_.m_angularVelocity;
               _loc6_.§=!z§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§41§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§=!m§)
            {
               _loc12_ = this.§&!>§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§-"0§(_loc4_.§4"+§);
      }
      
      public function §-"0§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§,!D§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`"+§)
         {
            _loc3_ = this.§8!P§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§,I§)
            {
               §%!m§.§37§[_loc5_] = _loc4_.§[!e§[_loc5_].normalImpulse;
               §%!m§.§3!o§[_loc5_] = _loc4_.§[!e§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§,!D§.PostSolve(_loc3_,§%!m§);
            _loc2_++;
         }
      }
      
      public function §[!p§(param1:b2Body) : void
      {
         param1.§5"7§ = this.§,b§;
         var _loc2_:* = this.§,b§++;
         this.§ "-§[_loc2_] = param1;
      }
      
      public function §]m§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§`"+§++;
         this.§8!P§[_loc2_] = param1;
      }
      
      public function §8!i§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§=!m§++;
         this.§&!>§[_loc2_] = param1;
      }
   }
}
