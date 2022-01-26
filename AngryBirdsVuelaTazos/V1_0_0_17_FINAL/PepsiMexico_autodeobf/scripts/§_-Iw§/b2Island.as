package §_-Iw§
{
   import §_-1N§.*;
   import §_-Ja§.*;
   import §_-a5§.*;
   import §_-lh§.*;
   import §_-qg§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-fX§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-sB§;
      
      private var §_-BZ§:b2ContactListener;
      
      private var §_-Ul§:b2ContactSolver;
      
      b2internal var §_-SV§:Vector.<b2Body>;
      
      b2internal var §_-LO§:Vector.<b2Contact>;
      
      b2internal var §_-O2§:Vector.<b2Joint>;
      
      b2internal var §_-Ww§:int;
      
      b2internal var §_-LT§:int;
      
      b2internal var §_-b7§:int;
      
      private var §_-G0§:int;
      
      b2internal var §_-UT§:int;
      
      b2internal var §_-iv§:int;
      
      public function b2Island()
      {
         super();
         this.§_-SV§ = new Vector.<b2Body>();
         this.§_-LO§ = new Vector.<b2Contact>();
         this.§_-O2§ = new Vector.<b2Joint>();
      }
      
      public function §_-lc§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-G0§ = param1;
         this.§_-UT§ = param2;
         this.§_-iv§ = param3;
         this.§_-Ww§ = 0;
         this.§_-b7§ = 0;
         this.§_-LT§ = 0;
         this.§_-sB§ = param4;
         this.§_-BZ§ = param5;
         this.§_-Ul§ = param6;
         _loc7_ = this.§_-SV§.length;
         while(_loc7_ < param1)
         {
            this.§_-SV§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-LO§.length;
         while(_loc7_ < param2)
         {
            this.§_-LO§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-O2§.length;
         while(_loc7_ < param3)
         {
            this.§_-O2§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-jU§() : void
      {
         this.§_-Ww§ = 0;
         this.§_-b7§ = 0;
         this.§_-LT§ = 0;
      }
      
      public function §_-B-§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-Ww§)
         {
            if((_loc6_ = this.§_-SV§[_loc4_]).§_-ww§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-ZZ§.x += param1.§_-h8§ * (param2.x + _loc6_.§_-eZ§ * _loc6_.§return§.x);
               _loc6_.§_-ZZ§.y += param1.§_-h8§ * (param2.y + _loc6_.§_-eZ§ * _loc6_.§return§.y);
               _loc6_.m_angularVelocity += param1.§_-h8§ * _loc6_.§_-DZ§ * _loc6_.§_-0C§;
               _loc6_.§_-ZZ§.§_-6z§(b2Math.§_-Gj§(1 - param1.§_-h8§ * _loc6_.§_-rl§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-Gj§(1 - param1.§_-h8§ * _loc6_.§_-1p§,0,1);
            }
            _loc4_++;
         }
         this.§_-Ul§.§_-lc§(param1,this.§_-LO§,this.§_-b7§,this.§_-sB§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-Ul§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-LT§)
         {
            (_loc7_ = this.§_-O2§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-yW§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-LT§)
            {
               (_loc7_ = this.§_-O2§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-LT§)
         {
            (_loc7_ = this.§_-O2§[_loc4_]).§_-qd§();
            _loc4_++;
         }
         _loc8_.§_-qd§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-Ww§)
         {
            if((_loc6_ = this.§_-SV§[_loc4_]).§_-ww§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-h8§ * _loc6_.§_-ZZ§.x;
               _loc10_ = param1.§_-h8§ * _loc6_.§_-ZZ§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-ZZ§.Normalize();
                  _loc6_.§_-ZZ§.x *= b2Settings.b2_maxTranslation * param1.§_-0w§;
                  _loc6_.§_-ZZ§.y *= b2Settings.b2_maxTranslation * param1.§_-0w§;
               }
               _loc11_ = param1.§_-h8§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-0w§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-0w§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-h8§ * _loc6_.§_-ZZ§.x;
               _loc6_.m_sweep.c.y += param1.§_-h8§ * _loc6_.§_-ZZ§.y;
               _loc6_.m_sweep.a += param1.§_-h8§ * _loc6_.m_angularVelocity;
               _loc6_.§_-Z9§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-Pe§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-LT§)
            {
               _loc14_ = (_loc7_ = this.§_-O2§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-2l§(_loc8_.§_-MT§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-Ww§)
            {
               if((_loc6_ = this.§_-SV§[_loc4_]).§_-ww§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-Il§ & b2Body.§_-Iv§) == 0)
                  {
                     _loc6_.§_-5g§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-Il§ & b2Body.§_-Iv§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-Ly§(_loc6_.§_-ZZ§,_loc6_.§_-ZZ§) > _loc16_)
                  {
                     _loc6_.§_-5g§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-5g§ += param1.§_-h8§;
                     _loc15_ = b2Math.§_-cD§(_loc15_,_loc6_.§_-5g§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-Ww§)
               {
                  (_loc6_ = this.§_-SV§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-4y§(param1:b2TimeStep) : void
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
         this.§_-Ul§.§_-lc§(param1,this.§_-LO§,this.§_-b7§,this.§_-sB§);
         var _loc4_:b2ContactSolver = this.§_-Ul§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-LT§)
         {
            this.§_-O2§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-yW§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-LT§)
            {
               this.§_-O2§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-Ww§)
         {
            if((_loc6_ = this.§_-SV§[_loc2_]).§_-ww§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-h8§ * _loc6_.§_-ZZ§.x;
               _loc8_ = param1.§_-h8§ * _loc6_.§_-ZZ§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-ZZ§.Normalize();
                  _loc6_.§_-ZZ§.x *= b2Settings.b2_maxTranslation * param1.§_-0w§;
                  _loc6_.§_-ZZ§.y *= b2Settings.b2_maxTranslation * param1.§_-0w§;
               }
               _loc9_ = param1.§_-h8§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-0w§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-0w§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-h8§ * _loc6_.§_-ZZ§.x;
               _loc6_.m_sweep.c.y += param1.§_-h8§ * _loc6_.§_-ZZ§.y;
               _loc6_.m_sweep.a += param1.§_-h8§ * _loc6_.m_angularVelocity;
               _loc6_.§_-Z9§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-Pe§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-LT§)
            {
               _loc12_ = this.§_-O2§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-2l§(_loc4_.§_-MT§);
      }
      
      public function §_-2l§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-BZ§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-b7§)
         {
            _loc3_ = this.§_-LO§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-Ws§)
            {
               §_-fX§.§_-WN§[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
               §_-fX§.§_-bO§[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-BZ§.PostSolve(_loc3_,§_-fX§);
            _loc2_++;
         }
      }
      
      public function §_-J2§(param1:b2Body) : void
      {
         param1.§_-ZU§ = this.§_-Ww§;
         var _loc2_:* = this.§_-Ww§++;
         this.§_-SV§[_loc2_] = param1;
      }
      
      public function §_-T4§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-b7§++;
         this.§_-LO§[_loc2_] = param1;
      }
      
      public function §_-ZD§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-LT§++;
         this.§_-O2§[_loc2_] = param1;
      }
   }
}
