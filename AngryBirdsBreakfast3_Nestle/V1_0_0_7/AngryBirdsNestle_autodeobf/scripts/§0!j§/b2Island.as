package §0!j§
{
   import §!!o§.*;
   import §!r§.*;
   import §'!^§.*;
   import §-!2§.*;
   import §<!?§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §^!Z§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §0!0§;
      
      private var §9!&§:b2ContactListener;
      
      private var §>!u§:b2ContactSolver;
      
      b2internal var §7!+§:Vector.<b2Body>;
      
      b2internal var §@"&§:Vector.<b2Contact>;
      
      b2internal var §7H§:Vector.<b2Joint>;
      
      b2internal var §[f§:int;
      
      b2internal var §;!"§:int;
      
      b2internal var §6]§:int;
      
      private var §6g§:int;
      
      b2internal var §0!w§:int;
      
      b2internal var §1!§:int;
      
      public function b2Island()
      {
         super();
         this.§7!+§ = new Vector.<b2Body>();
         this.§@"&§ = new Vector.<b2Contact>();
         this.§7H§ = new Vector.<b2Joint>();
      }
      
      public function §7!Q§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§6g§ = param1;
         this.§0!w§ = param2;
         this.§1!§ = param3;
         this.§[f§ = 0;
         this.§6]§ = 0;
         this.§;!"§ = 0;
         this.§0!0§ = param4;
         this.§9!&§ = param5;
         this.§>!u§ = param6;
         _loc7_ = this.§7!+§.length;
         while(_loc7_ < param1)
         {
            this.§7!+§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§@"&§.length;
         while(_loc7_ < param2)
         {
            this.§@"&§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§7H§.length;
         while(_loc7_ < param3)
         {
            this.§7H§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §4!z§() : void
      {
         this.§[f§ = 0;
         this.§6]§ = 0;
         this.§;!"§ = 0;
      }
      
      public function §9!§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§[f§)
         {
            if((_loc6_ = this.§7!+§[_loc4_]).§6`§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§3N§.x += param1.§&c§ * (_loc6_.§[o§ * param2.x + _loc6_.§2![§ * _loc6_.§8"+§.x);
               _loc6_.§3N§.y += param1.§&c§ * (_loc6_.§[o§ * param2.y + _loc6_.§2![§ * _loc6_.§8"+§.y);
               _loc6_.m_angularVelocity += param1.§&c§ * _loc6_.§2s§ * _loc6_.§,!§;
               _loc6_.§3N§.§6!6§(b2Math.§+u§(1 - param1.§&c§ * _loc6_.§2!X§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§+u§(1 - param1.§&c§ * _loc6_.§^c§,0,1);
            }
            _loc4_++;
         }
         this.§>!u§.§7!Q§(param1,this.§@"&§,this.§6]§,this.§0!0§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§>!u§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§;!"§)
         {
            (_loc7_ = this.§7H§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§>u§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§;!"§)
            {
               (_loc7_ = this.§7H§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§;!"§)
         {
            (_loc7_ = this.§7H§[_loc4_]).§'o§();
            _loc4_++;
         }
         _loc8_.§'o§();
         _loc4_ = 0;
         while(_loc4_ < this.§[f§)
         {
            if((_loc6_ = this.§7!+§[_loc4_]).§6`§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§&c§ * _loc6_.§3N§.x;
               _loc10_ = param1.§&c§ * _loc6_.§3N§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§3N§.Normalize();
                  _loc6_.§3N§.x *= b2Settings.b2_maxTranslation * param1.§@"!§;
                  _loc6_.§3N§.y *= b2Settings.b2_maxTranslation * param1.§@"!§;
               }
               _loc11_ = param1.§&c§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§@"!§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§@"!§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§&c§ * _loc6_.§3N§.x;
               _loc6_.m_sweep.c.y += param1.§&c§ * _loc6_.§3N§.y;
               _loc6_.m_sweep.a += param1.§&c§ * _loc6_.m_angularVelocity;
               _loc6_.§+!8§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§]!s§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§;!"§)
            {
               _loc14_ = (_loc7_ = this.§7H§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§8!R§(_loc8_.§&L§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§[f§)
            {
               if((_loc6_ = this.§7!+§[_loc4_]).§6`§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§<!3§ & b2Body.§!!6§) == 0)
                  {
                     _loc6_.§#!1§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§<!3§ & b2Body.§!!6§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§`1§(_loc6_.§3N§,_loc6_.§3N§) > _loc16_)
                  {
                     _loc6_.§#!1§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§#!1§ += param1.§&c§;
                     _loc15_ = b2Math.§2a§(_loc15_,_loc6_.§#!1§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§[f§)
               {
                  (_loc6_ = this.§7!+§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §;!=§(param1:b2TimeStep) : void
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
         this.§>!u§.§7!Q§(param1,this.§@"&§,this.§6]§,this.§0!0§);
         var _loc4_:b2ContactSolver = this.§>!u§;
         _loc2_ = 0;
         while(_loc2_ < this.§;!"§)
         {
            this.§7H§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§]!s§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§;!"§)
            {
               _loc8_ = this.§7H§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§>u§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§;!"§)
            {
               this.§7H§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[f§)
         {
            if((_loc9_ = this.§7!+§[_loc2_]).§6`§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§&c§ * _loc9_.§3N§.x;
               _loc11_ = param1.§&c§ * _loc9_.§3N§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§3N§.Normalize();
                  _loc9_.§3N§.x *= b2Settings.b2_maxTranslation * param1.§@"!§;
                  _loc9_.§3N§.y *= b2Settings.b2_maxTranslation * param1.§@"!§;
               }
               _loc12_ = param1.§&c§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§@"!§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§@"!§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§&c§ * _loc9_.§3N§.x;
               _loc9_.m_sweep.c.y += param1.§&c§ * _loc9_.§3N§.y;
               _loc9_.m_sweep.a += param1.§&c§ * _loc9_.m_angularVelocity;
               _loc9_.§+!8§();
            }
            _loc2_++;
         }
         this.§8!R§(_loc4_.§&L§);
      }
      
      public function §8!R§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§9!&§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§6]§)
         {
            _loc3_ = this.§@"&§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§>!h§)
            {
               §^!Z§.§9!N§[_loc5_] = _loc4_.§=",§[_loc5_].normalImpulse;
               §^!Z§.§0!>§[_loc5_] = _loc4_.§=",§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§9!&§.PostSolve(_loc3_,§^!Z§);
            _loc2_++;
         }
      }
      
      public function §9!w§(param1:b2Body) : void
      {
         param1.§+"!§ = this.§[f§;
         var _loc2_:* = this.§[f§++;
         this.§7!+§[_loc2_] = param1;
      }
      
      public function §;O§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§6]§++;
         this.§@"&§[_loc2_] = param1;
      }
      
      public function §,`§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§;!"§++;
         this.§7H§[_loc2_] = param1;
      }
   }
}
