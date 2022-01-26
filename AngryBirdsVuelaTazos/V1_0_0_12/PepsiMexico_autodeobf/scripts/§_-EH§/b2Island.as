package §_-EH§
{
   import §_-9z§.*;
   import §_-Nw§.*;
   import §_-Ox§.*;
   import §_-j6§.*;
   import §_-sU§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-tn§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-hu§;
      
      private var §_-Jb§:b2ContactListener;
      
      private var §_-La§:b2ContactSolver;
      
      b2internal var §_-vI§:Vector.<b2Body>;
      
      b2internal var §_-6G§:Vector.<b2Contact>;
      
      b2internal var §_-N1§:Vector.<b2Joint>;
      
      b2internal var §_-39§:int;
      
      b2internal var §_-HU§:int;
      
      b2internal var §_-aX§:int;
      
      private var §_-cd§:int;
      
      b2internal var §_-d2§:int;
      
      b2internal var §_-4Z§:int;
      
      public function b2Island()
      {
         super();
         this.§_-vI§ = new Vector.<b2Body>();
         this.§_-6G§ = new Vector.<b2Contact>();
         this.§_-N1§ = new Vector.<b2Joint>();
      }
      
      public function §_-fn§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-cd§ = param1;
         this.§_-d2§ = param2;
         this.§_-4Z§ = param3;
         this.§_-39§ = 0;
         this.§_-aX§ = 0;
         this.§_-HU§ = 0;
         this.§_-hu§ = param4;
         this.§_-Jb§ = param5;
         this.§_-La§ = param6;
         _loc7_ = this.§_-vI§.length;
         while(_loc7_ < param1)
         {
            this.§_-vI§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-6G§.length;
         while(_loc7_ < param2)
         {
            this.§_-6G§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-N1§.length;
         while(_loc7_ < param3)
         {
            this.§_-N1§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-SQ§() : void
      {
         this.§_-39§ = 0;
         this.§_-aX§ = 0;
         this.§_-HU§ = 0;
      }
      
      public function §_-5z§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-39§)
         {
            if((_loc6_ = this.§_-vI§[_loc4_]).§_-7L§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-wk§.x += param1.§_-pG§ * (param2.x + _loc6_.§_-dH§ * _loc6_.§_-6Z§.x);
               _loc6_.§_-wk§.y += param1.§_-pG§ * (param2.y + _loc6_.§_-dH§ * _loc6_.§_-6Z§.y);
               _loc6_.m_angularVelocity += param1.§_-pG§ * _loc6_.§_-sp§ * _loc6_.§_-91§;
               _loc6_.§_-wk§.§_-5L§(b2Math.§_-5a§(1 - param1.§_-pG§ * _loc6_.§_-gx§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-5a§(1 - param1.§_-pG§ * _loc6_.§_-KX§,0,1);
            }
            _loc4_++;
         }
         this.§_-La§.§_-fn§(param1,this.§_-6G§,this.§_-aX§,this.§_-hu§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-La§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-HU§)
         {
            (_loc7_ = this.§_-N1§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-97§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-HU§)
            {
               (_loc7_ = this.§_-N1§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-HU§)
         {
            (_loc7_ = this.§_-N1§[_loc4_]).§_-ro§();
            _loc4_++;
         }
         _loc8_.§_-ro§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-39§)
         {
            if((_loc6_ = this.§_-vI§[_loc4_]).§_-7L§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-pG§ * _loc6_.§_-wk§.x;
               _loc10_ = param1.§_-pG§ * _loc6_.§_-wk§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-wk§.Normalize();
                  _loc6_.§_-wk§.x *= b2Settings.b2_maxTranslation * param1.§ else§;
                  _loc6_.§_-wk§.y *= b2Settings.b2_maxTranslation * param1.§ else§;
               }
               _loc11_ = param1.§_-pG§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ else§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ else§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-pG§ * _loc6_.§_-wk§.x;
               _loc6_.m_sweep.c.y += param1.§_-pG§ * _loc6_.§_-wk§.y;
               _loc6_.m_sweep.a += param1.§_-pG§ * _loc6_.m_angularVelocity;
               _loc6_.§_-dS§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-cc§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-HU§)
            {
               _loc14_ = (_loc7_ = this.§_-N1§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-WB§(_loc8_.§_-wC§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-39§)
            {
               if((_loc6_ = this.§_-vI§[_loc4_]).§_-7L§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-QK§ & b2Body.§_-g4§) == 0)
                  {
                     _loc6_.§_-UX§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-QK§ & b2Body.§_-g4§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-aI§(_loc6_.§_-wk§,_loc6_.§_-wk§) > _loc16_)
                  {
                     _loc6_.§_-UX§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-UX§ += param1.§_-pG§;
                     _loc15_ = b2Math.§_-cq§(_loc15_,_loc6_.§_-UX§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-39§)
               {
                  (_loc6_ = this.§_-vI§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-aa§(param1:b2TimeStep) : void
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
         this.§_-La§.§_-fn§(param1,this.§_-6G§,this.§_-aX§,this.§_-hu§);
         var _loc4_:b2ContactSolver = this.§_-La§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-HU§)
         {
            this.§_-N1§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-97§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-HU§)
            {
               this.§_-N1§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-39§)
         {
            if((_loc6_ = this.§_-vI§[_loc2_]).§_-7L§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-pG§ * _loc6_.§_-wk§.x;
               _loc8_ = param1.§_-pG§ * _loc6_.§_-wk§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-wk§.Normalize();
                  _loc6_.§_-wk§.x *= b2Settings.b2_maxTranslation * param1.§ else§;
                  _loc6_.§_-wk§.y *= b2Settings.b2_maxTranslation * param1.§ else§;
               }
               _loc9_ = param1.§_-pG§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§ else§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§ else§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-pG§ * _loc6_.§_-wk§.x;
               _loc6_.m_sweep.c.y += param1.§_-pG§ * _loc6_.§_-wk§.y;
               _loc6_.m_sweep.a += param1.§_-pG§ * _loc6_.m_angularVelocity;
               _loc6_.§_-dS§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-cc§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-HU§)
            {
               _loc12_ = this.§_-N1§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-WB§(_loc4_.§_-wC§);
      }
      
      public function §_-WB§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-Jb§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-aX§)
         {
            _loc3_ = this.§_-6G§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-6W§)
            {
               §_-tn§.§_-Km§[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
               §_-tn§.§_-er§[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-Jb§.PostSolve(_loc3_,§_-tn§);
            _loc2_++;
         }
      }
      
      public function §_-EV§(param1:b2Body) : void
      {
         param1.§_-Qm§ = this.§_-39§;
         var _loc2_:* = this.§_-39§++;
         this.§_-vI§[_loc2_] = param1;
      }
      
      public function §_-1A§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-aX§++;
         this.§_-6G§[_loc2_] = param1;
      }
      
      public function §_-Y3§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-HU§++;
         this.§_-N1§[_loc2_] = param1;
      }
   }
}
