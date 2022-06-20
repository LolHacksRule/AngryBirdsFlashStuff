package § !k§
{
   import §!"8§.*;
   import §&g§.*;
   import §6!d§.*;
   import §]!l§.*;
   import §in§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §""4§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §0!k§;
      
      private var §=t§:b2ContactListener;
      
      private var §implements§:b2ContactSolver;
      
      b2internal var §"2§:Vector.<b2Body>;
      
      b2internal var §!-§:Vector.<b2Contact>;
      
      b2internal var §;&§:Vector.<b2Joint>;
      
      b2internal var §1m§:int;
      
      b2internal var §-!v§:int;
      
      b2internal var §[d§:int;
      
      private var §@!7§:int;
      
      b2internal var §0Y§:int;
      
      b2internal var §]3§:int;
      
      public function b2Island()
      {
         super();
         this.§"2§ = new Vector.<b2Body>();
         this.§!-§ = new Vector.<b2Contact>();
         this.§;&§ = new Vector.<b2Joint>();
      }
      
      public function §&!j§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§@!7§ = param1;
         this.§0Y§ = param2;
         this.§]3§ = param3;
         this.§1m§ = 0;
         this.§[d§ = 0;
         this.§-!v§ = 0;
         this.§0!k§ = param4;
         this.§=t§ = param5;
         this.§implements§ = param6;
         _loc7_ = this.§"2§.length;
         while(_loc7_ < param1)
         {
            this.§"2§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§!-§.length;
         while(_loc7_ < param2)
         {
            this.§!-§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§;&§.length;
         while(_loc7_ < param3)
         {
            this.§;&§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §?!+§() : void
      {
         this.§1m§ = 0;
         this.§[d§ = 0;
         this.§-!v§ = 0;
      }
      
      public function §?q§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§1m§)
         {
            if((_loc6_ = this.§"2§[_loc4_]).§9!j§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§>! §.x += param1.§7!x§ * (param2.x + _loc6_.§^1§ * _loc6_.§6!N§.x);
               _loc6_.§>! §.y += param1.§7!x§ * (param2.y + _loc6_.§^1§ * _loc6_.§6!N§.y);
               _loc6_.m_angularVelocity += param1.§7!x§ * _loc6_.§?y§ * _loc6_.§5d§;
               _loc6_.§>! §.§@T§(b2Math.§`!L§(1 - param1.§7!x§ * _loc6_.§`!g§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§`!L§(1 - param1.§7!x§ * _loc6_.§>!q§,0,1);
            }
            _loc4_++;
         }
         this.§implements§.§&!j§(param1,this.§!-§,this.§[d§,this.§0!k§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§implements§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§-!v§)
         {
            (_loc7_ = this.§;&§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§super§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§-!v§)
            {
               (_loc7_ = this.§;&§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§-!v§)
         {
            (_loc7_ = this.§;&§[_loc4_]).§80§();
            _loc4_++;
         }
         _loc8_.§80§();
         _loc4_ = 0;
         while(_loc4_ < this.§1m§)
         {
            if((_loc6_ = this.§"2§[_loc4_]).§9!j§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§7!x§ * _loc6_.§>! §.x;
               _loc10_ = param1.§7!x§ * _loc6_.§>! §.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§>! §.Normalize();
                  _loc6_.§>! §.x *= b2Settings.b2_maxTranslation * param1.§>!s§;
                  _loc6_.§>! §.y *= b2Settings.b2_maxTranslation * param1.§>!s§;
               }
               _loc11_ = param1.§7!x§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§>!s§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§>!s§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7!x§ * _loc6_.§>! §.x;
               _loc6_.m_sweep.c.y += param1.§7!x§ * _loc6_.§>! §.y;
               _loc6_.m_sweep.a += param1.§7!x§ * _loc6_.m_angularVelocity;
               _loc6_.§?=§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§"B§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§-!v§)
            {
               _loc14_ = (_loc7_ = this.§;&§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§]!G§(_loc8_.§1,§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§1m§)
            {
               if((_loc6_ = this.§"2§[_loc4_]).§9!j§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§%$§ & b2Body.§[! §) == 0)
                  {
                     _loc6_.§-!6§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§%$§ & b2Body.§[! §) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§5q§(_loc6_.§>! §,_loc6_.§>! §) > _loc16_)
                  {
                     _loc6_.§-!6§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§-!6§ += param1.§7!x§;
                     _loc15_ = b2Math.§6J§(_loc15_,_loc6_.§-!6§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§1m§)
               {
                  (_loc6_ = this.§"2§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §-!&§(param1:b2TimeStep) : void
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
         this.§implements§.§&!j§(param1,this.§!-§,this.§[d§,this.§0!k§);
         var _loc4_:b2ContactSolver = this.§implements§;
         _loc2_ = 0;
         while(_loc2_ < this.§-!v§)
         {
            this.§;&§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§super§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§-!v§)
            {
               this.§;&§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§1m§)
         {
            if((_loc6_ = this.§"2§[_loc2_]).§9!j§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§7!x§ * _loc6_.§>! §.x;
               _loc8_ = param1.§7!x§ * _loc6_.§>! §.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§>! §.Normalize();
                  _loc6_.§>! §.x *= b2Settings.b2_maxTranslation * param1.§>!s§;
                  _loc6_.§>! §.y *= b2Settings.b2_maxTranslation * param1.§>!s§;
               }
               _loc9_ = param1.§7!x§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§>!s§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§>!s§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7!x§ * _loc6_.§>! §.x;
               _loc6_.m_sweep.c.y += param1.§7!x§ * _loc6_.§>! §.y;
               _loc6_.m_sweep.a += param1.§7!x§ * _loc6_.m_angularVelocity;
               _loc6_.§?=§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§"B§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§-!v§)
            {
               _loc12_ = this.§;&§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§]!G§(_loc4_.§1,§);
      }
      
      public function §]!G§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§=t§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§[d§)
         {
            _loc3_ = this.§!-§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§?""§)
            {
               §""4§.§-!#§[_loc5_] = _loc4_.§&";§[_loc5_].normalImpulse;
               §""4§.§6_§[_loc5_] = _loc4_.§&";§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§=t§.PostSolve(_loc3_,§""4§);
            _loc2_++;
         }
      }
      
      public function §;";§(param1:b2Body) : void
      {
         param1.§;]§ = this.§1m§;
         var _loc2_:* = this.§1m§++;
         this.§"2§[_loc2_] = param1;
      }
      
      public function §=!Z§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§[d§++;
         this.§!-§[_loc2_] = param1;
      }
      
      public function §#!;§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§-!v§++;
         this.§;&§[_loc2_] = param1;
      }
   }
}
