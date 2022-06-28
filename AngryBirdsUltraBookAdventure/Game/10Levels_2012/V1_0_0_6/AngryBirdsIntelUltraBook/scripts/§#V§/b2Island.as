package §#V§
{
   import §&a§.*;
   import §,G§.*;
   import §3!m§.*;
   import §8w§.*;
   import §;%§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §]Q§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §7!a§;
      
      private var §>e§:b2ContactListener;
      
      private var §@d§:b2ContactSolver;
      
      b2internal var §[_§:Vector.<b2Body>;
      
      b2internal var §!!f§:Vector.<b2Contact>;
      
      b2internal var §-E§:Vector.<b2Joint>;
      
      b2internal var §2R§:int;
      
      b2internal var §+i§:int;
      
      b2internal var §?o§:int;
      
      private var §3X§:int;
      
      b2internal var §2!l§:int;
      
      b2internal var §]!S§:int;
      
      public function b2Island()
      {
         super();
         this.§[_§ = new Vector.<b2Body>();
         this.§!!f§ = new Vector.<b2Contact>();
         this.§-E§ = new Vector.<b2Joint>();
      }
      
      public function §'K§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§3X§ = param1;
         this.§2!l§ = param2;
         this.§]!S§ = param3;
         this.§2R§ = 0;
         this.§?o§ = 0;
         this.§+i§ = 0;
         this.§7!a§ = param4;
         this.§>e§ = param5;
         this.§@d§ = param6;
         _loc7_ = this.§[_§.length;
         while(_loc7_ < param1)
         {
            this.§[_§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§!!f§.length;
         while(_loc7_ < param2)
         {
            this.§!!f§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§-E§.length;
         while(_loc7_ < param3)
         {
            this.§-E§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §-6§() : void
      {
         this.§2R§ = 0;
         this.§?o§ = 0;
         this.§+i§ = 0;
      }
      
      public function §-,§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§2R§)
         {
            if((_loc6_ = this.§[_§[_loc4_]).§'!_§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§%!V§.x += param1.§&!'§ * (param2.x + _loc6_.§-7§ * _loc6_.§^!L§.x);
               _loc6_.§%!V§.y += param1.§&!'§ * (param2.y + _loc6_.§-7§ * _loc6_.§^!L§.y);
               _loc6_.m_angularVelocity += param1.§&!'§ * _loc6_.§,!o§ * _loc6_.§%&§;
               _loc6_.§%!V§.§%G§(b2Math.§]!M§(1 - param1.§&!'§ * _loc6_.§-!G§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§]!M§(1 - param1.§&!'§ * _loc6_.§7!1§,0,1);
            }
            _loc4_++;
         }
         this.§@d§.§'K§(param1,this.§!!f§,this.§?o§,this.§7!a§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§@d§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§+i§)
         {
            (_loc7_ = this.§-E§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§,!v§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§+i§)
            {
               (_loc7_ = this.§-E§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§+i§)
         {
            (_loc7_ = this.§-E§[_loc4_]).§32§();
            _loc4_++;
         }
         _loc8_.§32§();
         _loc4_ = 0;
         while(_loc4_ < this.§2R§)
         {
            if((_loc6_ = this.§[_§[_loc4_]).§'!_§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§&!'§ * _loc6_.§%!V§.x;
               _loc10_ = param1.§&!'§ * _loc6_.§%!V§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%!V§.Normalize();
                  _loc6_.§%!V§.x *= b2Settings.b2_maxTranslation * param1.§-!i§;
                  _loc6_.§%!V§.y *= b2Settings.b2_maxTranslation * param1.§-!i§;
               }
               _loc11_ = param1.§&!'§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§-!i§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§-!i§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§&!'§ * _loc6_.§%!V§.x;
               _loc6_.m_sweep.c.y += param1.§&!'§ * _loc6_.§%!V§.y;
               _loc6_.m_sweep.a += param1.§&!'§ * _loc6_.m_angularVelocity;
               _loc6_.§#3§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§-!x§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§+i§)
            {
               _loc14_ = (_loc7_ = this.§-E§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§,!A§(_loc8_.§#!8§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§2R§)
            {
               if((_loc6_ = this.§[_§[_loc4_]).§'!_§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§]!p§ & b2Body.§<!O§) == 0)
                  {
                     _loc6_.§3!T§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§]!p§ & b2Body.§<!O§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§+!1§(_loc6_.§%!V§,_loc6_.§%!V§) > _loc16_)
                  {
                     _loc6_.§3!T§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§3!T§ += param1.§&!'§;
                     _loc15_ = b2Math.§=!@§(_loc15_,_loc6_.§3!T§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§2R§)
               {
                  (_loc6_ = this.§[_§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §0!-§(param1:b2TimeStep) : void
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
         this.§@d§.§'K§(param1,this.§!!f§,this.§?o§,this.§7!a§);
         var _loc4_:b2ContactSolver = this.§@d§;
         _loc2_ = 0;
         while(_loc2_ < this.§+i§)
         {
            this.§-E§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§,!v§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§+i§)
            {
               this.§-E§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§2R§)
         {
            if((_loc6_ = this.§[_§[_loc2_]).§'!_§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§&!'§ * _loc6_.§%!V§.x;
               _loc8_ = param1.§&!'§ * _loc6_.§%!V§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§%!V§.Normalize();
                  _loc6_.§%!V§.x *= b2Settings.b2_maxTranslation * param1.§-!i§;
                  _loc6_.§%!V§.y *= b2Settings.b2_maxTranslation * param1.§-!i§;
               }
               _loc9_ = param1.§&!'§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§-!i§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§-!i§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§&!'§ * _loc6_.§%!V§.x;
               _loc6_.m_sweep.c.y += param1.§&!'§ * _loc6_.§%!V§.y;
               _loc6_.m_sweep.a += param1.§&!'§ * _loc6_.m_angularVelocity;
               _loc6_.§#3§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§-!x§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§+i§)
            {
               _loc12_ = this.§-E§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§,!A§(_loc4_.§#!8§);
      }
      
      public function §,!A§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§>e§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§?o§)
         {
            _loc3_ = this.§!!f§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§@!#§)
            {
               §]Q§.§^-§[_loc5_] = _loc4_.§7!4§[_loc5_].normalImpulse;
               §]Q§.§'l§[_loc5_] = _loc4_.§7!4§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§>e§.PostSolve(_loc3_,§]Q§);
            _loc2_++;
         }
      }
      
      public function §@O§(param1:b2Body) : void
      {
         param1.§"R§ = this.§2R§;
         var _loc2_:* = this.§2R§++;
         this.§[_§[_loc2_] = param1;
      }
      
      public function §6w§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§?o§++;
         this.§!!f§[_loc2_] = param1;
      }
      
      public function §5q§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§+i§++;
         this.§-E§[_loc2_] = param1;
      }
   }
}
