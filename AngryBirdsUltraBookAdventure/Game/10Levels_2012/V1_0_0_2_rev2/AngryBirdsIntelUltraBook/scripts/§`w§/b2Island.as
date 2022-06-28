package §`w§
{
   import §7!u§.*;
   import §72§.*;
   import §9!"§.*;
   import §>H§.*;
   import §break§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §&4§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §`o§;
      
      private var §,#§:b2ContactListener;
      
      private var §;!V§:b2ContactSolver;
      
      b2internal var §-!l§:Vector.<b2Body>;
      
      b2internal var §+G§:Vector.<b2Contact>;
      
      b2internal var §-!0§:Vector.<b2Joint>;
      
      b2internal var §[r§:int;
      
      b2internal var §&!o§:int;
      
      b2internal var §0V§:int;
      
      private var §"!,§:int;
      
      b2internal var §?!m§:int;
      
      b2internal var § !r§:int;
      
      public function b2Island()
      {
         super();
         this.§-!l§ = new Vector.<b2Body>();
         this.§+G§ = new Vector.<b2Contact>();
         this.§-!0§ = new Vector.<b2Joint>();
      }
      
      public function §%%§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§"!,§ = param1;
         this.§?!m§ = param2;
         this.§ !r§ = param3;
         this.§[r§ = 0;
         this.§0V§ = 0;
         this.§&!o§ = 0;
         this.§`o§ = param4;
         this.§,#§ = param5;
         this.§;!V§ = param6;
         _loc7_ = this.§-!l§.length;
         while(_loc7_ < param1)
         {
            this.§-!l§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§+G§.length;
         while(_loc7_ < param2)
         {
            this.§+G§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§-!0§.length;
         while(_loc7_ < param3)
         {
            this.§-!0§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §49§() : void
      {
         this.§[r§ = 0;
         this.§0V§ = 0;
         this.§&!o§ = 0;
      }
      
      public function §3!=§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§[r§)
         {
            if((_loc6_ = this.§-!l§[_loc4_]).§2!r§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§^O§.x += param1.§^Z§ * (param2.x + _loc6_.§7n§ * _loc6_.§84§.x);
               _loc6_.§^O§.y += param1.§^Z§ * (param2.y + _loc6_.§7n§ * _loc6_.§84§.y);
               _loc6_.m_angularVelocity += param1.§^Z§ * _loc6_.§;5§ * _loc6_.§3!T§;
               _loc6_.§^O§.§^$§(b2Math.§]#§(1 - param1.§^Z§ * _loc6_.§[s§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§]#§(1 - param1.§^Z§ * _loc6_.§[!j§,0,1);
            }
            _loc4_++;
         }
         this.§;!V§.§%%§(param1,this.§+G§,this.§0V§,this.§`o§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§;!V§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§&!o§)
         {
            (_loc7_ = this.§-!0§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§>!,§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§&!o§)
            {
               (_loc7_ = this.§-!0§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§&!o§)
         {
            (_loc7_ = this.§-!0§[_loc4_]).§^y§();
            _loc4_++;
         }
         _loc8_.§^y§();
         _loc4_ = 0;
         while(_loc4_ < this.§[r§)
         {
            if((_loc6_ = this.§-!l§[_loc4_]).§2!r§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§^Z§ * _loc6_.§^O§.x;
               _loc10_ = param1.§^Z§ * _loc6_.§^O§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§^O§.Normalize();
                  _loc6_.§^O§.x *= b2Settings.b2_maxTranslation * param1.§[!%§;
                  _loc6_.§^O§.y *= b2Settings.b2_maxTranslation * param1.§[!%§;
               }
               _loc11_ = param1.§^Z§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§[!%§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§[!%§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§^Z§ * _loc6_.§^O§.x;
               _loc6_.m_sweep.c.y += param1.§^Z§ * _loc6_.§^O§.y;
               _loc6_.m_sweep.a += param1.§^Z§ * _loc6_.m_angularVelocity;
               _loc6_.§0!y§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§44§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§&!o§)
            {
               _loc14_ = (_loc7_ = this.§-!0§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§<%§(_loc8_.§`!§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§[r§)
            {
               if((_loc6_ = this.§-!l§[_loc4_]).§2!r§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§;!R§ & b2Body.§?!O§) == 0)
                  {
                     _loc6_.§@!#§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§;!R§ & b2Body.§?!O§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§'l§(_loc6_.§^O§,_loc6_.§^O§) > _loc16_)
                  {
                     _loc6_.§@!#§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§@!#§ += param1.§^Z§;
                     _loc15_ = b2Math.§>M§(_loc15_,_loc6_.§@!#§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§[r§)
               {
                  (_loc6_ = this.§-!l§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §0P§(param1:b2TimeStep) : void
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
         this.§;!V§.§%%§(param1,this.§+G§,this.§0V§,this.§`o§);
         var _loc4_:b2ContactSolver = this.§;!V§;
         _loc2_ = 0;
         while(_loc2_ < this.§&!o§)
         {
            this.§-!0§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§>!,§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§&!o§)
            {
               this.§-!0§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[r§)
         {
            if((_loc6_ = this.§-!l§[_loc2_]).§2!r§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§^Z§ * _loc6_.§^O§.x;
               _loc8_ = param1.§^Z§ * _loc6_.§^O§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§^O§.Normalize();
                  _loc6_.§^O§.x *= b2Settings.b2_maxTranslation * param1.§[!%§;
                  _loc6_.§^O§.y *= b2Settings.b2_maxTranslation * param1.§[!%§;
               }
               _loc9_ = param1.§^Z§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§[!%§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§[!%§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§^Z§ * _loc6_.§^O§.x;
               _loc6_.m_sweep.c.y += param1.§^Z§ * _loc6_.§^O§.y;
               _loc6_.m_sweep.a += param1.§^Z§ * _loc6_.m_angularVelocity;
               _loc6_.§0!y§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§44§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§&!o§)
            {
               _loc12_ = this.§-!0§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§<%§(_loc4_.§`!§);
      }
      
      public function §<%§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§,#§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§0V§)
         {
            _loc3_ = this.§+G§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§'0§)
            {
               §&4§.§[!D§[_loc5_] = _loc4_.§;!K§[_loc5_].normalImpulse;
               §&4§.§0W§[_loc5_] = _loc4_.§;!K§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§,#§.PostSolve(_loc3_,§&4§);
            _loc2_++;
         }
      }
      
      public function §'!=§(param1:b2Body) : void
      {
         param1.§>!c§ = this.§[r§;
         var _loc2_:* = this.§[r§++;
         this.§-!l§[_loc2_] = param1;
      }
      
      public function §<!V§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§0V§++;
         this.§+G§[_loc2_] = param1;
      }
      
      public function §>!l§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§&!o§++;
         this.§-!0§[_loc2_] = param1;
      }
   }
}
