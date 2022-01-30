package §;'§
{
   import § !%§.*;
   import §+W§.*;
   import §,!k§.*;
   import §6f§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §6p§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §#p§;
      
      private var §7!?§:b2ContactListener;
      
      private var § !6§:b2ContactSolver;
      
      b2internal var § Y§:Vector.<b2Body>;
      
      b2internal var §4!k§:Vector.<b2Contact>;
      
      b2internal var §&!M§:Vector.<b2Joint>;
      
      b2internal var §`Q§:int;
      
      b2internal var §,!b§:int;
      
      b2internal var §]E§:int;
      
      private var §3!K§:int;
      
      b2internal var §^![§:int;
      
      b2internal var § %§:int;
      
      public function b2Island()
      {
         super();
         this.§ Y§ = new Vector.<b2Body>();
         this.§4!k§ = new Vector.<b2Contact>();
         this.§&!M§ = new Vector.<b2Joint>();
      }
      
      public function §2f§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§3!K§ = param1;
         this.§^![§ = param2;
         this.§ %§ = param3;
         this.§`Q§ = 0;
         this.§]E§ = 0;
         this.§,!b§ = 0;
         this.§#p§ = param4;
         this.§7!?§ = param5;
         this.§ !6§ = param6;
         _loc7_ = this.§ Y§.length;
         while(_loc7_ < param1)
         {
            this.§ Y§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§4!k§.length;
         while(_loc7_ < param2)
         {
            this.§4!k§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§&!M§.length;
         while(_loc7_ < param3)
         {
            this.§&!M§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §&"2§() : void
      {
         this.§`Q§ = 0;
         this.§]E§ = 0;
         this.§,!b§ = 0;
      }
      
      public function §7&§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§`Q§)
         {
            if((_loc6_ = this.§ Y§[_loc4_]).§]"$§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§1N§.x += param1.§<"3§ * (param2.x + _loc6_.§1!#§ * _loc6_.§,0§.x);
               _loc6_.§1N§.y += param1.§<"3§ * (param2.y + _loc6_.§1!#§ * _loc6_.§,0§.y);
               _loc6_.m_angularVelocity += param1.§<"3§ * _loc6_.§+%§ * _loc6_.§@X§;
               _loc6_.§1N§.§%"§(b2Math.§[§(1 - param1.§<"3§ * _loc6_.§;!D§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§[§(1 - param1.§<"3§ * _loc6_.§?i§,0,1);
            }
            _loc4_++;
         }
         this.§ !6§.§2f§(param1,this.§4!k§,this.§]E§,this.§#p§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§ !6§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§,!b§)
         {
            (_loc7_ = this.§&!M§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§`!u§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§,!b§)
            {
               (_loc7_ = this.§&!M§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§,!b§)
         {
            (_loc7_ = this.§&!M§[_loc4_]).§?y§();
            _loc4_++;
         }
         _loc8_.§?y§();
         _loc4_ = 0;
         while(_loc4_ < this.§`Q§)
         {
            if((_loc6_ = this.§ Y§[_loc4_]).§]"$§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§<"3§ * _loc6_.§1N§.x;
               _loc10_ = param1.§<"3§ * _loc6_.§1N§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§1N§.Normalize();
                  _loc6_.§1N§.x *= b2Settings.b2_maxTranslation * param1.§!c§;
                  _loc6_.§1N§.y *= b2Settings.b2_maxTranslation * param1.§!c§;
               }
               _loc11_ = param1.§<"3§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§!c§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§!c§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§<"3§ * _loc6_.§1N§.x;
               _loc6_.m_sweep.c.y += param1.§<"3§ * _loc6_.§1N§.y;
               _loc6_.m_sweep.a += param1.§<"3§ * _loc6_.m_angularVelocity;
               _loc6_.§@!5§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§'t§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§,!b§)
            {
               _loc14_ = (_loc7_ = this.§&!M§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§&""§(_loc8_.§ +§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§`Q§)
            {
               if((_loc6_ = this.§ Y§[_loc4_]).§]"$§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§"!4§ & b2Body.§^!n§) == 0)
                  {
                     _loc6_.§%Z§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§"!4§ & b2Body.§^!n§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§>!m§(_loc6_.§1N§,_loc6_.§1N§) > _loc16_)
                  {
                     _loc6_.§%Z§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§%Z§ += param1.§<"3§;
                     _loc15_ = b2Math.§,A§(_loc15_,_loc6_.§%Z§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§`Q§)
               {
                  (_loc6_ = this.§ Y§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §%G§(param1:b2TimeStep) : void
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
         this.§ !6§.§2f§(param1,this.§4!k§,this.§]E§,this.§#p§);
         var _loc4_:b2ContactSolver = this.§ !6§;
         _loc2_ = 0;
         while(_loc2_ < this.§,!b§)
         {
            this.§&!M§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§'t§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§,!b§)
            {
               _loc8_ = this.§&!M§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§`!u§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§,!b§)
            {
               this.§&!M§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§`Q§)
         {
            if((_loc9_ = this.§ Y§[_loc2_]).§]"$§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§<"3§ * _loc9_.§1N§.x;
               _loc11_ = param1.§<"3§ * _loc9_.§1N§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§1N§.Normalize();
                  _loc9_.§1N§.x *= b2Settings.b2_maxTranslation * param1.§!c§;
                  _loc9_.§1N§.y *= b2Settings.b2_maxTranslation * param1.§!c§;
               }
               _loc12_ = param1.§<"3§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§!c§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§!c§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§<"3§ * _loc9_.§1N§.x;
               _loc9_.m_sweep.c.y += param1.§<"3§ * _loc9_.§1N§.y;
               _loc9_.m_sweep.a += param1.§<"3§ * _loc9_.m_angularVelocity;
               _loc9_.§@!5§();
            }
            _loc2_++;
         }
         this.§&""§(_loc4_.§ +§);
      }
      
      public function §&""§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§7!?§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§]E§)
         {
            _loc3_ = this.§4!k§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§-o§)
            {
               §6p§.§!Z§[_loc5_] = _loc4_.§4^§[_loc5_].normalImpulse;
               §6p§.§3t§[_loc5_] = _loc4_.§4^§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§7!?§.PostSolve(_loc3_,§6p§);
            _loc2_++;
         }
      }
      
      public function §3x§(param1:b2Body) : void
      {
         param1.§]"3§ = this.§`Q§;
         var _loc2_:* = this.§`Q§++;
         this.§ Y§[_loc2_] = param1;
      }
      
      public function §=D§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§]E§++;
         this.§4!k§[_loc2_] = param1;
      }
      
      public function §>k§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§,!b§++;
         this.§&!M§[_loc2_] = param1;
      }
   }
}
