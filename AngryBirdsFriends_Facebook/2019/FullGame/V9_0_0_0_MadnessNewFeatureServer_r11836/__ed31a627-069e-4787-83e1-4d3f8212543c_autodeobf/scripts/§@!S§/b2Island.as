package §@!S§
{
   import §1#]§.*;
   import §2_§.*;
   import §4$E§.*;
   import §?!C§.*;
   import §?N§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §<"J§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §^w§;
      
      private var §"!$§:b2ContactListener;
      
      private var §`#c§:b2ContactSolver;
      
      b2internal var §9#@§:Vector.<b2Body>;
      
      b2internal var §8W§:Vector.<b2Contact>;
      
      b2internal var §`!N§:Vector.<b2Joint>;
      
      b2internal var §^#[§:int;
      
      b2internal var §%N§:int;
      
      b2internal var §=!D§:int;
      
      private var §9#q§:int;
      
      b2internal var §#r§:int;
      
      b2internal var § ""§:int;
      
      public function b2Island()
      {
         super();
         this.§9#@§ = new Vector.<b2Body>();
         this.§8W§ = new Vector.<b2Contact>();
         this.§`!N§ = new Vector.<b2Joint>();
      }
      
      public function §1!W§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§9#q§ = param1;
         this.§#r§ = param2;
         this.§ ""§ = param3;
         this.§^#[§ = 0;
         this.§=!D§ = 0;
         this.§%N§ = 0;
         this.§^w§ = param4;
         this.§"!$§ = param5;
         this.§`#c§ = param6;
         _loc7_ = this.§9#@§.length;
         while(_loc7_ < param1)
         {
            this.§9#@§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8W§.length;
         while(_loc7_ < param2)
         {
            this.§8W§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§`!N§.length;
         while(_loc7_ < param3)
         {
            this.§`!N§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §!!<§() : void
      {
         this.§^#[§ = 0;
         this.§=!D§ = 0;
         this.§%N§ = 0;
      }
      
      public function §%!_§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§^#[§)
         {
            if((_loc6_ = this.§9#@§[_loc4_]).§8!p§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§!#p§.x += param1.dt * (_loc6_.§5"J§ * param2.x + _loc6_.§;#>§ * _loc6_.§2!#§.x);
               _loc6_.§!#p§.y += param1.dt * (_loc6_.§5"J§ * param2.y + _loc6_.§;#>§ * _loc6_.§2!#§.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.§!#k§ * _loc6_.§+!C§;
               _loc6_.§!#p§.§?$'§(b2Math.§<!f§(1 - param1.dt * _loc6_.§'$§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§<!f§(1 - param1.dt * _loc6_.§<#W§,0,1);
            }
            _loc4_++;
         }
         this.§`#c§.§1!W§(param1,this.§8W§,this.§=!D§,this.§^w§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§`#c§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§%N§)
         {
            (_loc7_ = this.§`!N§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§%s§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§%N§)
            {
               (_loc7_ = this.§`!N§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§%N§)
         {
            (_loc7_ = this.§`!N§[_loc4_]).§!a§();
            _loc4_++;
         }
         _loc8_.§!a§();
         _loc4_ = 0;
         while(_loc4_ < this.§^#[§)
         {
            if((_loc6_ = this.§9#@§[_loc4_]).§8!p§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.§!#p§.x;
               _loc10_ = param1.dt * _loc6_.§!#p§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§!#p§.Normalize();
                  _loc6_.§!#p§.x *= b2Settings.b2_maxTranslation * param1.§%z§;
                  _loc6_.§!#p§.y *= b2Settings.b2_maxTranslation * param1.§%z§;
               }
               _loc11_ = param1.dt * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%z§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%z§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.§!#p§.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.§!#p§.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§[X§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§""?§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§%N§)
            {
               _loc14_ = (_loc7_ = this.§`!N§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§use§(_loc8_.§2h§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§^#[§)
            {
               if((_loc6_ = this.§9#@§[_loc4_]).§8!p§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§!#z§ & b2Body.§^"d§) == 0)
                  {
                     _loc6_.§>#;§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§!#z§ & b2Body.§^"d§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§@$+§(_loc6_.§!#p§,_loc6_.§!#p§) > _loc16_)
                  {
                     _loc6_.§>#;§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§>#;§ += param1.dt;
                     _loc15_ = b2Math.§!g§(_loc15_,_loc6_.§>#;§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§^#[§)
               {
                  (_loc6_ = this.§9#@§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §2!S§(param1:b2TimeStep) : void
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
         this.§`#c§.§1!W§(param1,this.§8W§,this.§=!D§,this.§^w§);
         var _loc4_:b2ContactSolver = this.§`#c§;
         _loc2_ = 0;
         while(_loc2_ < this.§%N§)
         {
            this.§`!N§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§""?§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§%N§)
            {
               _loc8_ = this.§`!N§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§%s§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§%N§)
            {
               this.§`!N§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§^#[§)
         {
            if((_loc9_ = this.§9#@§[_loc2_]).§8!p§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.§!#p§.x;
               _loc11_ = param1.dt * _loc9_.§!#p§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§!#p§.Normalize();
                  _loc9_.§!#p§.x *= b2Settings.b2_maxTranslation * param1.§%z§;
                  _loc9_.§!#p§.y *= b2Settings.b2_maxTranslation * param1.§%z§;
               }
               _loc12_ = param1.dt * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§%z§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§%z§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.§!#p§.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.§!#p§.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.§[X§();
            }
            _loc2_++;
         }
         this.§use§(_loc4_.§2h§);
      }
      
      public function §use§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§"!$§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!D§)
         {
            _loc3_ = this.§8W§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§^! §)
            {
               §<"J§.§9$E§[_loc5_] = _loc4_.§3#Q§[_loc5_].normalImpulse;
               §<"J§.§^#S§[_loc5_] = _loc4_.§3#Q§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§"!$§.PostSolve(_loc3_,§<"J§);
            _loc2_++;
         }
      }
      
      public function §2!2§(param1:b2Body) : void
      {
         param1.§!%§ = this.§^#[§;
         var _loc2_:* = this.§^#[§++;
         this.§9#@§[_loc2_] = param1;
      }
      
      public function §'!W§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§=!D§++;
         this.§8W§[_loc2_] = param1;
      }
      
      public function §>!`§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§%N§++;
         this.§`!N§[_loc2_] = param1;
      }
   }
}
