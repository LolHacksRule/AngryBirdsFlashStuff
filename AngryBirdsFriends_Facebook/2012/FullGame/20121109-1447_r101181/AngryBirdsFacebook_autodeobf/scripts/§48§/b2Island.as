package §48§
{
   import §!D§.*;
   import §#]§.*;
   import §4!!§.*;
   import §55§.*;
   import §8k§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §8@§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §"!7§;
      
      private var §6s§:b2ContactListener;
      
      private var §<8§:b2ContactSolver;
      
      b2internal var §1!l§:Vector.<b2Body>;
      
      b2internal var §2!S§:Vector.<b2Contact>;
      
      b2internal var § try§:Vector.<b2Joint>;
      
      b2internal var §]!M§:int;
      
      b2internal var §0!$§:int;
      
      b2internal var §3M§:int;
      
      private var §7!?§:int;
      
      b2internal var §`E§:int;
      
      b2internal var §4c§:int;
      
      public function b2Island()
      {
         super();
         this.§1!l§ = new Vector.<b2Body>();
         this.§2!S§ = new Vector.<b2Contact>();
         this.§ try§ = new Vector.<b2Joint>();
      }
      
      public function §`!r§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§7!?§ = param1;
         this.§`E§ = param2;
         this.§4c§ = param3;
         this.§]!M§ = 0;
         this.§3M§ = 0;
         this.§0!$§ = 0;
         this.§"!7§ = param4;
         this.§6s§ = param5;
         this.§<8§ = param6;
         _loc7_ = this.§1!l§.length;
         while(_loc7_ < param1)
         {
            this.§1!l§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2!S§.length;
         while(_loc7_ < param2)
         {
            this.§2!S§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§ try§.length;
         while(_loc7_ < param3)
         {
            this.§ try§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §;!R§() : void
      {
         this.§]!M§ = 0;
         this.§3M§ = 0;
         this.§0!$§ = 0;
      }
      
      public function §#!6§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§]!M§)
         {
            if((_loc6_ = this.§1!l§[_loc4_]).§"r§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§="8§.x += param1.§4"?§ * (param2.x + _loc6_.§["A§ * _loc6_.§&e§.x);
               _loc6_.§="8§.y += param1.§4"?§ * (param2.y + _loc6_.§["A§ * _loc6_.§&e§.y);
               _loc6_.m_angularVelocity += param1.§4"?§ * _loc6_.§"g§ * _loc6_.§;!+§;
               _loc6_.§="8§.§8`§(b2Math.§<O§(1 - param1.§4"?§ * _loc6_.§?Q§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§<O§(1 - param1.§4"?§ * _loc6_.§1f§,0,1);
            }
            _loc4_++;
         }
         this.§<8§.§`!r§(param1,this.§2!S§,this.§3M§,this.§"!7§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§<8§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§0!$§)
         {
            (_loc7_ = this.§ try§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§ get§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§0!$§)
            {
               (_loc7_ = this.§ try§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§0!$§)
         {
            (_loc7_ = this.§ try§[_loc4_]).§;%§();
            _loc4_++;
         }
         _loc8_.§;%§();
         _loc4_ = 0;
         while(_loc4_ < this.§]!M§)
         {
            if((_loc6_ = this.§1!l§[_loc4_]).§"r§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§4"?§ * _loc6_.§="8§.x;
               _loc10_ = param1.§4"?§ * _loc6_.§="8§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§="8§.Normalize();
                  _loc6_.§="8§.x *= b2Settings.b2_maxTranslation * param1.§,Q§;
                  _loc6_.§="8§.y *= b2Settings.b2_maxTranslation * param1.§,Q§;
               }
               _loc11_ = param1.§4"?§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§,Q§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§,Q§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§4"?§ * _loc6_.§="8§.x;
               _loc6_.m_sweep.c.y += param1.§4"?§ * _loc6_.§="8§.y;
               _loc6_.m_sweep.a += param1.§4"?§ * _loc6_.m_angularVelocity;
               _loc6_.§,6§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§7!;§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§0!$§)
            {
               _loc14_ = (_loc7_ = this.§ try§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§=!s§(_loc8_.§#!$§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§]!M§)
            {
               if((_loc6_ = this.§1!l§[_loc4_]).§"r§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§`">§ & b2Body.§9!t§) == 0)
                  {
                     _loc6_.§4!@§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§`">§ & b2Body.§9!t§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§+'§(_loc6_.§="8§,_loc6_.§="8§) > _loc16_)
                  {
                     _loc6_.§4!@§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§4!@§ += param1.§4"?§;
                     _loc15_ = b2Math.§]"=§(_loc15_,_loc6_.§4!@§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§]!M§)
               {
                  (_loc6_ = this.§1!l§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §`!!§(param1:b2TimeStep) : void
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
         this.§<8§.§`!r§(param1,this.§2!S§,this.§3M§,this.§"!7§);
         var _loc4_:b2ContactSolver = this.§<8§;
         _loc2_ = 0;
         while(_loc2_ < this.§0!$§)
         {
            this.§ try§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§ get§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§0!$§)
            {
               this.§ try§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§]!M§)
         {
            if((_loc6_ = this.§1!l§[_loc2_]).§"r§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§4"?§ * _loc6_.§="8§.x;
               _loc8_ = param1.§4"?§ * _loc6_.§="8§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§="8§.Normalize();
                  _loc6_.§="8§.x *= b2Settings.b2_maxTranslation * param1.§,Q§;
                  _loc6_.§="8§.y *= b2Settings.b2_maxTranslation * param1.§,Q§;
               }
               _loc9_ = param1.§4"?§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§,Q§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§,Q§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§4"?§ * _loc6_.§="8§.x;
               _loc6_.m_sweep.c.y += param1.§4"?§ * _loc6_.§="8§.y;
               _loc6_.m_sweep.a += param1.§4"?§ * _loc6_.m_angularVelocity;
               _loc6_.§,6§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§7!;§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§0!$§)
            {
               _loc12_ = this.§ try§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§=!s§(_loc4_.§#!$§);
      }
      
      public function §=!s§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§6s§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§3M§)
         {
            _loc3_ = this.§2!S§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§<?§)
            {
               §8@§.§#!&§[_loc5_] = _loc4_.§+V§[_loc5_].normalImpulse;
               §8@§.§2!?§[_loc5_] = _loc4_.§+V§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§6s§.PostSolve(_loc3_,§8@§);
            _loc2_++;
         }
      }
      
      public function §53§(param1:b2Body) : void
      {
         param1.§]!E§ = this.§]!M§;
         var _loc2_:* = this.§]!M§++;
         this.§1!l§[_loc2_] = param1;
      }
      
      public function §1!@§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§3M§++;
         this.§2!S§[_loc2_] = param1;
      }
      
      public function §^!g§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§0!$§++;
         this.§ try§[_loc2_] = param1;
      }
   }
}
