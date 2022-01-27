package §#!X§
{
   import §&!S§.*;
   import §+D§.*;
   import §3!1§.*;
   import §3m§.*;
   import §@!@§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §<1§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §9!H§;
      
      private var §1!U§:b2ContactListener;
      
      private var §%"5§:b2ContactSolver;
      
      b2internal var §5!M§:Vector.<b2Body>;
      
      b2internal var §9!F§:Vector.<b2Contact>;
      
      b2internal var §1!"§:Vector.<b2Joint>;
      
      b2internal var §%!X§:int;
      
      b2internal var §%!6§:int;
      
      b2internal var §`0§:int;
      
      private var §8!J§:int;
      
      b2internal var §9'§:int;
      
      b2internal var §-!g§:int;
      
      public function b2Island()
      {
         super();
         this.§5!M§ = new Vector.<b2Body>();
         this.§9!F§ = new Vector.<b2Contact>();
         this.§1!"§ = new Vector.<b2Joint>();
      }
      
      public function §5!k§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§8!J§ = param1;
         this.§9'§ = param2;
         this.§-!g§ = param3;
         this.§%!X§ = 0;
         this.§`0§ = 0;
         this.§%!6§ = 0;
         this.§9!H§ = param4;
         this.§1!U§ = param5;
         this.§%"5§ = param6;
         _loc7_ = this.§5!M§.length;
         while(_loc7_ < param1)
         {
            this.§5!M§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§9!F§.length;
         while(_loc7_ < param2)
         {
            this.§9!F§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§1!"§.length;
         while(_loc7_ < param3)
         {
            this.§1!"§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §6![§() : void
      {
         this.§%!X§ = 0;
         this.§`0§ = 0;
         this.§%!6§ = 0;
      }
      
      public function §@"+§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§%!X§)
         {
            if((_loc6_ = this.§5!M§[_loc4_]).§,!k§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§>w§.x += param1.§`"%§ * (param2.x + _loc6_.§]!T§ * _loc6_.§=!E§.x);
               _loc6_.§>w§.y += param1.§`"%§ * (param2.y + _loc6_.§]!T§ * _loc6_.§=!E§.y);
               _loc6_.m_angularVelocity += param1.§`"%§ * _loc6_.§@#§ * _loc6_.§^![§;
               _loc6_.§>w§.§4z§(b2Math.§>G§(1 - param1.§`"%§ * _loc6_.§[!W§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§>G§(1 - param1.§`"%§ * _loc6_.§'!T§,0,1);
            }
            _loc4_++;
         }
         this.§%"5§.§5!k§(param1,this.§9!F§,this.§`0§,this.§9!H§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§%"5§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§%!6§)
         {
            (_loc7_ = this.§1!"§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§;"5§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§%!6§)
            {
               (_loc7_ = this.§1!"§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§%!6§)
         {
            (_loc7_ = this.§1!"§[_loc4_]).§0"§();
            _loc4_++;
         }
         _loc8_.§0"§();
         _loc4_ = 0;
         while(_loc4_ < this.§%!X§)
         {
            if((_loc6_ = this.§5!M§[_loc4_]).§,!k§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§`"%§ * _loc6_.§>w§.x;
               _loc10_ = param1.§`"%§ * _loc6_.§>w§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§>w§.Normalize();
                  _loc6_.§>w§.x *= b2Settings.b2_maxTranslation * param1.§=o§;
                  _loc6_.§>w§.y *= b2Settings.b2_maxTranslation * param1.§=o§;
               }
               _loc11_ = param1.§`"%§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§=o§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§=o§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§`"%§ * _loc6_.§>w§.x;
               _loc6_.m_sweep.c.y += param1.§`"%§ * _loc6_.§>w§.y;
               _loc6_.m_sweep.a += param1.§`"%§ * _loc6_.m_angularVelocity;
               _loc6_.§;!E§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§;!Y§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§%!6§)
            {
               _loc14_ = (_loc7_ = this.§1!"§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§5!w§(_loc8_.§8p§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§%!X§)
            {
               if((_loc6_ = this.§5!M§[_loc4_]).§,!k§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§2!K§ & b2Body.§=!!§) == 0)
                  {
                     _loc6_.§[!A§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§2!K§ & b2Body.§=!!§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§"!<§(_loc6_.§>w§,_loc6_.§>w§) > _loc16_)
                  {
                     _loc6_.§[!A§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§[!A§ += param1.§`"%§;
                     _loc15_ = b2Math.§'a§(_loc15_,_loc6_.§[!A§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§%!X§)
               {
                  (_loc6_ = this.§5!M§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §&M§(param1:b2TimeStep) : void
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
         this.§%"5§.§5!k§(param1,this.§9!F§,this.§`0§,this.§9!H§);
         var _loc4_:b2ContactSolver = this.§%"5§;
         _loc2_ = 0;
         while(_loc2_ < this.§%!6§)
         {
            this.§1!"§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§;!Y§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§%!6§)
            {
               _loc8_ = this.§1!"§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§;"5§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§%!6§)
            {
               this.§1!"§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§%!X§)
         {
            if((_loc9_ = this.§5!M§[_loc2_]).§,!k§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§`"%§ * _loc9_.§>w§.x;
               _loc11_ = param1.§`"%§ * _loc9_.§>w§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§>w§.Normalize();
                  _loc9_.§>w§.x *= b2Settings.b2_maxTranslation * param1.§=o§;
                  _loc9_.§>w§.y *= b2Settings.b2_maxTranslation * param1.§=o§;
               }
               _loc12_ = param1.§`"%§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§=o§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§=o§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§`"%§ * _loc9_.§>w§.x;
               _loc9_.m_sweep.c.y += param1.§`"%§ * _loc9_.§>w§.y;
               _loc9_.m_sweep.a += param1.§`"%§ * _loc9_.m_angularVelocity;
               _loc9_.§;!E§();
            }
            _loc2_++;
         }
         this.§5!w§(_loc4_.§8p§);
      }
      
      public function §5!w§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§1!U§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§`0§)
         {
            _loc3_ = this.§9!F§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§?8§)
            {
               §<1§.§&!x§[_loc5_] = _loc4_.§]'§[_loc5_].normalImpulse;
               §<1§.§!"§[_loc5_] = _loc4_.§]'§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§1!U§.PostSolve(_loc3_,§<1§);
            _loc2_++;
         }
      }
      
      public function §!%§(param1:b2Body) : void
      {
         param1.§+"$§ = this.§%!X§;
         var _loc2_:* = this.§%!X§++;
         this.§5!M§[_loc2_] = param1;
      }
      
      public function §;@§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§`0§++;
         this.§9!F§[_loc2_] = param1;
      }
      
      public function §,!b§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§%!6§++;
         this.§1!"§[_loc2_] = param1;
      }
   }
}
