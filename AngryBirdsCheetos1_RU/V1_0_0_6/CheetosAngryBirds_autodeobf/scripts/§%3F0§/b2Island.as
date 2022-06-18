package §?0§
{
   import §'!#§.*;
   import §'!3§.*;
   import §3q§.*;
   import §9!$§.*;
   import §9A§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §>!8§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §-!`§;
      
      private var §]!+§:b2ContactListener;
      
      private var §]2§:b2ContactSolver;
      
      b2internal var §[r§:Vector.<b2Body>;
      
      b2internal var §5Y§:Vector.<b2Contact>;
      
      b2internal var § !G§:Vector.<b2Joint>;
      
      b2internal var §&p§:int;
      
      b2internal var §9c§:int;
      
      b2internal var §8!L§:int;
      
      private var §[I§:int;
      
      b2internal var §;2§:int;
      
      b2internal var §`?§:int;
      
      public function b2Island()
      {
         super();
         this.§[r§ = new Vector.<b2Body>();
         this.§5Y§ = new Vector.<b2Contact>();
         this.§ !G§ = new Vector.<b2Joint>();
      }
      
      public function §;!W§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§[I§ = param1;
         this.§;2§ = param2;
         this.§`?§ = param3;
         this.§&p§ = 0;
         this.§8!L§ = 0;
         this.§9c§ = 0;
         this.§-!`§ = param4;
         this.§]!+§ = param5;
         this.§]2§ = param6;
         _loc7_ = this.§[r§.length;
         while(_loc7_ < param1)
         {
            this.§[r§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§5Y§.length;
         while(_loc7_ < param2)
         {
            this.§5Y§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§ !G§.length;
         while(_loc7_ < param3)
         {
            this.§ !G§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §-r§() : void
      {
         this.§&p§ = 0;
         this.§8!L§ = 0;
         this.§9c§ = 0;
      }
      
      public function §-!X§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§&p§)
         {
            if((_loc6_ = this.§[r§[_loc4_]).§1!A§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§2!G§.x += param1.§+!I§ * (param2.x + _loc6_.§-q§ * _loc6_.§+!#§.x);
               _loc6_.§2!G§.y += param1.§+!I§ * (param2.y + _loc6_.§-q§ * _loc6_.§+!#§.y);
               _loc6_.m_angularVelocity += param1.§+!I§ * _loc6_.§'a§ * _loc6_.§=I§;
               _loc6_.§2!G§.§^B§(b2Math.§;f§(1 - param1.§+!I§ * _loc6_.§,?§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§;f§(1 - param1.§+!I§ * _loc6_.§=_§,0,1);
            }
            _loc4_++;
         }
         this.§]2§.§;!W§(param1,this.§5Y§,this.§8!L§,this.§-!`§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§]2§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§9c§)
         {
            (_loc7_ = this.§ !G§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§6! §)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§9c§)
            {
               (_loc7_ = this.§ !G§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§9c§)
         {
            (_loc7_ = this.§ !G§[_loc4_]).§]![§();
            _loc4_++;
         }
         _loc8_.§]![§();
         _loc4_ = 0;
         while(_loc4_ < this.§&p§)
         {
            if((_loc6_ = this.§[r§[_loc4_]).§1!A§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§+!I§ * _loc6_.§2!G§.x;
               _loc10_ = param1.§+!I§ * _loc6_.§2!G§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§2!G§.Normalize();
                  _loc6_.§2!G§.x *= b2Settings.b2_maxTranslation * param1.§4_§;
                  _loc6_.§2!G§.y *= b2Settings.b2_maxTranslation * param1.§4_§;
               }
               _loc11_ = param1.§+!I§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§4_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§4_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§+!I§ * _loc6_.§2!G§.x;
               _loc6_.m_sweep.c.y += param1.§+!I§ * _loc6_.§2!G§.y;
               _loc6_.m_sweep.a += param1.§+!I§ * _loc6_.m_angularVelocity;
               _loc6_.§>W§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§=B§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§9c§)
            {
               _loc14_ = (_loc7_ = this.§ !G§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§-T§(_loc8_.§=!N§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§&p§)
            {
               if((_loc6_ = this.§[r§[_loc4_]).§1!A§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§0n§ & b2Body.§^§) == 0)
                  {
                     _loc6_.§`!Q§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§0n§ & b2Body.§^§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§7n§(_loc6_.§2!G§,_loc6_.§2!G§) > _loc16_)
                  {
                     _loc6_.§`!Q§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§`!Q§ += param1.§+!I§;
                     _loc15_ = b2Math.§]!A§(_loc15_,_loc6_.§`!Q§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§&p§)
               {
                  (_loc6_ = this.§[r§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §if §(param1:b2TimeStep) : void
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
         this.§]2§.§;!W§(param1,this.§5Y§,this.§8!L§,this.§-!`§);
         var _loc4_:b2ContactSolver = this.§]2§;
         _loc2_ = 0;
         while(_loc2_ < this.§9c§)
         {
            this.§ !G§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§6! §)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§9c§)
            {
               this.§ !G§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§&p§)
         {
            if((_loc6_ = this.§[r§[_loc2_]).§1!A§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§+!I§ * _loc6_.§2!G§.x;
               _loc8_ = param1.§+!I§ * _loc6_.§2!G§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§2!G§.Normalize();
                  _loc6_.§2!G§.x *= b2Settings.b2_maxTranslation * param1.§4_§;
                  _loc6_.§2!G§.y *= b2Settings.b2_maxTranslation * param1.§4_§;
               }
               _loc9_ = param1.§+!I§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§4_§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§4_§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§+!I§ * _loc6_.§2!G§.x;
               _loc6_.m_sweep.c.y += param1.§+!I§ * _loc6_.§2!G§.y;
               _loc6_.m_sweep.a += param1.§+!I§ * _loc6_.m_angularVelocity;
               _loc6_.§>W§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§=B§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§9c§)
            {
               _loc12_ = this.§ !G§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§-T§(_loc4_.§=!N§);
      }
      
      public function §-T§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§]!+§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!L§)
         {
            _loc3_ = this.§5Y§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§!§)
            {
               §>!8§.§6!K§[_loc5_] = _loc4_.§7T§[_loc5_].normalImpulse;
               §>!8§.§"!"§[_loc5_] = _loc4_.§7T§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§]!+§.PostSolve(_loc3_,§>!8§);
            _loc2_++;
         }
      }
      
      public function §&k§(param1:b2Body) : void
      {
         param1.§==§ = this.§&p§;
         var _loc2_:* = this.§&p§++;
         this.§[r§[_loc2_] = param1;
      }
      
      public function §"0§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§8!L§++;
         this.§5Y§[_loc2_] = param1;
      }
      
      public function §%!P§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§9c§++;
         this.§ !G§[_loc2_] = param1;
      }
   }
}
