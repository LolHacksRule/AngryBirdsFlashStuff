package §_-rg§
{
   import §_-DM§.*;
   import §_-Et§.*;
   import §_-Rb§.*;
   import §_-Zl§.*;
   import §_-uS§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-66§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-if§;
      
      private var §_-Wk§:b2ContactListener;
      
      private var §_-Ne§:b2ContactSolver;
      
      b2internal var §_-0k§:Vector.<b2Body>;
      
      b2internal var §_-TH§:Vector.<b2Contact>;
      
      b2internal var §_-nX§:Vector.<b2Joint>;
      
      b2internal var §_-FG§:int;
      
      b2internal var §_-lM§:int;
      
      b2internal var §_-88§:int;
      
      private var §_-n3§:int;
      
      b2internal var §const§:int;
      
      b2internal var §_-tb§:int;
      
      public function b2Island()
      {
         super();
         this.§_-0k§ = new Vector.<b2Body>();
         this.§_-TH§ = new Vector.<b2Contact>();
         this.§_-nX§ = new Vector.<b2Joint>();
      }
      
      public function §_-E0§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-n3§ = param1;
         this.§const§ = param2;
         this.§_-tb§ = param3;
         this.§_-FG§ = 0;
         this.§_-88§ = 0;
         this.§_-lM§ = 0;
         this.§_-if§ = param4;
         this.§_-Wk§ = param5;
         this.§_-Ne§ = param6;
         _loc7_ = this.§_-0k§.length;
         while(_loc7_ < param1)
         {
            this.§_-0k§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-TH§.length;
         while(_loc7_ < param2)
         {
            this.§_-TH§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-nX§.length;
         while(_loc7_ < param3)
         {
            this.§_-nX§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-H0§() : void
      {
         this.§_-FG§ = 0;
         this.§_-88§ = 0;
         this.§_-lM§ = 0;
      }
      
      public function §_-c7§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-FG§)
         {
            if((_loc6_ = this.§_-0k§[_loc4_]).§_-Iy§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-Ng§.x += param1.§_-Vj§ * (param2.x + _loc6_.§_-s§ * _loc6_.§_-6I§.x);
               _loc6_.§_-Ng§.y += param1.§_-Vj§ * (param2.y + _loc6_.§_-s§ * _loc6_.§_-6I§.y);
               _loc6_.m_angularVelocity += param1.§_-Vj§ * _loc6_.§_-TW§ * _loc6_.§_-Cq§;
               _loc6_.§_-Ng§.§_-v8§(b2Math.§_-Kz§(1 - param1.§_-Vj§ * _loc6_.§_-Iu§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-Kz§(1 - param1.§_-Vj§ * _loc6_.§_-O0§,0,1);
            }
            _loc4_++;
         }
         this.§_-Ne§.§_-E0§(param1,this.§_-TH§,this.§_-88§,this.§_-if§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-Ne§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-lM§)
         {
            (_loc7_ = this.§_-nX§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-6-§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-lM§)
            {
               (_loc7_ = this.§_-nX§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-lM§)
         {
            (_loc7_ = this.§_-nX§[_loc4_]).§_-u4§();
            _loc4_++;
         }
         _loc8_.§_-u4§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-FG§)
         {
            if((_loc6_ = this.§_-0k§[_loc4_]).§_-Iy§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-Vj§ * _loc6_.§_-Ng§.x;
               _loc10_ = param1.§_-Vj§ * _loc6_.§_-Ng§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-Ng§.Normalize();
                  _loc6_.§_-Ng§.x *= b2Settings.b2_maxTranslation * param1.§_-Ub§;
                  _loc6_.§_-Ng§.y *= b2Settings.b2_maxTranslation * param1.§_-Ub§;
               }
               _loc11_ = param1.§_-Vj§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-Ub§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-Ub§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-Vj§ * _loc6_.§_-Ng§.x;
               _loc6_.m_sweep.c.y += param1.§_-Vj§ * _loc6_.§_-Ng§.y;
               _loc6_.m_sweep.a += param1.§_-Vj§ * _loc6_.m_angularVelocity;
               _loc6_.§_-Ax§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-7D§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-lM§)
            {
               _loc14_ = (_loc7_ = this.§_-nX§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-8K§(_loc8_.§_-Bm§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-FG§)
            {
               if((_loc6_ = this.§_-0k§[_loc4_]).§_-Iy§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-2F§ & b2Body.§_-Pu§) == 0)
                  {
                     _loc6_.§_-VG§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-2F§ & b2Body.§_-Pu§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-Uf§(_loc6_.§_-Ng§,_loc6_.§_-Ng§) > _loc16_)
                  {
                     _loc6_.§_-VG§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-VG§ += param1.§_-Vj§;
                     _loc15_ = b2Math.§_-9u§(_loc15_,_loc6_.§_-VG§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-FG§)
               {
                  (_loc6_ = this.§_-0k§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-ks§(param1:b2TimeStep) : void
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
         this.§_-Ne§.§_-E0§(param1,this.§_-TH§,this.§_-88§,this.§_-if§);
         var _loc4_:b2ContactSolver = this.§_-Ne§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-lM§)
         {
            this.§_-nX§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-6-§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-lM§)
            {
               this.§_-nX§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-FG§)
         {
            if((_loc6_ = this.§_-0k§[_loc2_]).§_-Iy§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-Vj§ * _loc6_.§_-Ng§.x;
               _loc8_ = param1.§_-Vj§ * _loc6_.§_-Ng§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-Ng§.Normalize();
                  _loc6_.§_-Ng§.x *= b2Settings.b2_maxTranslation * param1.§_-Ub§;
                  _loc6_.§_-Ng§.y *= b2Settings.b2_maxTranslation * param1.§_-Ub§;
               }
               _loc9_ = param1.§_-Vj§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-Ub§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-Ub§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-Vj§ * _loc6_.§_-Ng§.x;
               _loc6_.m_sweep.c.y += param1.§_-Vj§ * _loc6_.§_-Ng§.y;
               _loc6_.m_sweep.a += param1.§_-Vj§ * _loc6_.m_angularVelocity;
               _loc6_.§_-Ax§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-7D§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-lM§)
            {
               _loc12_ = this.§_-nX§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-8K§(_loc4_.§_-Bm§);
      }
      
      public function §_-8K§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-Wk§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-88§)
         {
            _loc3_ = this.§_-TH§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-as§)
            {
               §_-66§.§_-pG§[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
               §_-66§.§_-f5§[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-Wk§.PostSolve(_loc3_,§_-66§);
            _loc2_++;
         }
      }
      
      public function §_-T1§(param1:b2Body) : void
      {
         param1.§_-OV§ = this.§_-FG§;
         var _loc2_:* = this.§_-FG§++;
         this.§_-0k§[_loc2_] = param1;
      }
      
      public function §_-ai§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-88§++;
         this.§_-TH§[_loc2_] = param1;
      }
      
      public function §_-RM§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-lM§++;
         this.§_-nX§[_loc2_] = param1;
      }
   }
}
