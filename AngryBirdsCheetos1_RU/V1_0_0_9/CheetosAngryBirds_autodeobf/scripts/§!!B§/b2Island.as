package §!!B§
{
   import §!H§.*;
   import §3!&§.*;
   import §7S§.*;
   import §;0§.*;
   import §;U§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §3!!§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §;!Q§;
      
      private var §1N§:b2ContactListener;
      
      private var §%F§:b2ContactSolver;
      
      b2internal var § c§:Vector.<b2Body>;
      
      b2internal var §6<§:Vector.<b2Contact>;
      
      b2internal var §catch§:Vector.<b2Joint>;
      
      b2internal var §@!5§:int;
      
      b2internal var §!J§:int;
      
      b2internal var §=!B§:int;
      
      private var §]%§:int;
      
      b2internal var §3!P§:int;
      
      b2internal var §`!^§:int;
      
      public function b2Island()
      {
         super();
         this.§ c§ = new Vector.<b2Body>();
         this.§6<§ = new Vector.<b2Contact>();
         this.§catch§ = new Vector.<b2Joint>();
      }
      
      public function §`!0§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§]%§ = param1;
         this.§3!P§ = param2;
         this.§`!^§ = param3;
         this.§@!5§ = 0;
         this.§=!B§ = 0;
         this.§!J§ = 0;
         this.§;!Q§ = param4;
         this.§1N§ = param5;
         this.§%F§ = param6;
         _loc7_ = this.§ c§.length;
         while(_loc7_ < param1)
         {
            this.§ c§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§6<§.length;
         while(_loc7_ < param2)
         {
            this.§6<§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§catch§.length;
         while(_loc7_ < param3)
         {
            this.§catch§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §"R§() : void
      {
         this.§@!5§ = 0;
         this.§=!B§ = 0;
         this.§!J§ = 0;
      }
      
      public function §??§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§@!5§)
         {
            if((_loc6_ = this.§ c§[_loc4_]).§9o§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§7W§.x += param1.§1-§ * (param2.x + _loc6_.§?t§ * _loc6_.§;"§.x);
               _loc6_.§7W§.y += param1.§1-§ * (param2.y + _loc6_.§?t§ * _loc6_.§;"§.y);
               _loc6_.m_angularVelocity += param1.§1-§ * _loc6_.§<!V§ * _loc6_.§;!9§;
               _loc6_.§7W§.§2!'§(b2Math.§1!<§(1 - param1.§1-§ * _loc6_.§1!6§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§1!<§(1 - param1.§1-§ * _loc6_.§ ! §,0,1);
            }
            _loc4_++;
         }
         this.§%F§.§`!0§(param1,this.§6<§,this.§=!B§,this.§;!Q§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§%F§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§!J§)
         {
            (_loc7_ = this.§catch§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§&U§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§!J§)
            {
               (_loc7_ = this.§catch§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§!J§)
         {
            (_loc7_ = this.§catch§[_loc4_]).§,T§();
            _loc4_++;
         }
         _loc8_.§,T§();
         _loc4_ = 0;
         while(_loc4_ < this.§@!5§)
         {
            if((_loc6_ = this.§ c§[_loc4_]).§9o§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§1-§ * _loc6_.§7W§.x;
               _loc10_ = param1.§1-§ * _loc6_.§7W§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§7W§.Normalize();
                  _loc6_.§7W§.x *= b2Settings.b2_maxTranslation * param1.§5Q§;
                  _loc6_.§7W§.y *= b2Settings.b2_maxTranslation * param1.§5Q§;
               }
               _loc11_ = param1.§1-§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§5Q§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§5Q§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§1-§ * _loc6_.§7W§.x;
               _loc6_.m_sweep.c.y += param1.§1-§ * _loc6_.§7W§.y;
               _loc6_.m_sweep.a += param1.§1-§ * _loc6_.m_angularVelocity;
               _loc6_.§9!8§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§ J§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§!J§)
            {
               _loc14_ = (_loc7_ = this.§catch§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§38§(_loc8_.§7T§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§@!5§)
            {
               if((_loc6_ = this.§ c§[_loc4_]).§9o§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§5!9§ & b2Body.§0t§) == 0)
                  {
                     _loc6_.§=!Y§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§5!9§ & b2Body.§0t§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§9h§(_loc6_.§7W§,_loc6_.§7W§) > _loc16_)
                  {
                     _loc6_.§=!Y§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§=!Y§ += param1.§1-§;
                     _loc15_ = b2Math.§,B§(_loc15_,_loc6_.§=!Y§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§@!5§)
               {
                  (_loc6_ = this.§ c§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §`b§(param1:b2TimeStep) : void
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
         this.§%F§.§`!0§(param1,this.§6<§,this.§=!B§,this.§;!Q§);
         var _loc4_:b2ContactSolver = this.§%F§;
         _loc2_ = 0;
         while(_loc2_ < this.§!J§)
         {
            this.§catch§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§&U§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§!J§)
            {
               this.§catch§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§@!5§)
         {
            if((_loc6_ = this.§ c§[_loc2_]).§9o§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§1-§ * _loc6_.§7W§.x;
               _loc8_ = param1.§1-§ * _loc6_.§7W§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§7W§.Normalize();
                  _loc6_.§7W§.x *= b2Settings.b2_maxTranslation * param1.§5Q§;
                  _loc6_.§7W§.y *= b2Settings.b2_maxTranslation * param1.§5Q§;
               }
               _loc9_ = param1.§1-§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§5Q§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§5Q§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§1-§ * _loc6_.§7W§.x;
               _loc6_.m_sweep.c.y += param1.§1-§ * _loc6_.§7W§.y;
               _loc6_.m_sweep.a += param1.§1-§ * _loc6_.m_angularVelocity;
               _loc6_.§9!8§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§ J§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§!J§)
            {
               _loc12_ = this.§catch§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§38§(_loc4_.§7T§);
      }
      
      public function §38§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§1N§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§=!B§)
         {
            _loc3_ = this.§6<§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§]!@§)
            {
               §3!!§.§#c§[_loc5_] = _loc4_.§"Q§[_loc5_].normalImpulse;
               §3!!§.§57§[_loc5_] = _loc4_.§"Q§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§1N§.PostSolve(_loc3_,§3!!§);
            _loc2_++;
         }
      }
      
      public function §%K§(param1:b2Body) : void
      {
         param1.§<J§ = this.§@!5§;
         var _loc2_:* = this.§@!5§++;
         this.§ c§[_loc2_] = param1;
      }
      
      public function §6-§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§=!B§++;
         this.§6<§[_loc2_] = param1;
      }
      
      public function §9t§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§!J§++;
         this.§catch§[_loc2_] = param1;
      }
   }
}
