package §_-43§
{
   import §_-F2§.*;
   import §_-Jx§.*;
   import §_-ZX§.*;
   import §_-d6§.*;
   import §_-ol§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-e5§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-fi§;
      
      private var §_-7v§:b2ContactListener;
      
      private var §_-Wz§:b2ContactSolver;
      
      b2internal var §_-WU§:Vector.<b2Body>;
      
      b2internal var §_-jJ§:Vector.<b2Contact>;
      
      b2internal var §_-FA§:Vector.<b2Joint>;
      
      b2internal var §_-xV§:int;
      
      b2internal var §_-PJ§:int;
      
      b2internal var §_-jG§:int;
      
      private var §_-3Q§:int;
      
      b2internal var §_-5C§:int;
      
      b2internal var §_-g9§:int;
      
      public function b2Island()
      {
         super();
         this.§_-WU§ = new Vector.<b2Body>();
         this.§_-jJ§ = new Vector.<b2Contact>();
         this.§_-FA§ = new Vector.<b2Joint>();
      }
      
      public function §_-M0§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-3Q§ = param1;
         this.§_-5C§ = param2;
         this.§_-g9§ = param3;
         this.§_-xV§ = 0;
         this.§_-jG§ = 0;
         this.§_-PJ§ = 0;
         this.§_-fi§ = param4;
         this.§_-7v§ = param5;
         this.§_-Wz§ = param6;
         _loc7_ = this.§_-WU§.length;
         while(_loc7_ < param1)
         {
            this.§_-WU§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-jJ§.length;
         while(_loc7_ < param2)
         {
            this.§_-jJ§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-FA§.length;
         while(_loc7_ < param3)
         {
            this.§_-FA§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-ai§() : void
      {
         this.§_-xV§ = 0;
         this.§_-jG§ = 0;
         this.§_-PJ§ = 0;
      }
      
      public function §_-mC§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-xV§)
         {
            if((_loc6_ = this.§_-WU§[_loc4_]).§_-cT§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-We§.x += param1.§_-At§ * (param2.x + _loc6_.§_-N0§ * _loc6_.§if§.x);
               _loc6_.§_-We§.y += param1.§_-At§ * (param2.y + _loc6_.§_-N0§ * _loc6_.§if§.y);
               _loc6_.m_angularVelocity += param1.§_-At§ * _loc6_.§_-pA§ * _loc6_.§_-8Y§;
               _loc6_.§_-We§.§_-X-§(b2Math.§_-3V§(1 - param1.§_-At§ * _loc6_.§_-zF§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-3V§(1 - param1.§_-At§ * _loc6_.§_-Ea§,0,1);
            }
            _loc4_++;
         }
         this.§_-Wz§.§_-M0§(param1,this.§_-jJ§,this.§_-jG§,this.§_-fi§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-Wz§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-PJ§)
         {
            (_loc7_ = this.§_-FA§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-1Y§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-PJ§)
            {
               (_loc7_ = this.§_-FA§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-PJ§)
         {
            (_loc7_ = this.§_-FA§[_loc4_]).§_-pl§();
            _loc4_++;
         }
         _loc8_.§_-pl§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-xV§)
         {
            if((_loc6_ = this.§_-WU§[_loc4_]).§_-cT§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-At§ * _loc6_.§_-We§.x;
               _loc10_ = param1.§_-At§ * _loc6_.§_-We§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-We§.Normalize();
                  _loc6_.§_-We§.x *= b2Settings.b2_maxTranslation * param1.§_-GC§;
                  _loc6_.§_-We§.y *= b2Settings.b2_maxTranslation * param1.§_-GC§;
               }
               _loc11_ = param1.§_-At§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-GC§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-GC§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.§_-FO§);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.§_-FO§.x += param1.§_-At§ * _loc6_.§_-We§.x;
               _loc6_.m_sweep.§_-FO§.y += param1.§_-At§ * _loc6_.§_-We§.y;
               _loc6_.m_sweep.a += param1.§_-At§ * _loc6_.m_angularVelocity;
               _loc6_.§_-76§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-SL§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-PJ§)
            {
               _loc14_ = (_loc7_ = this.§_-FA§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§each §(_loc8_.§_-Z8§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-xV§)
            {
               if((_loc6_ = this.§_-WU§[_loc4_]).§_-cT§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-o4§ & b2Body.§_-TR§) == 0)
                  {
                     _loc6_.§_-cy§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-o4§ & b2Body.§_-TR§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-Kt§(_loc6_.§_-We§,_loc6_.§_-We§) > _loc16_)
                  {
                     _loc6_.§_-cy§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-cy§ += param1.§_-At§;
                     _loc15_ = b2Math.§_-E9§(_loc15_,_loc6_.§_-cy§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-xV§)
               {
                  (_loc6_ = this.§_-WU§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-kD§(param1:b2TimeStep) : void
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
         this.§_-Wz§.§_-M0§(param1,this.§_-jJ§,this.§_-jG§,this.§_-fi§);
         var _loc4_:b2ContactSolver = this.§_-Wz§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-PJ§)
         {
            this.§_-FA§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-1Y§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-PJ§)
            {
               this.§_-FA§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-xV§)
         {
            if((_loc6_ = this.§_-WU§[_loc2_]).§_-cT§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-At§ * _loc6_.§_-We§.x;
               _loc8_ = param1.§_-At§ * _loc6_.§_-We§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-We§.Normalize();
                  _loc6_.§_-We§.x *= b2Settings.b2_maxTranslation * param1.§_-GC§;
                  _loc6_.§_-We§.y *= b2Settings.b2_maxTranslation * param1.§_-GC§;
               }
               _loc9_ = param1.§_-At§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-GC§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-GC§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.§_-FO§);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.§_-FO§.x += param1.§_-At§ * _loc6_.§_-We§.x;
               _loc6_.m_sweep.§_-FO§.y += param1.§_-At§ * _loc6_.§_-We§.y;
               _loc6_.m_sweep.a += param1.§_-At§ * _loc6_.m_angularVelocity;
               _loc6_.§_-76§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-SL§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-PJ§)
            {
               _loc12_ = this.§_-FA§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§each §(_loc4_.§_-Z8§);
      }
      
      public function §each §(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-7v§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-jG§)
         {
            _loc3_ = this.§_-jJ§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-r0§)
            {
               §_-e5§.§_-xW§[_loc5_] = _loc4_.§_-yP§[_loc5_].normalImpulse;
               §_-e5§.§_-Xp§[_loc5_] = _loc4_.§_-yP§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-7v§.PostSolve(_loc3_,§_-e5§);
            _loc2_++;
         }
      }
      
      public function §_-sk§(param1:b2Body) : void
      {
         param1.§_-mG§ = this.§_-xV§;
         var _loc2_:* = this.§_-xV§++;
         this.§_-WU§[_loc2_] = param1;
      }
      
      public function §_-rf§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-jG§++;
         this.§_-jJ§[_loc2_] = param1;
      }
      
      public function §_-Xi§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-PJ§++;
         this.§_-FA§[_loc2_] = param1;
      }
   }
}
