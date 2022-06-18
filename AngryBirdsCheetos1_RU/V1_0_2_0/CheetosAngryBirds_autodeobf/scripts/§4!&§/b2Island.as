package §4!&§
{
   import §&!+§.*;
   import §3Z§.*;
   import §7C§.*;
   import §8!%§.*;
   import §<!^§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §'![§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §-!+§;
      
      private var §[!U§:b2ContactListener;
      
      private var §@b§:b2ContactSolver;
      
      b2internal var §"!O§:Vector.<b2Body>;
      
      b2internal var §5s§:Vector.<b2Contact>;
      
      b2internal var §77§:Vector.<b2Joint>;
      
      b2internal var §`!K§:int;
      
      b2internal var §<!M§:int;
      
      b2internal var §"c§:int;
      
      private var §2!%§:int;
      
      b2internal var §;!!§:int;
      
      b2internal var § l§:int;
      
      public function b2Island()
      {
         super();
         this.§"!O§ = new Vector.<b2Body>();
         this.§5s§ = new Vector.<b2Contact>();
         this.§77§ = new Vector.<b2Joint>();
      }
      
      public function §1U§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§2!%§ = param1;
         this.§;!!§ = param2;
         this.§ l§ = param3;
         this.§`!K§ = 0;
         this.§"c§ = 0;
         this.§<!M§ = 0;
         this.§-!+§ = param4;
         this.§[!U§ = param5;
         this.§@b§ = param6;
         _loc7_ = this.§"!O§.length;
         while(_loc7_ < param1)
         {
            this.§"!O§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§5s§.length;
         while(_loc7_ < param2)
         {
            this.§5s§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§77§.length;
         while(_loc7_ < param3)
         {
            this.§77§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §1]§() : void
      {
         this.§`!K§ = 0;
         this.§"c§ = 0;
         this.§<!M§ = 0;
      }
      
      public function §#!E§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§`!K§)
         {
            if((_loc6_ = this.§"!O§[_loc4_]).§?!S§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§5+§.x += param1.§2!2§ * (param2.x + _loc6_.§=!P§ * _loc6_.§4s§.x);
               _loc6_.§5+§.y += param1.§2!2§ * (param2.y + _loc6_.§=!P§ * _loc6_.§4s§.y);
               _loc6_.m_angularVelocity += param1.§2!2§ * _loc6_.§`!6§ * _loc6_.§4e§;
               _loc6_.§5+§.§5!P§(b2Math.§5!%§(1 - param1.§2!2§ * _loc6_.§-T§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§5!%§(1 - param1.§2!2§ * _loc6_.§9!]§,0,1);
            }
            _loc4_++;
         }
         this.§@b§.§1U§(param1,this.§5s§,this.§"c§,this.§-!+§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§@b§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§<!M§)
         {
            (_loc7_ = this.§77§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§0x§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§<!M§)
            {
               (_loc7_ = this.§77§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§<!M§)
         {
            (_loc7_ = this.§77§[_loc4_]).§9&§();
            _loc4_++;
         }
         _loc8_.§9&§();
         _loc4_ = 0;
         while(_loc4_ < this.§`!K§)
         {
            if((_loc6_ = this.§"!O§[_loc4_]).§?!S§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§2!2§ * _loc6_.§5+§.x;
               _loc10_ = param1.§2!2§ * _loc6_.§5+§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§5+§.Normalize();
                  _loc6_.§5+§.x *= b2Settings.b2_maxTranslation * param1.§<!L§;
                  _loc6_.§5+§.y *= b2Settings.b2_maxTranslation * param1.§<!L§;
               }
               _loc11_ = param1.§2!2§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§<!L§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§<!L§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§2!2§ * _loc6_.§5+§.x;
               _loc6_.m_sweep.c.y += param1.§2!2§ * _loc6_.§5+§.y;
               _loc6_.m_sweep.a += param1.§2!2§ * _loc6_.m_angularVelocity;
               _loc6_.§@d§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§5"§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§<!M§)
            {
               _loc14_ = (_loc7_ = this.§77§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§2!@§(_loc8_.§@!F§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§`!K§)
            {
               if((_loc6_ = this.§"!O§[_loc4_]).§?!S§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§'z§ & b2Body.§5;§) == 0)
                  {
                     _loc6_.§%<§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§'z§ & b2Body.§5;§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§9`§(_loc6_.§5+§,_loc6_.§5+§) > _loc16_)
                  {
                     _loc6_.§%<§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§%<§ += param1.§2!2§;
                     _loc15_ = b2Math.§6!9§(_loc15_,_loc6_.§%<§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§`!K§)
               {
                  (_loc6_ = this.§"!O§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §+i§(param1:b2TimeStep) : void
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
         this.§@b§.§1U§(param1,this.§5s§,this.§"c§,this.§-!+§);
         var _loc4_:b2ContactSolver = this.§@b§;
         _loc2_ = 0;
         while(_loc2_ < this.§<!M§)
         {
            this.§77§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§0x§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§<!M§)
            {
               this.§77§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§`!K§)
         {
            if((_loc6_ = this.§"!O§[_loc2_]).§?!S§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§2!2§ * _loc6_.§5+§.x;
               _loc8_ = param1.§2!2§ * _loc6_.§5+§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§5+§.Normalize();
                  _loc6_.§5+§.x *= b2Settings.b2_maxTranslation * param1.§<!L§;
                  _loc6_.§5+§.y *= b2Settings.b2_maxTranslation * param1.§<!L§;
               }
               _loc9_ = param1.§2!2§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§<!L§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§<!L§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§2!2§ * _loc6_.§5+§.x;
               _loc6_.m_sweep.c.y += param1.§2!2§ * _loc6_.§5+§.y;
               _loc6_.m_sweep.a += param1.§2!2§ * _loc6_.m_angularVelocity;
               _loc6_.§@d§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§5"§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§<!M§)
            {
               _loc12_ = this.§77§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§2!@§(_loc4_.§@!F§);
      }
      
      public function §2!@§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§[!U§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§"c§)
         {
            _loc3_ = this.§5s§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§1!H§)
            {
               §'![§.§+B§[_loc5_] = _loc4_.§3?§[_loc5_].normalImpulse;
               §'![§.§8$§[_loc5_] = _loc4_.§3?§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§[!U§.PostSolve(_loc3_,§'![§);
            _loc2_++;
         }
      }
      
      public function §2i§(param1:b2Body) : void
      {
         param1.§#r§ = this.§`!K§;
         var _loc2_:* = this.§`!K§++;
         this.§"!O§[_loc2_] = param1;
      }
      
      public function §!!V§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§"c§++;
         this.§5s§[_loc2_] = param1;
      }
      
      public function §!k§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§<!M§++;
         this.§77§[_loc2_] = param1;
      }
   }
}
