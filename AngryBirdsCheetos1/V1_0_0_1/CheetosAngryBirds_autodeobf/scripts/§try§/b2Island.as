package §try§
{
   import §_-b4§.*;
   import §_-cP§.*;
   import §_-yI§.*;
   import §const§.*;
   import §with§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-cd§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-Ts§;
      
      private var §_-n0§:b2ContactListener;
      
      private var §_-Sk§:b2ContactSolver;
      
      b2internal var §_-mH§:Vector.<b2Body>;
      
      b2internal var §_-Mj§:Vector.<b2Contact>;
      
      b2internal var §_-9m§:Vector.<b2Joint>;
      
      b2internal var §_-Is§:int;
      
      b2internal var §_-0-1§:int;
      
      b2internal var §_-V5§:int;
      
      private var §_-FX§:int;
      
      b2internal var §_-VO§:int;
      
      b2internal var §continue§:int;
      
      public function b2Island()
      {
         super();
         this.§_-mH§ = new Vector.<b2Body>();
         this.§_-Mj§ = new Vector.<b2Contact>();
         this.§_-9m§ = new Vector.<b2Joint>();
      }
      
      public function §_-Qz§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-FX§ = param1;
         this.§_-VO§ = param2;
         this.§continue§ = param3;
         this.§_-Is§ = 0;
         this.§_-V5§ = 0;
         this.§_-0-1§ = 0;
         this.§_-Ts§ = param4;
         this.§_-n0§ = param5;
         this.§_-Sk§ = param6;
         _loc7_ = this.§_-mH§.length;
         while(_loc7_ < param1)
         {
            this.§_-mH§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-Mj§.length;
         while(_loc7_ < param2)
         {
            this.§_-Mj§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-9m§.length;
         while(_loc7_ < param3)
         {
            this.§_-9m§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-Xb§() : void
      {
         this.§_-Is§ = 0;
         this.§_-V5§ = 0;
         this.§_-0-1§ = 0;
      }
      
      public function §_-xM§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-Is§)
         {
            if((_loc6_ = this.§_-mH§[_loc4_]).§_-sl§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-PK§.x += param1.§_-ec§ * (param2.x + _loc6_.§_-hk§ * _loc6_.§_-fj§.x);
               _loc6_.§_-PK§.y += param1.§_-ec§ * (param2.y + _loc6_.§_-hk§ * _loc6_.§_-fj§.y);
               _loc6_.m_angularVelocity += param1.§_-ec§ * _loc6_.§_-LF§ * _loc6_.§_-U5§;
               _loc6_.§_-PK§.§_-qa§(b2Math.§_-9P§(1 - param1.§_-ec§ * _loc6_.§_-5S§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-9P§(1 - param1.§_-ec§ * _loc6_.§_-Js§,0,1);
            }
            _loc4_++;
         }
         this.§_-Sk§.§_-Qz§(param1,this.§_-Mj§,this.§_-V5§,this.§_-Ts§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-Sk§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-0-1§)
         {
            (_loc7_ = this.§_-9m§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-8s§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-0-1§)
            {
               (_loc7_ = this.§_-9m§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-0-1§)
         {
            (_loc7_ = this.§_-9m§[_loc4_]).§_-cq§();
            _loc4_++;
         }
         _loc8_.§_-cq§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-Is§)
         {
            if((_loc6_ = this.§_-mH§[_loc4_]).§_-sl§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-ec§ * _loc6_.§_-PK§.x;
               _loc10_ = param1.§_-ec§ * _loc6_.§_-PK§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-PK§.Normalize();
                  _loc6_.§_-PK§.x *= b2Settings.b2_maxTranslation * param1.§_-uP§;
                  _loc6_.§_-PK§.y *= b2Settings.b2_maxTranslation * param1.§_-uP§;
               }
               _loc11_ = param1.§_-ec§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-uP§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-uP§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.§_-xQ§);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.§_-xQ§.x += param1.§_-ec§ * _loc6_.§_-PK§.x;
               _loc6_.m_sweep.§_-xQ§.y += param1.§_-ec§ * _loc6_.§_-PK§.y;
               _loc6_.m_sweep.a += param1.§_-ec§ * _loc6_.m_angularVelocity;
               _loc6_.§_-fH§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-1e§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-0-1§)
            {
               _loc14_ = (_loc7_ = this.§_-9m§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.set(_loc8_.§_-BR§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-Is§)
            {
               if((_loc6_ = this.§_-mH§[_loc4_]).§_-sl§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-L9§ & b2Body.§_-IQ§) == 0)
                  {
                     _loc6_.§_-z7§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-L9§ & b2Body.§_-IQ§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-Wh§(_loc6_.§_-PK§,_loc6_.§_-PK§) > _loc16_)
                  {
                     _loc6_.§_-z7§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-z7§ += param1.§_-ec§;
                     _loc15_ = b2Math.§_-gF§(_loc15_,_loc6_.§_-z7§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-Is§)
               {
                  (_loc6_ = this.§_-mH§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-Lt§(param1:b2TimeStep) : void
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
         this.§_-Sk§.§_-Qz§(param1,this.§_-Mj§,this.§_-V5§,this.§_-Ts§);
         var _loc4_:b2ContactSolver = this.§_-Sk§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-0-1§)
         {
            this.§_-9m§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-8s§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-0-1§)
            {
               this.§_-9m§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-Is§)
         {
            if((_loc6_ = this.§_-mH§[_loc2_]).§_-sl§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-ec§ * _loc6_.§_-PK§.x;
               _loc8_ = param1.§_-ec§ * _loc6_.§_-PK§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-PK§.Normalize();
                  _loc6_.§_-PK§.x *= b2Settings.b2_maxTranslation * param1.§_-uP§;
                  _loc6_.§_-PK§.y *= b2Settings.b2_maxTranslation * param1.§_-uP§;
               }
               _loc9_ = param1.§_-ec§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-uP§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-uP§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.§_-xQ§);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.§_-xQ§.x += param1.§_-ec§ * _loc6_.§_-PK§.x;
               _loc6_.m_sweep.§_-xQ§.y += param1.§_-ec§ * _loc6_.§_-PK§.y;
               _loc6_.m_sweep.a += param1.§_-ec§ * _loc6_.m_angularVelocity;
               _loc6_.§_-fH§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-1e§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-0-1§)
            {
               _loc12_ = this.§_-9m§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.set(_loc4_.§_-BR§);
      }
      
      public function set(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-n0§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-V5§)
         {
            _loc3_ = this.§_-Mj§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-60§)
            {
               §_-cd§.§_-VD§[_loc5_] = _loc4_.§_-HH§[_loc5_].normalImpulse;
               §_-cd§.§_-cZ§[_loc5_] = _loc4_.§_-HH§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-n0§.PostSolve(_loc3_,§_-cd§);
            _loc2_++;
         }
      }
      
      public function §_-1y§(param1:b2Body) : void
      {
         param1.§_-WG§ = this.§_-Is§;
         var _loc2_:* = this.§_-Is§++;
         this.§_-mH§[_loc2_] = param1;
      }
      
      public function §_-X3§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-V5§++;
         this.§_-Mj§[_loc2_] = param1;
      }
      
      public function §_-U6§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-0-1§++;
         this.§_-9m§[_loc2_] = param1;
      }
   }
}
