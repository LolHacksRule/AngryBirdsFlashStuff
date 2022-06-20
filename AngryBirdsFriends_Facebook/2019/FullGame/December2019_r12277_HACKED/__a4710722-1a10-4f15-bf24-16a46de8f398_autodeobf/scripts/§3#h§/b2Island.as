package §3#h§
{
   import §1#F§.*;
   import §5v§.*;
   import §6!R§.*;
   import §6"0§.*;
   import §9$A§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §[#G§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §1#v§;
      
      private var §=#k§:b2ContactListener;
      
      private var §7#4§:b2ContactSolver;
      
      b2internal var §%!H§:Vector.<b2Body>;
      
      b2internal var §1!#§:Vector.<b2Contact>;
      
      b2internal var §2p§:Vector.<b2Joint>;
      
      b2internal var §[!a§:int;
      
      b2internal var §1#i§:int;
      
      b2internal var §%8§:int;
      
      private var §?!"§:int;
      
      b2internal var §8"I§:int;
      
      b2internal var §3"y§:int;
      
      public function b2Island()
      {
         super();
         this.§%!H§ = new Vector.<b2Body>();
         this.§1!#§ = new Vector.<b2Contact>();
         this.§2p§ = new Vector.<b2Joint>();
      }
      
      public function §80§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§?!"§ = param1;
         this.§8"I§ = param2;
         this.§3"y§ = param3;
         this.§[!a§ = 0;
         this.§%8§ = 0;
         this.§1#i§ = 0;
         this.§1#v§ = param4;
         this.§=#k§ = param5;
         this.§7#4§ = param6;
         _loc7_ = this.§%!H§.length;
         while(_loc7_ < param1)
         {
            this.§%!H§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§1!#§.length;
         while(_loc7_ < param2)
         {
            this.§1!#§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§2p§.length;
         while(_loc7_ < param3)
         {
            this.§2p§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §[!U§() : void
      {
         this.§[!a§ = 0;
         this.§%8§ = 0;
         this.§1#i§ = 0;
      }
      
      public function §5R§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Body = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc4_ = 0;
         while(_loc4_ < this.§[!a§)
         {
            if((_loc6_ = this.§%!H§[_loc4_]).§!"k§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§=!c§.x += param1.dt * (_loc6_.§ try§ * param2.x + _loc6_.§0#d§ * _loc6_.§2#A§.x);
               _loc6_.§=!c§.y += param1.dt * (_loc6_.§ try§ * param2.y + _loc6_.§0#d§ * _loc6_.§2#A§.y);
               _loc6_.m_angularVelocity += param1.dt * _loc6_.§!!!§ * _loc6_.§5"S§;
               _loc6_.§=!c§.§%!G§(b2Math.§-$"§(1 - param1.dt * _loc6_.§^#H§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§-$"§(1 - param1.dt * _loc6_.§<!d§,0,1);
            }
            _loc4_++;
         }
         this.§7#4§.§80§(param1,this.§1!#§,this.§%8§,this.§1#v§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§7#4§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§1#i§)
         {
            this.§2p§[_loc4_].InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§^#%§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§1#i§)
            {
               this.§2p§[_loc5_].SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§1#i§)
         {
            this.§2p§[_loc4_].§3#E§();
            _loc4_++;
         }
         _loc8_.§3#E§();
         _loc4_ = 0;
         while(_loc4_ < this.§[!a§)
         {
            if((_loc6_ = this.§%!H§[_loc4_]).§!"k§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.dt * _loc6_.§=!c§.x;
               _loc10_ = param1.dt * _loc6_.§=!c§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§=!c§.Normalize();
                  _loc6_.§=!c§.x *= b2Settings.b2_maxTranslation * param1.§;#R§;
                  _loc6_.§=!c§.y *= b2Settings.b2_maxTranslation * param1.§;#R§;
               }
               if(param1.dt * _loc6_.m_angularVelocity * (Number(param1.dt * _loc6_.m_angularVelocity)) > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§;#R§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§;#R§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.dt * _loc6_.§=!c§.x;
               _loc6_.m_sweep.c.y += param1.dt * _loc6_.§=!c§.y;
               _loc6_.m_sweep.a += param1.dt * _loc6_.m_angularVelocity;
               _loc6_.§[!C§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§27§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§1#i§)
            {
               _loc14_ = this.§2p§[_loc5_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§ U§(_loc8_.§0$!§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§[!a§)
            {
               if((_loc6_ = this.§%!H§[_loc4_]).§!"k§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§#!E§ & b2Body.§"#g§) == 0)
                  {
                     _loc6_.§]s§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§#!E§ & b2Body.§"#g§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§-"C§(_loc6_.§=!c§,_loc6_.§=!c§) > _loc16_)
                  {
                     _loc6_.§]s§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§]s§ += param1.dt;
                     _loc15_ = b2Math.§ 3§(_loc15_,_loc6_.§]s§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§[!a§)
               {
                  (_loc6_ = this.§%!H§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §?"M§(param1:b2TimeStep) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:b2Body = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§7#4§.§80§(param1,this.§1!#§,this.§%8§,this.§1#v§);
         var _loc4_:b2ContactSolver = this.§7#4§;
         _loc2_ = 0;
         while(_loc2_ < this.§1#i§)
         {
            this.§2p§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§27§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§1#i§)
            {
               _loc8_ = this.§2p§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§^#%§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§1#i§)
            {
               this.§2p§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§[!a§)
         {
            if((_loc9_ = this.§%!H§[_loc2_]).§!"k§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.dt * _loc9_.§=!c§.x;
               _loc11_ = param1.dt * _loc9_.§=!c§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§=!c§.Normalize();
                  _loc9_.§=!c§.x *= b2Settings.b2_maxTranslation * param1.§;#R§;
                  _loc9_.§=!c§.y *= b2Settings.b2_maxTranslation * param1.§;#R§;
               }
               if(param1.dt * _loc9_.m_angularVelocity * (Number(param1.dt * _loc9_.m_angularVelocity)) > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§;#R§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§;#R§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.dt * _loc9_.§=!c§.x;
               _loc9_.m_sweep.c.y += param1.dt * _loc9_.§=!c§.y;
               _loc9_.m_sweep.a += param1.dt * _loc9_.m_angularVelocity;
               _loc9_.§[!C§();
            }
            _loc2_++;
         }
         this.§ U§(_loc4_.§0$!§);
      }
      
      public function § U§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§=#k§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§%8§)
         {
            _loc3_ = this.§1!#§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§#"v§)
            {
               §[#G§.§9#§[_loc5_] = _loc4_.§["+§[_loc5_].normalImpulse;
               §[#G§.§?!g§[_loc5_] = _loc4_.§["+§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§=#k§.PostSolve(_loc3_,§[#G§);
            _loc2_++;
         }
      }
      
      public function §0q§(param1:b2Body) : void
      {
         param1.§6!l§ = this.§[!a§;
         var _loc2_:* = this.§[!a§++;
         this.§%!H§[_loc2_] = param1;
      }
      
      public function §<h§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§%8§++;
         this.§1!#§[_loc2_] = param1;
      }
      
      public function §#"A§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§1#i§++;
         this.§2p§[_loc2_] = param1;
      }
   }
}
