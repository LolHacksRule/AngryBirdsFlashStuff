package §9"5§
{
   import §!!o§.*;
   import §+!0§.*;
   import §,P§.*;
   import §-%§.*;
   import §>!R§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §3a§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §?!R§;
      
      private var §"j§:b2ContactListener;
      
      private var §-A§:b2ContactSolver;
      
      b2internal var §,o§:Vector.<b2Body>;
      
      b2internal var §"!>§:Vector.<b2Contact>;
      
      b2internal var §[!L§:Vector.<b2Joint>;
      
      b2internal var §,L§:int;
      
      b2internal var §8!>§:int;
      
      b2internal var §^O§:int;
      
      private var §;!1§:int;
      
      b2internal var §=y§:int;
      
      b2internal var §`S§:int;
      
      public function b2Island()
      {
         super();
         this.§,o§ = new Vector.<b2Body>();
         this.§"!>§ = new Vector.<b2Contact>();
         this.§[!L§ = new Vector.<b2Joint>();
      }
      
      public function §,n§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§;!1§ = param1;
         this.§=y§ = param2;
         this.§`S§ = param3;
         this.§,L§ = 0;
         this.§^O§ = 0;
         this.§8!>§ = 0;
         this.§?!R§ = param4;
         this.§"j§ = param5;
         this.§-A§ = param6;
         _loc7_ = this.§,o§.length;
         while(_loc7_ < param1)
         {
            this.§,o§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§"!>§.length;
         while(_loc7_ < param2)
         {
            this.§"!>§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§[!L§.length;
         while(_loc7_ < param3)
         {
            this.§[!L§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §9!C§() : void
      {
         this.§,L§ = 0;
         this.§^O§ = 0;
         this.§8!>§ = 0;
      }
      
      public function §]!3§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§,L§)
         {
            if((_loc6_ = this.§,o§[_loc4_]).§4!C§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§]!1§.x += param1.§ !&§ * (_loc6_.§]!+§ * param2.x + _loc6_.§^!u§ * _loc6_.§@p§.x);
               _loc6_.§]!1§.y += param1.§ !&§ * (_loc6_.§]!+§ * param2.y + _loc6_.§^!u§ * _loc6_.§@p§.y);
               _loc6_.m_angularVelocity += param1.§ !&§ * _loc6_.§;!A§ * _loc6_.§%#§;
               _loc6_.§]!1§.§<k§(b2Math.§!P§(1 - param1.§ !&§ * _loc6_.§6V§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§!P§(1 - param1.§ !&§ * _loc6_.§"L§,0,1);
            }
            _loc4_++;
         }
         this.§-A§.§,n§(param1,this.§"!>§,this.§^O§,this.§?!R§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§-A§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§8!>§)
         {
            (_loc7_ = this.§[!L§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§2#§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§8!>§)
            {
               (_loc7_ = this.§[!L§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§8!>§)
         {
            (_loc7_ = this.§[!L§[_loc4_]).§?B§();
            _loc4_++;
         }
         _loc8_.§?B§();
         _loc4_ = 0;
         while(_loc4_ < this.§,L§)
         {
            if((_loc6_ = this.§,o§[_loc4_]).§4!C§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§ !&§ * _loc6_.§]!1§.x;
               _loc10_ = param1.§ !&§ * _loc6_.§]!1§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§]!1§.Normalize();
                  _loc6_.§]!1§.x *= b2Settings.b2_maxTranslation * param1.§ L§;
                  _loc6_.§]!1§.y *= b2Settings.b2_maxTranslation * param1.§ L§;
               }
               _loc11_ = param1.§ !&§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ L§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ L§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§ !&§ * _loc6_.§]!1§.x;
               _loc6_.m_sweep.c.y += param1.§ !&§ * _loc6_.§]!1§.y;
               _loc6_.m_sweep.a += param1.§ !&§ * _loc6_.m_angularVelocity;
               _loc6_.§53§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§4"&§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§8!>§)
            {
               _loc14_ = (_loc7_ = this.§[!L§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§,R§(_loc8_.§ else§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§,L§)
            {
               if((_loc6_ = this.§,o§[_loc4_]).§4!C§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§&!G§ & b2Body.§^!4§) == 0)
                  {
                     _loc6_.§>#§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§&!G§ & b2Body.§^!4§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§;K§(_loc6_.§]!1§,_loc6_.§]!1§) > _loc16_)
                  {
                     _loc6_.§>#§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§>#§ += param1.§ !&§;
                     _loc15_ = b2Math.§2!I§(_loc15_,_loc6_.§>#§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§,L§)
               {
                  (_loc6_ = this.§,o§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §,",§(param1:b2TimeStep) : void
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
         this.§-A§.§,n§(param1,this.§"!>§,this.§^O§,this.§?!R§);
         var _loc4_:b2ContactSolver = this.§-A§;
         _loc2_ = 0;
         while(_loc2_ < this.§8!>§)
         {
            this.§[!L§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§4"&§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§8!>§)
            {
               _loc8_ = this.§[!L§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§2#§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§8!>§)
            {
               this.§[!L§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,L§)
         {
            if((_loc9_ = this.§,o§[_loc2_]).§4!C§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§ !&§ * _loc9_.§]!1§.x;
               _loc11_ = param1.§ !&§ * _loc9_.§]!1§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§]!1§.Normalize();
                  _loc9_.§]!1§.x *= b2Settings.b2_maxTranslation * param1.§ L§;
                  _loc9_.§]!1§.y *= b2Settings.b2_maxTranslation * param1.§ L§;
               }
               _loc12_ = param1.§ !&§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ L§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ L§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§ !&§ * _loc9_.§]!1§.x;
               _loc9_.m_sweep.c.y += param1.§ !&§ * _loc9_.§]!1§.y;
               _loc9_.m_sweep.a += param1.§ !&§ * _loc9_.m_angularVelocity;
               _loc9_.§53§();
            }
            _loc2_++;
         }
         this.§,R§(_loc4_.§ else§);
      }
      
      public function §,R§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§"j§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§^O§)
         {
            _loc3_ = this.§"!>§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§`!6§)
            {
               §3a§.§[d§[_loc5_] = _loc4_.§2l§[_loc5_].normalImpulse;
               §3a§.§5k§[_loc5_] = _loc4_.§2l§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§"j§.PostSolve(_loc3_,§3a§);
            _loc2_++;
         }
      }
      
      public function §5!>§(param1:b2Body) : void
      {
         param1.§]!s§ = this.§,L§;
         var _loc2_:* = this.§,L§++;
         this.§,o§[_loc2_] = param1;
      }
      
      public function §>!9§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§^O§++;
         this.§"!>§[_loc2_] = param1;
      }
      
      public function §6!C§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§8!>§++;
         this.§[!L§[_loc2_] = param1;
      }
   }
}
