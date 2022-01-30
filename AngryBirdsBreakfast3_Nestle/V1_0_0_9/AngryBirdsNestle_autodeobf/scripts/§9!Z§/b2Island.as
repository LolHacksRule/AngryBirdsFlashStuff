package §9!Z§
{
   import §'I§.*;
   import §,H§.*;
   import §7!&§.*;
   import §?"'§.*;
   import §[K§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var § !I§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §5!A§;
      
      private var §2!R§:b2ContactListener;
      
      private var §0!-§:b2ContactSolver;
      
      b2internal var §>V§:Vector.<b2Body>;
      
      b2internal var §8!D§:Vector.<b2Contact>;
      
      b2internal var §<Y§:Vector.<b2Joint>;
      
      b2internal var §,!T§:int;
      
      b2internal var §8!h§:int;
      
      b2internal var §,!f§:int;
      
      private var §5!P§:int;
      
      b2internal var §-!6§:int;
      
      b2internal var §5!O§:int;
      
      public function b2Island()
      {
         super();
         this.§>V§ = new Vector.<b2Body>();
         this.§8!D§ = new Vector.<b2Contact>();
         this.§<Y§ = new Vector.<b2Joint>();
      }
      
      public function §implements§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§5!P§ = param1;
         this.§-!6§ = param2;
         this.§5!O§ = param3;
         this.§,!T§ = 0;
         this.§,!f§ = 0;
         this.§8!h§ = 0;
         this.§5!A§ = param4;
         this.§2!R§ = param5;
         this.§0!-§ = param6;
         _loc7_ = this.§>V§.length;
         while(_loc7_ < param1)
         {
            this.§>V§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§8!D§.length;
         while(_loc7_ < param2)
         {
            this.§8!D§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§<Y§.length;
         while(_loc7_ < param3)
         {
            this.§<Y§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §[!^§() : void
      {
         this.§,!T§ = 0;
         this.§,!f§ = 0;
         this.§8!h§ = 0;
      }
      
      public function §=L§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§,!T§)
         {
            if((_loc6_ = this.§>V§[_loc4_]).§&r§() == b2Body.b2_dynamicBody)
            {
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.§ Y§.x += param1.§>!`§ * (_loc6_.§6K§ * param2.x + _loc6_.§;!R§ * _loc6_.§1"%§.x);
               _loc6_.§ Y§.y += param1.§>!`§ * (_loc6_.§6K§ * param2.y + _loc6_.§;!R§ * _loc6_.§1"%§.y);
               _loc6_.m_angularVelocity += param1.§>!`§ * _loc6_.§1!k§ * _loc6_.§3",§;
               _loc6_.§ Y§.§'9§(b2Math.§8M§(1 - param1.§>!`§ * _loc6_.§[!T§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§8M§(1 - param1.§>!`§ * _loc6_.§0!H§,0,1);
            }
            _loc4_++;
         }
         this.§0!-§.§implements§(param1,this.§8!D§,this.§,!f§,this.§5!A§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§0!-§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§8!h§)
         {
            (_loc7_ = this.§<Y§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§3!]§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§8!h§)
            {
               (_loc7_ = this.§<Y§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§8!h§)
         {
            (_loc7_ = this.§<Y§[_loc4_]).§1""§();
            _loc4_++;
         }
         _loc8_.§1""§();
         _loc4_ = 0;
         while(_loc4_ < this.§,!T§)
         {
            if((_loc6_ = this.§>V§[_loc4_]).§&r§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§>!`§ * _loc6_.§ Y§.x;
               _loc10_ = param1.§>!`§ * _loc6_.§ Y§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§ Y§.Normalize();
                  _loc6_.§ Y§.x *= b2Settings.b2_maxTranslation * param1.§-!M§;
                  _loc6_.§ Y§.y *= b2Settings.b2_maxTranslation * param1.§-!M§;
               }
               _loc11_ = param1.§>!`§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§-!M§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§-!M§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§>!`§ * _loc6_.§ Y§.x;
               _loc6_.m_sweep.c.y += param1.§>!`§ * _loc6_.§ Y§.y;
               _loc6_.m_sweep.a += param1.§>!`§ * _loc6_.m_angularVelocity;
               _loc6_.§>#§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§1!<§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§8!h§)
            {
               _loc14_ = (_loc7_ = this.§<Y§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§?!K§(_loc8_.§["2§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§,!T§)
            {
               if((_loc6_ = this.§>V§[_loc4_]).§&r§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§ !E§ & b2Body.§9m§) == 0)
                  {
                     _loc6_.§3!6§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§ !E§ & b2Body.§9m§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§>$§(_loc6_.§ Y§,_loc6_.§ Y§) > _loc16_)
                  {
                     _loc6_.§3!6§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§3!6§ += param1.§>!`§;
                     _loc15_ = b2Math.§?P§(_loc15_,_loc6_.§3!6§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§,!T§)
               {
                  (_loc6_ = this.§>V§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §^!2§(param1:b2TimeStep) : void
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
         this.§0!-§.§implements§(param1,this.§8!D§,this.§,!f§,this.§5!A§);
         var _loc4_:b2ContactSolver = this.§0!-§;
         _loc2_ = 0;
         while(_loc2_ < this.§8!h§)
         {
            this.§<Y§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§1!<§)
         {
            _loc6_ = _loc4_.SolvePositionConstraints(0.75);
            _loc7_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§8!h§)
            {
               _loc8_ = this.§<Y§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
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
         while(_loc2_ < param1.§3!]§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§8!h§)
            {
               this.§<Y§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§,!T§)
         {
            if((_loc9_ = this.§>V§[_loc2_]).§&r§() != b2Body.b2_staticBody)
            {
               _loc10_ = param1.§>!`§ * _loc9_.§ Y§.x;
               _loc11_ = param1.§>!`§ * _loc9_.§ Y§.y;
               if(_loc10_ * _loc10_ + _loc11_ * _loc11_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc9_.§ Y§.Normalize();
                  _loc9_.§ Y§.x *= b2Settings.b2_maxTranslation * param1.§-!M§;
                  _loc9_.§ Y§.y *= b2Settings.b2_maxTranslation * param1.§-!M§;
               }
               _loc12_ = param1.§>!`§ * _loc9_.m_angularVelocity;
               if(_loc12_ * _loc12_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc9_.m_angularVelocity < 0)
                  {
                     _loc9_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§-!M§;
                  }
                  else
                  {
                     _loc9_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§-!M§;
                  }
               }
               _loc9_.m_sweep.c0.SetV(_loc9_.m_sweep.c);
               _loc9_.m_sweep.a0 = _loc9_.m_sweep.a;
               _loc9_.m_sweep.c.x += param1.§>!`§ * _loc9_.§ Y§.x;
               _loc9_.m_sweep.c.y += param1.§>!`§ * _loc9_.§ Y§.y;
               _loc9_.m_sweep.a += param1.§>!`§ * _loc9_.m_angularVelocity;
               _loc9_.§>#§();
            }
            _loc2_++;
         }
         this.§?!K§(_loc4_.§["2§);
      }
      
      public function §?!K§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§2!R§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,!f§)
         {
            _loc3_ = this.§8!D§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§<!h§)
            {
               § !I§.§9S§[_loc5_] = _loc4_.§^0§[_loc5_].normalImpulse;
               § !I§.§#!<§[_loc5_] = _loc4_.§^0§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§2!R§.PostSolve(_loc3_,§ !I§);
            _loc2_++;
         }
      }
      
      public function §""-§(param1:b2Body) : void
      {
         param1.§<+§ = this.§,!T§;
         var _loc2_:* = this.§,!T§++;
         this.§>V§[_loc2_] = param1;
      }
      
      public function §-"§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§,!f§++;
         this.§8!D§[_loc2_] = param1;
      }
      
      public function §1! §(param1:b2Joint) : void
      {
         var _loc2_:* = this.§8!h§++;
         this.§<Y§[_loc2_] = param1;
      }
   }
}
