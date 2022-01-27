package §^!Z§
{
   import § !_§.*;
   import §+&§.*;
   import §3!A§.*;
   import §=_§.*;
   import §^t§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §+!U§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §"5§;
      
      private var §-!K§:b2ContactListener;
      
      private var §&!#§:b2ContactSolver;
      
      b2internal var §7x§:Vector.<b2Body>;
      
      b2internal var §8d§:Vector.<b2Contact>;
      
      b2internal var §3m§:Vector.<b2Joint>;
      
      b2internal var §2Q§:int;
      
      b2internal var §9!3§:int;
      
      b2internal var §default§:int;
      
      private var §[!f§:int;
      
      b2internal var §!!M§:int;
      
      b2internal var §@E§:int;
      
      public function b2Island()
      {
         super();
         this.§7x§ = new Vector.<b2Body>();
         this.§8d§ = new Vector.<b2Contact>();
         this.§3m§ = new Vector.<b2Joint>();
      }
      
      public function §8_§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§[!f§ = param1;
         this.§!!M§ = param2;
         this.§@E§ = param3;
         this.§2Q§ = 0;
         this.§default§ = 0;
         this.§9!3§ = 0;
         this.§"5§ = param4;
         this.§-!K§ = param5;
         this.§&!#§ = param6;
         _loc7_ = this.§7x§.length;
         while(_loc7_ < param1)
         {
            this.§7x§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8d§.length;
         while(_loc7_ < param2)
         {
            this.§8d§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§3m§.length;
         while(_loc7_ < param3)
         {
            this.§3m§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §9!2§() : void
      {
         this.§2Q§ = 0;
         this.§default§ = 0;
         this.§9!3§ = 0;
      }
      
      public function §<!B§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§2Q§)
         {
            if((_loc6_ = this.§7x§[_loc4_]).§6+§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§@!1§.x += param1.§]!"§ * (param2.x + _loc6_.§1!+§ * _loc6_.§3Z§.x);
               _loc6_.§@!1§.y += param1.§]!"§ * (param2.y + _loc6_.§1!+§ * _loc6_.§3Z§.y);
               _loc6_.m_angularVelocity += param1.§]!"§ * _loc6_.§-!f§ * _loc6_.§`n§;
               _loc6_.§@!1§.§"T§(b2Math.§-F§(1 - param1.§]!"§ * _loc6_.§`A§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§-F§(1 - param1.§]!"§ * _loc6_.§0p§,0,1);
            }
            _loc4_++;
         }
         this.§&!#§.§8_§(param1,this.§8d§,this.§default§,this.§"5§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§&!#§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§9!3§)
         {
            (_loc7_ = this.§3m§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§>G§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§9!3§)
            {
               (_loc7_ = this.§3m§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§9!3§)
         {
            (_loc7_ = this.§3m§[_loc4_]).§[!L§();
            _loc4_++;
         }
         _loc8_.§[!L§();
         _loc4_ = 0;
         while(_loc4_ < this.§2Q§)
         {
            if((_loc6_ = this.§7x§[_loc4_]).§6+§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§]!"§ * _loc6_.§@!1§.x;
               _loc10_ = param1.§]!"§ * _loc6_.§@!1§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§@!1§.Normalize();
                  _loc6_.§@!1§.x *= b2Settings.b2_maxTranslation * param1.§ B§;
                  _loc6_.§@!1§.y *= b2Settings.b2_maxTranslation * param1.§ B§;
               }
               _loc11_ = param1.§]!"§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ B§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ B§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§]!"§ * _loc6_.§@!1§.x;
               _loc6_.m_sweep.c.y += param1.§]!"§ * _loc6_.§@!1§.y;
               _loc6_.m_sweep.a += param1.§]!"§ * _loc6_.m_angularVelocity;
               _loc6_.§1&§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§"!E§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§9!3§)
            {
               _loc14_ = (_loc7_ = this.§3m§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§2g§(_loc8_.§=4§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§2Q§)
            {
               if((_loc6_ = this.§7x§[_loc4_]).§6+§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§=?§ & b2Body.§'u§) == 0)
                  {
                     _loc6_.§1"§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§=?§ & b2Body.§'u§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§ h§(_loc6_.§@!1§,_loc6_.§@!1§) > _loc16_)
                  {
                     _loc6_.§1"§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§1"§ += param1.§]!"§;
                     _loc15_ = b2Math.§;Q§(_loc15_,_loc6_.§1"§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§2Q§)
               {
                  (_loc6_ = this.§7x§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §^!$§(param1:b2TimeStep) : void
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
         this.§&!#§.§8_§(param1,this.§8d§,this.§default§,this.§"5§);
         var _loc4_:b2ContactSolver = this.§&!#§;
         _loc2_ = 0;
         while(_loc2_ < this.§9!3§)
         {
            this.§3m§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§>G§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§9!3§)
            {
               this.§3m§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2Q§)
         {
            if((_loc6_ = this.§7x§[_loc2_]).§6+§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§]!"§ * _loc6_.§@!1§.x;
               _loc8_ = param1.§]!"§ * _loc6_.§@!1§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§@!1§.Normalize();
                  _loc6_.§@!1§.x *= b2Settings.b2_maxTranslation * param1.§ B§;
                  _loc6_.§@!1§.y *= b2Settings.b2_maxTranslation * param1.§ B§;
               }
               _loc9_ = param1.§]!"§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ B§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ B§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§]!"§ * _loc6_.§@!1§.x;
               _loc6_.m_sweep.c.y += param1.§]!"§ * _loc6_.§@!1§.y;
               _loc6_.m_sweep.a += param1.§]!"§ * _loc6_.m_angularVelocity;
               _loc6_.§1&§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§"!E§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§9!3§)
            {
               _loc12_ = this.§3m§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§2g§(_loc4_.§=4§);
      }
      
      public function §2g§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§-!K§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§default§)
         {
            _loc3_ = this.§8d§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§use§)
            {
               §+!U§.§01§[_loc5_] = _loc4_.§]i§[_loc5_].normalImpulse;
               §+!U§.§7P§[_loc5_] = _loc4_.§]i§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§-!K§.PostSolve(_loc3_,§+!U§);
            _loc2_++;
         }
      }
      
      public function §1!]§(param1:b2Body) : void
      {
         param1.§6`§ = this.§2Q§;
         var _loc2_:* = this.§2Q§++;
         this.§7x§[_loc2_] = param1;
      }
      
      public function §7!P§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§default§++;
         this.§8d§[_loc2_] = param1;
      }
      
      public function §3k§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§9!3§++;
         this.§3m§[_loc2_] = param1;
      }
   }
}
