package §'#K§
{
   import §!"b§.*;
   import §&$+§.*;
   import §,#E§.*;
   import §-#F§.*;
   import §04§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §-`§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §>!-§;
      
      private var §#!f§:b2ContactListener;
      
      private var §&!Z§:b2ContactSolver;
      
      b2internal var §&H§:Vector.<b2Body>;
      
      b2internal var §5"A§:Vector.<b2Contact>;
      
      b2internal var §1P§:Vector.<b2Joint>;
      
      b2internal var §?"q§:int;
      
      b2internal var §##3§:int;
      
      b2internal var §%"@§:int;
      
      private var §=`§:int;
      
      b2internal var §,!b§:int;
      
      b2internal var §<!U§:int;
      
      public function b2Island()
      {
         super();
         this.§&H§ = new Vector.<b2Body>();
         this.§5"A§ = new Vector.<b2Contact>();
         this.§1P§ = new Vector.<b2Joint>();
      }
      
      public function §&N§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§=`§ = param1;
         this.§,!b§ = param2;
         this.§<!U§ = param3;
         this.§?"q§ = 0;
         this.§%"@§ = 0;
         this.§##3§ = 0;
         this.§>!-§ = param4;
         this.§#!f§ = param5;
         this.§&!Z§ = param6;
         _loc7_ = this.§&H§.length;
         while(_loc7_ < param1)
         {
            this.§&H§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§5"A§.length;
         while(_loc7_ < param2)
         {
            this.§5"A§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§1P§.length;
         while(_loc7_ < param3)
         {
            this.§1P§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §+#"§() : void
      {
         this.§?"q§ = 0;
         this.§%"@§ = 0;
         this.§##3§ = 0;
      }
      
      public function §"!p§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§?"q§)
         {
            if((_loc6_ = this.§&H§[_loc4_]).§<!e§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§^%§.x += param1.dt * (_loc6_.§-q§ * param2.x + _loc6_.§<A§ * _loc6_.§@q§.x);
               _loc6_.§^%§.y += param1.dt * (_loc6_.§-q§ * param2.y + _loc6_.§<A§ * _loc6_.§@q§.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.§2k§ * _loc6_.§5#o§;
               _loc6_.§^%§.§#"I§(b2Math.§!!7§(1 - param1.dt * _loc6_.§##O§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§!!7§(1 - param1.dt * _loc6_.§="%§,0,1);
            }
            _loc4_++;
         }
         this.§&!Z§.§&N§(param1,this.§5"A§,this.§%"@§,this.§>!-§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§&!Z§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§##3§)
         {
            (_loc7_ = this.§1P§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§<!-§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§##3§)
            {
               (_loc7_ = this.§1P§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§##3§)
         {
            (_loc7_ = this.§1P§[_loc4_]).§"'§();
            _loc4_++;
         }
         _loc8_.§"'§();
         _loc4_ = 0;
         while(_loc4_ < this.§?"q§)
         {
            if((_loc6_ = this.§&H§[_loc4_]).§<!e§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.§^%§.x;
               _loc10_ = param1.dt * _loc6_.§^%§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§^%§.Normalize();
                  _loc6_.§^%§.x *= b2Settings.b2_maxTranslation * param1.§7!X§;
                  _loc6_.§^%§.y *= b2Settings.b2_maxTranslation * param1.§7!X§;
               }
               _loc11_ = param1.dt * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§7!X§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§7!X§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.§^%§.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.§^%§.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§&" §();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§2"Y§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§##3§)
            {
               _loc14_ = (_loc7_ = this.§1P§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§<s§(_loc8_.§`!&§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§?"q§)
            {
               if((_loc6_ = this.§&H§[_loc4_]).§<!e§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§'#h§ & b2Body.§"$0§) == 0)
                  {
                     _loc6_.§-#0§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§'#h§ & b2Body.§"$0§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§!"+§(_loc6_.§^%§,_loc6_.§^%§) > _loc16_)
                  {
                     _loc6_.§-#0§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§-#0§ += param1.dt;
                     _loc15_ = b2Math.§!#K§(_loc15_,_loc6_.§-#0§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§?"q§)
               {
                  (_loc6_ = this.§&H§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §+$7§(param1:b2TimeStep) : void
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
         this.§&!Z§.§&N§(param1,this.§5"A§,this.§%"@§,this.§>!-§);
         var _loc4_:b2ContactSolver = this.§&!Z§;
         _loc2_ = 0;
         while(_loc2_ < this.§##3§)
         {
            this.§1P§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§2"Y§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§##3§)
            {
               _loc8_ = this.§1P§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§<!-§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§##3§)
            {
               this.§1P§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§?"q§)
         {
            if((_loc9_ = this.§&H§[_loc2_]).§<!e§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.§^%§.x;
               _loc11_ = param1.dt * _loc9_.§^%§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§^%§.Normalize();
                  _loc9_.§^%§.x *= b2Settings.b2_maxTranslation * param1.§7!X§;
                  _loc9_.§^%§.y *= b2Settings.b2_maxTranslation * param1.§7!X§;
               }
               _loc12_ = param1.dt * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§7!X§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§7!X§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.§^%§.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.§^%§.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.§&" §();
            }
            _loc2_++;
         }
         this.§<s§(_loc4_.§`!&§);
      }
      
      public function §<s§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§#!f§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%"@§)
         {
            _loc3_ = this.§5"A§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§""§)
            {
               §-`§.§=#"§[_loc5_] = _loc4_.§^!>§[_loc5_].normalImpulse;
               §-`§.§;$D§[_loc5_] = _loc4_.§^!>§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§#!f§.PostSolve(_loc3_,§-`§);
            _loc2_++;
         }
      }
      
      public function §;"t§(param1:b2Body) : void
      {
         param1.§^!l§ = this.§?"q§;
         var _loc2_:* = this.§?"q§++;
         this.§&H§[_loc2_] = param1;
      }
      
      public function §^#G§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§%"@§++;
         this.§5"A§[_loc2_] = param1;
      }
      
      public function §'"q§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§##3§++;
         this.§1P§[_loc2_] = param1;
      }
   }
}
