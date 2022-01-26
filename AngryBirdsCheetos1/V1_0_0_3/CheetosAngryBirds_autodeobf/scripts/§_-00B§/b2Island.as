package §_-00B§
{
   import §_-E§.*;
   import §_-Jf§.*;
   import §_-Kz§.*;
   import §_-Vn§.*;
   import §_-fl§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-D§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-m7§;
      
      private var §_-IB§:b2ContactListener;
      
      private var §_-bx§:b2ContactSolver;
      
      b2internal var §_-Pe§:Vector.<b2Body>;
      
      b2internal var §_-Jq§:Vector.<b2Contact>;
      
      b2internal var §_-cX§:Vector.<b2Joint>;
      
      b2internal var §_-hT§:int;
      
      b2internal var §_-rJ§:int;
      
      b2internal var §_-6k§:int;
      
      private var §_-42§:int;
      
      b2internal var §_-Fe§:int;
      
      b2internal var §_-RC§:int;
      
      public function b2Island()
      {
         super();
         this.§_-Pe§ = new Vector.<b2Body>();
         this.§_-Jq§ = new Vector.<b2Contact>();
         this.§_-cX§ = new Vector.<b2Joint>();
      }
      
      public function §_-yN§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-42§ = param1;
         this.§_-Fe§ = param2;
         this.§_-RC§ = param3;
         this.§_-hT§ = 0;
         this.§_-6k§ = 0;
         this.§_-rJ§ = 0;
         this.§_-m7§ = param4;
         this.§_-IB§ = param5;
         this.§_-bx§ = param6;
         _loc7_ = this.§_-Pe§.length;
         while(_loc7_ < param1)
         {
            this.§_-Pe§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-Jq§.length;
         while(_loc7_ < param2)
         {
            this.§_-Jq§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-cX§.length;
         while(_loc7_ < param3)
         {
            this.§_-cX§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-SP§() : void
      {
         this.§_-hT§ = 0;
         this.§_-6k§ = 0;
         this.§_-rJ§ = 0;
      }
      
      public function §_-O8§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-hT§)
         {
            if((_loc6_ = this.§_-Pe§[_loc4_]).§_-n§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-Yd§.x += param1.§_-Km§ * (param2.x + _loc6_.§_-zL§ * _loc6_.§_-4s§.x);
               _loc6_.§_-Yd§.y += param1.§_-Km§ * (param2.y + _loc6_.§_-zL§ * _loc6_.§_-4s§.y);
               _loc6_.m_angularVelocity += param1.§_-Km§ * _loc6_.§_-aJ§ * _loc6_.§_-Ri§;
               _loc6_.§_-Yd§.§_-Hx§(b2Math.§_-a4§(1 - param1.§_-Km§ * _loc6_.§_-ka§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-a4§(1 - param1.§_-Km§ * _loc6_.§_-MV§,0,1);
            }
            _loc4_++;
         }
         this.§_-bx§.§_-yN§(param1,this.§_-Jq§,this.§_-6k§,this.§_-m7§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-bx§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-rJ§)
         {
            (_loc7_ = this.§_-cX§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-xq§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-rJ§)
            {
               (_loc7_ = this.§_-cX§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-rJ§)
         {
            (_loc7_ = this.§_-cX§[_loc4_]).§_-h§();
            _loc4_++;
         }
         _loc8_.§_-h§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-hT§)
         {
            if((_loc6_ = this.§_-Pe§[_loc4_]).§_-n§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-Km§ * _loc6_.§_-Yd§.x;
               _loc10_ = param1.§_-Km§ * _loc6_.§_-Yd§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-Yd§.Normalize();
                  _loc6_.§_-Yd§.x *= b2Settings.b2_maxTranslation * param1.§_-FS§;
                  _loc6_.§_-Yd§.y *= b2Settings.b2_maxTranslation * param1.§_-FS§;
               }
               _loc11_ = param1.§_-Km§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-FS§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-FS§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-Km§ * _loc6_.§_-Yd§.x;
               _loc6_.m_sweep.c.y += param1.§_-Km§ * _loc6_.§_-Yd§.y;
               _loc6_.m_sweep.a += param1.§_-Km§ * _loc6_.m_angularVelocity;
               _loc6_.§_-X2§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-BQ§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-rJ§)
            {
               _loc14_ = (_loc7_ = this.§_-cX§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-qn§(_loc8_.§_-l0§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-hT§)
            {
               if((_loc6_ = this.§_-Pe§[_loc4_]).§_-n§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-Tw§ & b2Body.§_-Qg§) == 0)
                  {
                     _loc6_.§_-Kd§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-Tw§ & b2Body.§_-Qg§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-kH§(_loc6_.§_-Yd§,_loc6_.§_-Yd§) > _loc16_)
                  {
                     _loc6_.§_-Kd§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-Kd§ += param1.§_-Km§;
                     _loc15_ = b2Math.§_-6A§(_loc15_,_loc6_.§_-Kd§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-hT§)
               {
                  (_loc6_ = this.§_-Pe§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-HU§(param1:b2TimeStep) : void
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
         this.§_-bx§.§_-yN§(param1,this.§_-Jq§,this.§_-6k§,this.§_-m7§);
         var _loc4_:b2ContactSolver = this.§_-bx§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-rJ§)
         {
            this.§_-cX§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-xq§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-rJ§)
            {
               this.§_-cX§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-hT§)
         {
            if((_loc6_ = this.§_-Pe§[_loc2_]).§_-n§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-Km§ * _loc6_.§_-Yd§.x;
               _loc8_ = param1.§_-Km§ * _loc6_.§_-Yd§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-Yd§.Normalize();
                  _loc6_.§_-Yd§.x *= b2Settings.b2_maxTranslation * param1.§_-FS§;
                  _loc6_.§_-Yd§.y *= b2Settings.b2_maxTranslation * param1.§_-FS§;
               }
               _loc9_ = param1.§_-Km§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-FS§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-FS§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-Km§ * _loc6_.§_-Yd§.x;
               _loc6_.m_sweep.c.y += param1.§_-Km§ * _loc6_.§_-Yd§.y;
               _loc6_.m_sweep.a += param1.§_-Km§ * _loc6_.m_angularVelocity;
               _loc6_.§_-X2§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-BQ§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-rJ§)
            {
               _loc12_ = this.§_-cX§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-qn§(_loc4_.§_-l0§);
      }
      
      public function §_-qn§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-IB§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-6k§)
         {
            _loc3_ = this.§_-Jq§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-wj§)
            {
               §_-D§.§_-XY§[_loc5_] = _loc4_.§_-AX§[_loc5_].normalImpulse;
               §_-D§.§_-FO§[_loc5_] = _loc4_.§_-AX§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-IB§.PostSolve(_loc3_,§_-D§);
            _loc2_++;
         }
      }
      
      public function § case§(param1:b2Body) : void
      {
         param1.§_-G4§ = this.§_-hT§;
         var _loc2_:* = this.§_-hT§++;
         this.§_-Pe§[_loc2_] = param1;
      }
      
      public function §_-Lk§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-6k§++;
         this.§_-Jq§[_loc2_] = param1;
      }
      
      public function §_-Xh§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-rJ§++;
         this.§_-cX§[_loc2_] = param1;
      }
   }
}
