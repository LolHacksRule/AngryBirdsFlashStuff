package §1%§
{
   import §5!_§.*;
   import §8!H§.*;
   import §>s§.*;
   import §?!&§.*;
   import §`!H§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §%!L§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §5!X§;
      
      private var §9_§:b2ContactListener;
      
      private var §0W§:b2ContactSolver;
      
      b2internal var §6!#§:Vector.<b2Body>;
      
      b2internal var §+W§:Vector.<b2Contact>;
      
      b2internal var §4!I§:Vector.<b2Joint>;
      
      b2internal var §8y§:int;
      
      b2internal var §8%§:int;
      
      b2internal var §9!?§:int;
      
      private var §6-§:int;
      
      b2internal var §8p§:int;
      
      b2internal var §0H§:int;
      
      public function b2Island()
      {
         super();
         this.§6!#§ = new Vector.<b2Body>();
         this.§+W§ = new Vector.<b2Contact>();
         this.§4!I§ = new Vector.<b2Joint>();
      }
      
      public function §3!a§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§6-§ = param1;
         this.§8p§ = param2;
         this.§0H§ = param3;
         this.§8y§ = 0;
         this.§9!?§ = 0;
         this.§8%§ = 0;
         this.§5!X§ = param4;
         this.§9_§ = param5;
         this.§0W§ = param6;
         _loc7_ = this.§6!#§.length;
         while(_loc7_ < param1)
         {
            this.§6!#§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§+W§.length;
         while(_loc7_ < param2)
         {
            this.§+W§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§4!I§.length;
         while(_loc7_ < param3)
         {
            this.§4!I§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §^!<§() : void
      {
         this.§8y§ = 0;
         this.§9!?§ = 0;
         this.§8%§ = 0;
      }
      
      public function § M§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§8y§)
         {
            _loc6_ = this.§6!#§[_loc4_];
            if(_loc6_.§3r§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§69§.x += param1.§?!>§ * (param2.x + _loc6_.§4s§ * _loc6_.§'<§.x);
               _loc6_.§69§.y += param1.§?!>§ * (param2.y + _loc6_.§4s§ * _loc6_.§'<§.y);
               _loc6_.m_angularVelocity += param1.§?!>§ * _loc6_.§[!F§ * _loc6_.§46§;
               _loc6_.§69§.§49§(b2Math.§"J§(1 - param1.§?!>§ * _loc6_.§]2§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§"J§(1 - param1.§?!>§ * _loc6_.§3]§,0,1);
            }
            _loc4_++;
         }
         this.§0W§.§3!a§(param1,this.§+W§,this.§9!?§,this.§5!X§);
         var _loc8_:b2ContactSolver = this.§0W§;
         _loc8_.InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§8%§)
         {
            _loc7_ = this.§4!I§[_loc4_];
            _loc7_.InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§`!_§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§8%§)
            {
               _loc7_ = this.§4!I§[_loc5_];
               _loc7_.SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§8%§)
         {
            _loc7_ = this.§4!I§[_loc4_];
            _loc7_.§#!0§();
            _loc4_++;
         }
         _loc8_.§#!0§();
         _loc4_ = 0;
         while(_loc4_ < this.§8y§)
         {
            _loc6_ = this.§6!#§[_loc4_];
            if(_loc6_.§3r§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§?!>§ * _loc6_.§69§.x;
               _loc10_ = param1.§?!>§ * _loc6_.§69§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§69§.Normalize();
                  _loc6_.§69§.x *= b2Settings.b2_maxTranslation * param1.§finally§;
                  _loc6_.§69§.y *= b2Settings.b2_maxTranslation * param1.§finally§;
               }
               _loc11_ = param1.§?!>§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§finally§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§finally§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?!>§ * _loc6_.§69§.x;
               _loc6_.m_sweep.c.y += param1.§?!>§ * _loc6_.§69§.y;
               _loc6_.m_sweep.a += param1.§?!>§ * _loc6_.m_angularVelocity;
               _loc6_.§`! §();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§]Y§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§8%§)
            {
               _loc7_ = this.§4!I§[_loc5_];
               _loc14_ = _loc7_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§8C§(_loc8_.§^!Y§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§8y§)
            {
               _loc6_ = this.§6!#§[_loc4_];
               if(_loc6_.§3r§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§8A§ & b2Body.§3!+§) == 0)
                  {
                     _loc6_.§6"§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§8A§ & b2Body.§3!+§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§6!F§(_loc6_.§69§,_loc6_.§69§) > _loc16_)
                  {
                     _loc6_.§6"§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§6"§ += param1.§?!>§;
                     _loc15_ = b2Math.§3G§(_loc15_,_loc6_.§6"§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§8y§)
               {
                  _loc6_ = this.§6!#§[_loc4_];
                  _loc6_.SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §4!6§(param1:b2TimeStep) : void
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
         this.§0W§.§3!a§(param1,this.§+W§,this.§9!?§,this.§5!X§);
         var _loc4_:b2ContactSolver = this.§0W§;
         _loc2_ = 0;
         while(_loc2_ < this.§8%§)
         {
            this.§4!I§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§`!_§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§8%§)
            {
               this.§4!I§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§8y§)
         {
            _loc6_ = this.§6!#§[_loc2_];
            if(_loc6_.§3r§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§?!>§ * _loc6_.§69§.x;
               _loc8_ = param1.§?!>§ * _loc6_.§69§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§69§.Normalize();
                  _loc6_.§69§.x *= b2Settings.b2_maxTranslation * param1.§finally§;
                  _loc6_.§69§.y *= b2Settings.b2_maxTranslation * param1.§finally§;
               }
               _loc9_ = param1.§?!>§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§finally§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§finally§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§?!>§ * _loc6_.§69§.x;
               _loc6_.m_sweep.c.y += param1.§?!>§ * _loc6_.§69§.y;
               _loc6_.m_sweep.a += param1.§?!>§ * _loc6_.m_angularVelocity;
               _loc6_.§`! §();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§]Y§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§8%§)
            {
               _loc12_ = this.§4!I§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§8C§(_loc4_.§^!Y§);
      }
      
      public function §8C§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§9_§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§9!?§)
         {
            _loc3_ = this.§+W§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§[![§)
            {
               §%!L§.§`!c§[_loc5_] = _loc4_.§&!3§[_loc5_].normalImpulse;
               §%!L§.§+&§[_loc5_] = _loc4_.§&!3§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§9_§.PostSolve(_loc3_,§%!L§);
            _loc2_++;
         }
      }
      
      public function §@4§(param1:b2Body) : void
      {
         param1.§>!B§ = this.§8y§;
         var _loc2_:* = this.§8y§++;
         this.§6!#§[_loc2_] = param1;
      }
      
      public function §>!=§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§9!?§++;
         this.§+W§[_loc2_] = param1;
      }
      
      public function get(param1:b2Joint) : void
      {
         var _loc2_:* = this.§8%§++;
         this.§4!I§[_loc2_] = param1;
      }
   }
}
