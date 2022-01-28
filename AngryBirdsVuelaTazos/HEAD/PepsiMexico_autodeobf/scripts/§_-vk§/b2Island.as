package §_-vk§
{
   import §_-bA§.*;
   import §_-l7§.*;
   import §_-mg§.*;
   import §_-rz§.*;
   import §_-zP§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-gO§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-PG§;
      
      private var §_-dh§:b2ContactListener;
      
      private var §_-b1§:b2ContactSolver;
      
      b2internal var §_-eu§:Vector.<b2Body>;
      
      b2internal var §_-7Q§:Vector.<b2Contact>;
      
      b2internal var §_-kt§:Vector.<b2Joint>;
      
      b2internal var §_-OF§:int;
      
      b2internal var §_-3F§:int;
      
      b2internal var §_-aG§:int;
      
      private var §_-iR§:int;
      
      b2internal var §_-xh§:int;
      
      b2internal var §_-5Z§:int;
      
      public function b2Island()
      {
         super();
         this.§_-eu§ = new Vector.<b2Body>();
         this.§_-7Q§ = new Vector.<b2Contact>();
         this.§_-kt§ = new Vector.<b2Joint>();
      }
      
      public function §_-95§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-iR§ = param1;
         this.§_-xh§ = param2;
         this.§_-5Z§ = param3;
         this.§_-OF§ = 0;
         this.§_-aG§ = 0;
         this.§_-3F§ = 0;
         this.§_-PG§ = param4;
         this.§_-dh§ = param5;
         this.§_-b1§ = param6;
         _loc7_ = this.§_-eu§.length;
         while(_loc7_ < param1)
         {
            this.§_-eu§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-7Q§.length;
         while(_loc7_ < param2)
         {
            this.§_-7Q§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-kt§.length;
         while(_loc7_ < param3)
         {
            this.§_-kt§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-XW§() : void
      {
         this.§_-OF§ = 0;
         this.§_-aG§ = 0;
         this.§_-3F§ = 0;
      }
      
      public function §_-TD§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-OF§)
         {
            if((_loc6_ = this.§_-eu§[_loc4_]).§_-Wx§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-At§.x += param1.§_-Qf§ * (param2.x + _loc6_.§_-Wd§ * _loc6_.§_-Zr§.x);
               _loc6_.§_-At§.y += param1.§_-Qf§ * (param2.y + _loc6_.§_-Wd§ * _loc6_.§_-Zr§.y);
               _loc6_.m_angularVelocity += param1.§_-Qf§ * _loc6_.§_-Ox§ * _loc6_.§_-O8§;
               _loc6_.§_-At§.§_-2O§(b2Math.§_-rr§(1 - param1.§_-Qf§ * _loc6_.§_-mp§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-rr§(1 - param1.§_-Qf§ * _loc6_.§_-QW§,0,1);
            }
            _loc4_++;
         }
         this.§_-b1§.§_-95§(param1,this.§_-7Q§,this.§_-aG§,this.§_-PG§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-b1§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-3F§)
         {
            (_loc7_ = this.§_-kt§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-TU§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-3F§)
            {
               (_loc7_ = this.§_-kt§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-3F§)
         {
            (_loc7_ = this.§_-kt§[_loc4_]).§_-LO§();
            _loc4_++;
         }
         _loc8_.§_-LO§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-OF§)
         {
            if((_loc6_ = this.§_-eu§[_loc4_]).§_-Wx§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-Qf§ * _loc6_.§_-At§.x;
               _loc10_ = param1.§_-Qf§ * _loc6_.§_-At§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-At§.Normalize();
                  _loc6_.§_-At§.x *= b2Settings.b2_maxTranslation * param1.§_-Uz§;
                  _loc6_.§_-At§.y *= b2Settings.b2_maxTranslation * param1.§_-Uz§;
               }
               _loc11_ = param1.§_-Qf§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-Uz§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-Uz§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.§_-Zh§);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.§_-Zh§.x += param1.§_-Qf§ * _loc6_.§_-At§.x;
               _loc6_.m_sweep.§_-Zh§.y += param1.§_-Qf§ * _loc6_.§_-At§.y;
               _loc6_.m_sweep.a += param1.§_-Qf§ * _loc6_.m_angularVelocity;
               _loc6_.§_-I5§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-zg§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-3F§)
            {
               _loc14_ = (_loc7_ = this.§_-kt§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-Lv§(_loc8_.§_-43§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-OF§)
            {
               if((_loc6_ = this.§_-eu§[_loc4_]).§_-Wx§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-xk§ & b2Body.§_-r2§) == 0)
                  {
                     _loc6_.§_-tN§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-xk§ & b2Body.§_-r2§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-Ve§(_loc6_.§_-At§,_loc6_.§_-At§) > _loc16_)
                  {
                     _loc6_.§_-tN§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-tN§ += param1.§_-Qf§;
                     _loc15_ = b2Math.§_-1A§(_loc15_,_loc6_.§_-tN§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-OF§)
               {
                  (_loc6_ = this.§_-eu§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-Z3§(param1:b2TimeStep) : void
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
         this.§_-b1§.§_-95§(param1,this.§_-7Q§,this.§_-aG§,this.§_-PG§);
         var _loc4_:b2ContactSolver = this.§_-b1§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-3F§)
         {
            this.§_-kt§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-TU§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-3F§)
            {
               this.§_-kt§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-OF§)
         {
            if((_loc6_ = this.§_-eu§[_loc2_]).§_-Wx§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-Qf§ * _loc6_.§_-At§.x;
               _loc8_ = param1.§_-Qf§ * _loc6_.§_-At§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-At§.Normalize();
                  _loc6_.§_-At§.x *= b2Settings.b2_maxTranslation * param1.§_-Uz§;
                  _loc6_.§_-At§.y *= b2Settings.b2_maxTranslation * param1.§_-Uz§;
               }
               _loc9_ = param1.§_-Qf§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-Uz§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-Uz§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.§_-Zh§);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.§_-Zh§.x += param1.§_-Qf§ * _loc6_.§_-At§.x;
               _loc6_.m_sweep.§_-Zh§.y += param1.§_-Qf§ * _loc6_.§_-At§.y;
               _loc6_.m_sweep.a += param1.§_-Qf§ * _loc6_.m_angularVelocity;
               _loc6_.§_-I5§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-zg§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-3F§)
            {
               _loc12_ = this.§_-kt§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-Lv§(_loc4_.§_-43§);
      }
      
      public function §_-Lv§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-dh§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-aG§)
         {
            _loc3_ = this.§_-7Q§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-IV§)
            {
               §_-gO§.§_-cb§[_loc5_] = _loc4_.§_-vx§[_loc5_].normalImpulse;
               §_-gO§.§_-AZ§[_loc5_] = _loc4_.§_-vx§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-dh§.PostSolve(_loc3_,§_-gO§);
            _loc2_++;
         }
      }
      
      public function §_-Fe§(param1:b2Body) : void
      {
         param1.§_-Jt§ = this.§_-OF§;
         var _loc2_:* = this.§_-OF§++;
         this.§_-eu§[_loc2_] = param1;
      }
      
      public function §_-kk§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-aG§++;
         this.§_-7Q§[_loc2_] = param1;
      }
      
      public function §_-Ow§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-3F§++;
         this.§_-kt§[_loc2_] = param1;
      }
   }
}
