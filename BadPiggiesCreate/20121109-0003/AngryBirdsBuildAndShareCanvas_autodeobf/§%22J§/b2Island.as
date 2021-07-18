package §"J§
{
   import §%4§.*;
   import §,!0§.*;
   import §;!e§.*;
   import §<!a§.*;
   import §<";§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §6!v§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §9"6§;
      
      private var §1!4§:b2ContactListener;
      
      private var §else§:b2ContactSolver;
      
      b2internal var §`i§:Vector.<b2Body>;
      
      b2internal var §8U§:Vector.<b2Contact>;
      
      b2internal var §#r§:Vector.<b2Joint>;
      
      b2internal var §7!h§:int;
      
      b2internal var §'#§:int;
      
      b2internal var §4A§:int;
      
      private var §9!§:int;
      
      b2internal var §+!%§:int;
      
      b2internal var §1"=§:int;
      
      public function b2Island()
      {
         super();
         this.§`i§ = new Vector.<b2Body>();
         this.§8U§ = new Vector.<b2Contact>();
         this.§#r§ = new Vector.<b2Joint>();
      }
      
      public function §&!§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§9!§ = param1;
         this.§+!%§ = param2;
         this.§1"=§ = param3;
         this.§7!h§ = 0;
         this.§4A§ = 0;
         this.§'#§ = 0;
         this.§9"6§ = param4;
         this.§1!4§ = param5;
         this.§else§ = param6;
         _loc7_ = this.§`i§.length;
         while(_loc7_ < param1)
         {
            this.§`i§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8U§.length;
         while(_loc7_ < param2)
         {
            this.§8U§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§#r§.length;
         while(_loc7_ < param3)
         {
            this.§#r§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §"F§() : void
      {
         this.§7!h§ = 0;
         this.§4A§ = 0;
         this.§'#§ = 0;
      }
      
      public function §1!R§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§7!h§)
         {
            if((_loc6_ = this.§`i§[_loc4_]).§;!F§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§]!g§.x += param1.§@[§ * (param2.x + _loc6_.§@"!§ * _loc6_.§1!3§.x);
               _loc6_.§]!g§.y += param1.§@[§ * (param2.y + _loc6_.§@"!§ * _loc6_.§1!3§.y);
               _loc6_.m_angularVelocity += param1.§@[§ * _loc6_.§=!N§ * _loc6_.§ !v§;
               _loc6_.§]!g§.§7H§(b2Math.§5" §(1 - param1.§@[§ * _loc6_.§6!D§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§5" §(1 - param1.§@[§ * _loc6_.§4">§,0,1);
            }
            _loc4_++;
         }
         this.§else§.§&!§(param1,this.§8U§,this.§4A§,this.§9"6§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§else§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§'#§)
         {
            (_loc7_ = this.§#r§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§ k§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§'#§)
            {
               (_loc7_ = this.§#r§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§'#§)
         {
            (_loc7_ = this.§#r§[_loc4_]).§?"<§();
            _loc4_++;
         }
         _loc8_.§?"<§();
         _loc4_ = 0;
         while(_loc4_ < this.§7!h§)
         {
            if((_loc6_ = this.§`i§[_loc4_]).§;!F§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§@[§ * _loc6_.§]!g§.x;
               _loc10_ = param1.§@[§ * _loc6_.§]!g§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§]!g§.Normalize();
                  _loc6_.§]!g§.x *= b2Settings.b2_maxTranslation * param1.§!!K§;
                  _loc6_.§]!g§.y *= b2Settings.b2_maxTranslation * param1.§!!K§;
               }
               _loc11_ = param1.§@[§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§!!K§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§!!K§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§@[§ * _loc6_.§]!g§.x;
               _loc6_.m_sweep.c.y += param1.§@[§ * _loc6_.§]!g§.y;
               _loc6_.m_sweep.a += param1.§@[§ * _loc6_.m_angularVelocity;
               _loc6_.§=&§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§["4§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§'#§)
            {
               _loc14_ = (_loc7_ = this.§#r§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§,!3§(_loc8_.§+!P§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§7!h§)
            {
               if((_loc6_ = this.§`i§[_loc4_]).§;!F§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§]!+§ & b2Body.§ f§) == 0)
                  {
                     _loc6_.§>"'§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§]!+§ & b2Body.§ f§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§8n§(_loc6_.§]!g§,_loc6_.§]!g§) > _loc16_)
                  {
                     _loc6_.§>"'§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§>"'§ += param1.§@[§;
                     _loc15_ = b2Math.§+"1§(_loc15_,_loc6_.§>"'§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§7!h§)
               {
                  (_loc6_ = this.§`i§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §4f§(param1:b2TimeStep) : void
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
         this.§else§.§&!§(param1,this.§8U§,this.§4A§,this.§9"6§);
         var _loc4_:b2ContactSolver = this.§else§;
         _loc2_ = 0;
         while(_loc2_ < this.§'#§)
         {
            this.§#r§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§ k§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§'#§)
            {
               this.§#r§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§7!h§)
         {
            if((_loc6_ = this.§`i§[_loc2_]).§;!F§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§@[§ * _loc6_.§]!g§.x;
               _loc8_ = param1.§@[§ * _loc6_.§]!g§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§]!g§.Normalize();
                  _loc6_.§]!g§.x *= b2Settings.b2_maxTranslation * param1.§!!K§;
                  _loc6_.§]!g§.y *= b2Settings.b2_maxTranslation * param1.§!!K§;
               }
               _loc9_ = param1.§@[§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§!!K§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§!!K§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§@[§ * _loc6_.§]!g§.x;
               _loc6_.m_sweep.c.y += param1.§@[§ * _loc6_.§]!g§.y;
               _loc6_.m_sweep.a += param1.§@[§ * _loc6_.m_angularVelocity;
               _loc6_.§=&§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§["4§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§'#§)
            {
               _loc12_ = this.§#r§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§,!3§(_loc4_.§+!P§);
      }
      
      public function §,!3§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§1!4§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§4A§)
         {
            _loc3_ = this.§8U§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§,!%§)
            {
               §6!v§.§;[§[_loc5_] = _loc4_.§5!1§[_loc5_].normalImpulse;
               §6!v§.§[!B§[_loc5_] = _loc4_.§5!1§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§1!4§.PostSolve(_loc3_,§6!v§);
            _loc2_++;
         }
      }
      
      public function §@!O§(param1:b2Body) : void
      {
         param1.§;!4§ = this.§7!h§;
         var _loc2_:* = this.§7!h§++;
         this.§`i§[_loc2_] = param1;
      }
      
      public function §2&§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§4A§++;
         this.§8U§[_loc2_] = param1;
      }
      
      public function §&![§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§'#§++;
         this.§#r§[_loc2_] = param1;
      }
   }
}
