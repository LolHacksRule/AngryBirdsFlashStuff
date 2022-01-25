package § y§
{
   import §!u§.*;
   import §"!4§.*;
   import §0b§.*;
   import §54§.*;
   import §;h§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §2F§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §"b§;
      
      private var §-T§:b2ContactListener;
      
      private var §!e§:b2ContactSolver;
      
      b2internal var §"[§:Vector.<b2Body>;
      
      b2internal var §5<§:Vector.<b2Contact>;
      
      b2internal var §]]§:Vector.<b2Joint>;
      
      b2internal var §=z§:int;
      
      b2internal var §"!B§:int;
      
      b2internal var §'!;§:int;
      
      private var §]L§:int;
      
      b2internal var §1@§:int;
      
      b2internal var §^!§:int;
      
      public function b2Island()
      {
         super();
         this.§"[§ = new Vector.<b2Body>();
         this.§5<§ = new Vector.<b2Contact>();
         this.§]]§ = new Vector.<b2Joint>();
      }
      
      public function §#§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§]L§ = param1;
         this.§1@§ = param2;
         this.§^!§ = param3;
         this.§=z§ = 0;
         this.§'!;§ = 0;
         this.§"!B§ = 0;
         this.§"b§ = param4;
         this.§-T§ = param5;
         this.§!e§ = param6;
         _loc7_ = this.§"[§.length;
         while(_loc7_ < param1)
         {
            this.§"[§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§5<§.length;
         while(_loc7_ < param2)
         {
            this.§5<§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§]]§.length;
         while(_loc7_ < param3)
         {
            this.§]]§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §3'§() : void
      {
         this.§=z§ = 0;
         this.§'!;§ = 0;
         this.§"!B§ = 0;
      }
      
      public function §-7§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§=z§)
         {
            if((_loc6_ = this.§"[§[_loc4_]).§`!Q§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§+!W§.x += param1.§9!^§ * (param2.x + _loc6_.§!S§ * _loc6_.§;!B§.x);
               _loc6_.§+!W§.y += param1.§9!^§ * (param2.y + _loc6_.§!S§ * _loc6_.§;!B§.y);
               _loc6_.m_angularVelocity += param1.§9!^§ * _loc6_.§2`§ * _loc6_.§64§;
               _loc6_.§+!W§.§#M§(b2Math.§!!T§(1 - param1.§9!^§ * _loc6_.§,B§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§!!T§(1 - param1.§9!^§ * _loc6_.§1+§,0,1);
            }
            _loc4_++;
         }
         this.§!e§.§#§(param1,this.§5<§,this.§'!;§,this.§"b§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§!e§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§"!B§)
         {
            (_loc7_ = this.§]]§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§#3§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§"!B§)
            {
               (_loc7_ = this.§]]§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§"!B§)
         {
            (_loc7_ = this.§]]§[_loc4_]).§&f§();
            _loc4_++;
         }
         _loc8_.§&f§();
         _loc4_ = 0;
         while(_loc4_ < this.§=z§)
         {
            if((_loc6_ = this.§"[§[_loc4_]).§`!Q§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§9!^§ * _loc6_.§+!W§.x;
               _loc10_ = param1.§9!^§ * _loc6_.§+!W§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§+!W§.Normalize();
                  _loc6_.§+!W§.x *= b2Settings.b2_maxTranslation * param1.§1!2§;
                  _loc6_.§+!W§.y *= b2Settings.b2_maxTranslation * param1.§1!2§;
               }
               _loc11_ = param1.§9!^§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§1!2§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§1!2§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§9!^§ * _loc6_.§+!W§.x;
               _loc6_.m_sweep.c.y += param1.§9!^§ * _loc6_.§+!W§.y;
               _loc6_.m_sweep.a += param1.§9!^§ * _loc6_.m_angularVelocity;
               _loc6_.§-!d§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§?M§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§"!B§)
            {
               _loc14_ = (_loc7_ = this.§]]§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§0?§(_loc8_.§?'§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§=z§)
            {
               if((_loc6_ = this.§"[§[_loc4_]).§`!Q§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§"N§ & b2Body.§0!X§) == 0)
                  {
                     _loc6_.§[&§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§"N§ & b2Body.§0!X§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§]%§(_loc6_.§+!W§,_loc6_.§+!W§) > _loc16_)
                  {
                     _loc6_.§[&§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§[&§ += param1.§9!^§;
                     _loc15_ = b2Math.§13§(_loc15_,_loc6_.§[&§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§=z§)
               {
                  (_loc6_ = this.§"[§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §[4§(param1:b2TimeStep) : void
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
         this.§!e§.§#§(param1,this.§5<§,this.§'!;§,this.§"b§);
         var _loc4_:b2ContactSolver = this.§!e§;
         _loc2_ = 0;
         while(_loc2_ < this.§"!B§)
         {
            this.§]]§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§#3§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§"!B§)
            {
               this.§]]§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§=z§)
         {
            if((_loc6_ = this.§"[§[_loc2_]).§`!Q§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§9!^§ * _loc6_.§+!W§.x;
               _loc8_ = param1.§9!^§ * _loc6_.§+!W§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§+!W§.Normalize();
                  _loc6_.§+!W§.x *= b2Settings.b2_maxTranslation * param1.§1!2§;
                  _loc6_.§+!W§.y *= b2Settings.b2_maxTranslation * param1.§1!2§;
               }
               _loc9_ = param1.§9!^§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§1!2§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§1!2§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§9!^§ * _loc6_.§+!W§.x;
               _loc6_.m_sweep.c.y += param1.§9!^§ * _loc6_.§+!W§.y;
               _loc6_.m_sweep.a += param1.§9!^§ * _loc6_.m_angularVelocity;
               _loc6_.§-!d§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§?M§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§"!B§)
            {
               _loc12_ = this.§]]§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§0?§(_loc4_.§?'§);
      }
      
      public function §0?§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§-T§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§'!;§)
         {
            _loc3_ = this.§5<§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§]!D§)
            {
               §2F§.§]Z§[_loc5_] = _loc4_.§%O§[_loc5_].normalImpulse;
               §2F§.§7x§[_loc5_] = _loc4_.§%O§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§-T§.PostSolve(_loc3_,§2F§);
            _loc2_++;
         }
      }
      
      public function §+r§(param1:b2Body) : void
      {
         param1.§'&§ = this.§=z§;
         var _loc2_:* = this.§=z§++;
         this.§"[§[_loc2_] = param1;
      }
      
      public function §9H§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§'!;§++;
         this.§5<§[_loc2_] = param1;
      }
      
      public function §^c§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§"!B§++;
         this.§]]§[_loc2_] = param1;
      }
   }
}
