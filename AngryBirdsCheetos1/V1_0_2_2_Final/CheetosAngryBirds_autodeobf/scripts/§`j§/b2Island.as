package §`j§
{
   import §0!G§.*;
   import §2!F§.*;
   import §8Y§.*;
   import §9"§.*;
   import §[!8§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §&!T§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §,]§;
      
      private var §!!<§:b2ContactListener;
      
      private var §%P§:b2ContactSolver;
      
      b2internal var §+]§:Vector.<b2Body>;
      
      b2internal var §3h§:Vector.<b2Contact>;
      
      b2internal var §8e§:Vector.<b2Joint>;
      
      b2internal var §,z§:int;
      
      b2internal var §!![§:int;
      
      b2internal var §7M§:int;
      
      private var §3C§:int;
      
      b2internal var §+D§:int;
      
      b2internal var §5=§:int;
      
      public function b2Island()
      {
         super();
         this.§+]§ = new Vector.<b2Body>();
         this.§3h§ = new Vector.<b2Contact>();
         this.§8e§ = new Vector.<b2Joint>();
      }
      
      public function §>b§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§3C§ = param1;
         this.§+D§ = param2;
         this.§5=§ = param3;
         this.§,z§ = 0;
         this.§7M§ = 0;
         this.§!![§ = 0;
         this.§,]§ = param4;
         this.§!!<§ = param5;
         this.§%P§ = param6;
         _loc7_ = this.§+]§.length;
         while(_loc7_ < param1)
         {
            this.§+]§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§3h§.length;
         while(_loc7_ < param2)
         {
            this.§3h§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8e§.length;
         while(_loc7_ < param3)
         {
            this.§8e§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function § C§() : void
      {
         this.§,z§ = 0;
         this.§7M§ = 0;
         this.§!![§ = 0;
      }
      
      public function §9G§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§,z§)
         {
            if((_loc6_ = this.§+]§[_loc4_]).§"!M§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§,?§.x += param1.§7!?§ * (param2.x + _loc6_.§#!D§ * _loc6_.§1!1§.x);
               _loc6_.§,?§.y += param1.§7!?§ * (param2.y + _loc6_.§#!D§ * _loc6_.§1!1§.y);
               _loc6_.m_angularVelocity += param1.§7!?§ * _loc6_.§?8§ * _loc6_.§3!S§;
               _loc6_.§,?§.§@-§(b2Math.§-!1§(1 - param1.§7!?§ * _loc6_.§-Z§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§-!1§(1 - param1.§7!?§ * _loc6_.§3p§,0,1);
            }
            _loc4_++;
         }
         this.§%P§.§>b§(param1,this.§3h§,this.§7M§,this.§,]§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§%P§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§!![§)
         {
            (_loc7_ = this.§8e§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§7!I§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§!![§)
            {
               (_loc7_ = this.§8e§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§!![§)
         {
            (_loc7_ = this.§8e§[_loc4_]).§+!U§();
            _loc4_++;
         }
         _loc8_.§+!U§();
         _loc4_ = 0;
         while(_loc4_ < this.§,z§)
         {
            if((_loc6_ = this.§+]§[_loc4_]).§"!M§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§7!?§ * _loc6_.§,?§.x;
               _loc10_ = param1.§7!?§ * _loc6_.§,?§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§,?§.Normalize();
                  _loc6_.§,?§.x *= b2Settings.b2_maxTranslation * param1.§-#§;
                  _loc6_.§,?§.y *= b2Settings.b2_maxTranslation * param1.§-#§;
               }
               _loc11_ = param1.§7!?§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§-#§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§-#§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7!?§ * _loc6_.§,?§.x;
               _loc6_.m_sweep.c.y += param1.§7!?§ * _loc6_.§,?§.y;
               _loc6_.m_sweep.a += param1.§7!?§ * _loc6_.m_angularVelocity;
               _loc6_.§=!Y§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§>C§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§!![§)
            {
               _loc14_ = (_loc7_ = this.§8e§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§!E§(_loc8_.§<w§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§,z§)
            {
               if((_loc6_ = this.§+]§[_loc4_]).§"!M§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§@x§ & b2Body.§&!?§) == 0)
                  {
                     _loc6_.§&Q§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§@x§ & b2Body.§&!?§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.static(_loc6_.§,?§,_loc6_.§,?§) > _loc16_)
                  {
                     _loc6_.§&Q§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§&Q§ += param1.§7!?§;
                     _loc15_ = b2Math.§[S§(_loc15_,_loc6_.§&Q§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§,z§)
               {
                  (_loc6_ = this.§+]§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §,!%§(param1:b2TimeStep) : void
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
         this.§%P§.§>b§(param1,this.§3h§,this.§7M§,this.§,]§);
         var _loc4_:b2ContactSolver = this.§%P§;
         _loc2_ = 0;
         while(_loc2_ < this.§!![§)
         {
            this.§8e§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§7!I§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§!![§)
            {
               this.§8e§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,z§)
         {
            if((_loc6_ = this.§+]§[_loc2_]).§"!M§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§7!?§ * _loc6_.§,?§.x;
               _loc8_ = param1.§7!?§ * _loc6_.§,?§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§,?§.Normalize();
                  _loc6_.§,?§.x *= b2Settings.b2_maxTranslation * param1.§-#§;
                  _loc6_.§,?§.y *= b2Settings.b2_maxTranslation * param1.§-#§;
               }
               _loc9_ = param1.§7!?§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§-#§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§-#§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§7!?§ * _loc6_.§,?§.x;
               _loc6_.m_sweep.c.y += param1.§7!?§ * _loc6_.§,?§.y;
               _loc6_.m_sweep.a += param1.§7!?§ * _loc6_.m_angularVelocity;
               _loc6_.§=!Y§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§>C§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§!![§)
            {
               _loc12_ = this.§8e§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§!E§(_loc4_.§<w§);
      }
      
      public function §!E§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§!!<§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§7M§)
         {
            _loc3_ = this.§3h§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§`5§)
            {
               §&!T§.§6E§[_loc5_] = _loc4_.§5n§[_loc5_].normalImpulse;
               §&!T§.dynamic[_loc5_] = _loc4_.§5n§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§!!<§.PostSolve(_loc3_,§&!T§);
            _loc2_++;
         }
      }
      
      public function §>6§(param1:b2Body) : void
      {
         param1.§^V§ = this.§,z§;
         var _loc2_:* = this.§,z§++;
         this.§+]§[_loc2_] = param1;
      }
      
      public function §%!=§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§7M§++;
         this.§3h§[_loc2_] = param1;
      }
      
      public function §,q§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§!![§++;
         this.§8e§[_loc2_] = param1;
      }
   }
}
