package §=#n§
{
   import §0H§.*;
   import §0m§.*;
   import §3"q§.*;
   import §;"R§.*;
   import §@!O§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §3"#§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §1#;§;
      
      private var §"!Q§:b2ContactListener;
      
      private var §=Z§:b2ContactSolver;
      
      b2internal var §+"#§:Vector.<b2Body>;
      
      b2internal var §0!>§:Vector.<b2Contact>;
      
      b2internal var §9"y§:Vector.<b2Joint>;
      
      b2internal var §0$"§:int;
      
      b2internal var § $9§:int;
      
      b2internal var §;"q§:int;
      
      private var §4"V§:int;
      
      b2internal var §##3§:int;
      
      b2internal var §@#V§:int;
      
      public function b2Island()
      {
         super();
         this.§+"#§ = new Vector.<b2Body>();
         this.§0!>§ = new Vector.<b2Contact>();
         this.§9"y§ = new Vector.<b2Joint>();
      }
      
      public function §1[§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§4"V§ = param1;
         this.§##3§ = param2;
         this.§@#V§ = param3;
         this.§0$"§ = 0;
         this.§;"q§ = 0;
         this.§ $9§ = 0;
         this.§1#;§ = param4;
         this.§"!Q§ = param5;
         this.§=Z§ = param6;
         _loc7_ = this.§+"#§.length;
         while(_loc7_ < param1)
         {
            this.§+"#§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§0!>§.length;
         while(_loc7_ < param2)
         {
            this.§0!>§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§9"y§.length;
         while(_loc7_ < param3)
         {
            this.§9"y§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §%#t§() : void
      {
         this.§0$"§ = 0;
         this.§;"q§ = 0;
         this.§ $9§ = 0;
      }
      
      public function §+"F§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc4_ = 0;
         while(_loc4_ < this.§0$"§)
         {
            if((_loc6_ = this.§+"#§[_loc4_]).§ "c§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§'"_§.x += param1.dt * (_loc6_.§5!+§ * param2.x + _loc6_.§7"P§ * _loc6_.§&3§.x);
               _loc6_.§'"_§.y += param1.dt * (_loc6_.§5!+§ * param2.y + _loc6_.§7"P§ * _loc6_.§&3§.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.§3!F§ * _loc6_.§4",§;
               _loc6_.§'"_§.§2#<§(b2Math.§9#V§(1 - param1.dt * _loc6_.§5$1§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§9#V§(1 - param1.dt * _loc6_.§%#K§,0,1);
            }
            _loc4_++;
         }
         this.§=Z§.§1[§(param1,this.§0!>§,this.§;"q§,this.§1#;§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§=Z§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§ $9§)
         {
            this.§9"y§[_loc4_].InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§=W§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§ $9§)
            {
               this.§9"y§[_loc5_].SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§ $9§)
         {
            this.§9"y§[_loc4_].§<z§();
            _loc4_++;
         }
         _loc8_.§<z§();
         _loc4_ = 0;
         while(_loc4_ < this.§0$"§)
         {
            if((_loc6_ = this.§+"#§[_loc4_]).§ "c§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.§'"_§.x;
               _loc10_ = param1.dt * _loc6_.§'"_§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§'"_§.Normalize();
                  _loc6_.§'"_§.x *= b2Settings.b2_maxTranslation * param1.§^$+§;
                  _loc6_.§'"_§.y *= b2Settings.b2_maxTranslation * param1.§^$+§;
               }
               if(param1.dt * _loc6_.m_angularVelocity * (Number(param1.dt * _loc6_.m_angularVelocity)) > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§^$+§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§^$+§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.§'"_§.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.§'"_§.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§#!i§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§ "^§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§ $9§)
            {
               _loc14_ = this.§9"y§[_loc5_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§=#X§(_loc8_.§0#e§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§0$"§)
            {
               if((_loc6_ = this.§+"#§[_loc4_]).§ "c§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§#!<§ & b2Body.§#U§) == 0)
                  {
                     _loc6_.§7"D§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§#!<§ & b2Body.§#U§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§&#3§(_loc6_.§'"_§,_loc6_.§'"_§) > _loc16_)
                  {
                     _loc6_.§7"D§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§7"D§ += param1.dt;
                     _loc15_ = b2Math.§1a§(_loc15_,_loc6_.§7"D§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§0$"§)
               {
                  (_loc6_ = this.§+"#§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function § !J§(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:b2Body = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§=Z§.§1[§(param1,this.§0!>§,this.§;"q§,this.§1#;§);
         var _loc4_:b2ContactSolver = this.§=Z§;
         _loc2_ = 0;
         while(_loc2_ < this.§ $9§)
         {
            this.§9"y§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         var _loc5_:Number = 0.75;
         _loc2_ = 0;
         while(_loc2_ < param1.§ "^§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(_loc5_);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§ $9§)
            {
               _loc8_ = this.§9"y§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§=W§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§ $9§)
            {
               this.§9"y§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§0$"§)
         {
            if((_loc9_ = this.§+"#§[_loc2_]).§ "c§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.§'"_§.x;
               _loc11_ = param1.dt * _loc9_.§'"_§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§'"_§.Normalize();
                  _loc9_.§'"_§.x *= b2Settings.b2_maxTranslation * param1.§^$+§;
                  _loc9_.§'"_§.y *= b2Settings.b2_maxTranslation * param1.§^$+§;
               }
               if(param1.dt * _loc9_.m_angularVelocity * (Number(param1.dt * _loc9_.m_angularVelocity)) > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§^$+§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§^$+§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.§'"_§.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.§'"_§.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.§#!i§();
            }
            _loc2_++;
         }
         this.§=#X§(_loc4_.§0#e§);
      }
      
      public function §=#X§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§"!Q§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§;"q§)
         {
            _loc3_ = this.§0!>§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§&4§)
            {
               §3"#§.§,^§[_loc5_] = _loc4_.§>""§[_loc5_].normalImpulse;
               §3"#§.§0"7§[_loc5_] = _loc4_.§>""§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§"!Q§.PostSolve(_loc3_,§3"#§);
            _loc2_++;
         }
      }
      
      public function §@n§(param1:b2Body) : void
      {
         param1.§<#o§ = this.§0$"§;
         var _loc2_:* = this.§0$"§++;
         this.§+"#§[_loc2_] = param1;
      }
      
      public function §8"?§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§;"q§++;
         this.§0!>§[_loc2_] = param1;
      }
      
      public function §`#M§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§ $9§++;
         this.§9"y§[_loc2_] = param1;
      }
   }
}
