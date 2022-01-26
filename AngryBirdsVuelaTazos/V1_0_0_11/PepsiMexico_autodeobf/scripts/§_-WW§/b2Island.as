package §_-WW§
{
   import §_-E6§.*;
   import §_-cw§.*;
   import §_-dx§.*;
   import §_-iO§.*;
   import §_-tK§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-oG§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-ia§;
      
      private var §_-h2§:b2ContactListener;
      
      private var §_-iW§:b2ContactSolver;
      
      b2internal var §_-nz§:Vector.<b2Body>;
      
      b2internal var §_-o3§:Vector.<b2Contact>;
      
      b2internal var §_-0r§:Vector.<b2Joint>;
      
      b2internal var §_-E3§:int;
      
      b2internal var §_-Tc§:int;
      
      b2internal var §_-6u§:int;
      
      private var §_-BV§:int;
      
      b2internal var §_-QO§:int;
      
      b2internal var §_-Xw§:int;
      
      public function b2Island()
      {
         super();
         this.§_-nz§ = new Vector.<b2Body>();
         this.§_-o3§ = new Vector.<b2Contact>();
         this.§_-0r§ = new Vector.<b2Joint>();
      }
      
      public function §_-t1§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-BV§ = param1;
         this.§_-QO§ = param2;
         this.§_-Xw§ = param3;
         this.§_-E3§ = 0;
         this.§_-6u§ = 0;
         this.§_-Tc§ = 0;
         this.§_-ia§ = param4;
         this.§_-h2§ = param5;
         this.§_-iW§ = param6;
         _loc7_ = this.§_-nz§.length;
         while(_loc7_ < param1)
         {
            this.§_-nz§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-o3§.length;
         while(_loc7_ < param2)
         {
            this.§_-o3§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-0r§.length;
         while(_loc7_ < param3)
         {
            this.§_-0r§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-Fa§() : void
      {
         this.§_-E3§ = 0;
         this.§_-6u§ = 0;
         this.§_-Tc§ = 0;
      }
      
      public function §_-Ok§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-E3§)
         {
            if((_loc6_ = this.§_-nz§[_loc4_]).§_-AY§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-Ce§.x += param1.§_-a9§ * (param2.x + _loc6_.§_-YH§ * _loc6_.§_-5E§.x);
               _loc6_.§_-Ce§.y += param1.§_-a9§ * (param2.y + _loc6_.§_-YH§ * _loc6_.§_-5E§.y);
               _loc6_.m_angularVelocity += param1.§_-a9§ * _loc6_.§_-49§ * _loc6_.§_-uX§;
               _loc6_.§_-Ce§.§_-Lp§(b2Math.§_-k3§(1 - param1.§_-a9§ * _loc6_.§_-C§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-k3§(1 - param1.§_-a9§ * _loc6_.§_-S-§,0,1);
            }
            _loc4_++;
         }
         this.§_-iW§.§_-t1§(param1,this.§_-o3§,this.§_-6u§,this.§_-ia§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-iW§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-Tc§)
         {
            (_loc7_ = this.§_-0r§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-Gh§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-Tc§)
            {
               (_loc7_ = this.§_-0r§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-Tc§)
         {
            (_loc7_ = this.§_-0r§[_loc4_]).§_-qa§();
            _loc4_++;
         }
         _loc8_.§_-qa§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-E3§)
         {
            if((_loc6_ = this.§_-nz§[_loc4_]).§_-AY§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-a9§ * _loc6_.§_-Ce§.x;
               _loc10_ = param1.§_-a9§ * _loc6_.§_-Ce§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-Ce§.Normalize();
                  _loc6_.§_-Ce§.x *= b2Settings.b2_maxTranslation * param1.§_-c-§;
                  _loc6_.§_-Ce§.y *= b2Settings.b2_maxTranslation * param1.§_-c-§;
               }
               _loc11_ = param1.§_-a9§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-c-§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-c-§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-a9§ * _loc6_.§_-Ce§.x;
               _loc6_.m_sweep.c.y += param1.§_-a9§ * _loc6_.§_-Ce§.y;
               _loc6_.m_sweep.a += param1.§_-a9§ * _loc6_.m_angularVelocity;
               _loc6_.§_-B0§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-Gq§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-Tc§)
            {
               _loc14_ = (_loc7_ = this.§_-0r§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-gV§(_loc8_.§_-cE§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-E3§)
            {
               if((_loc6_ = this.§_-nz§[_loc4_]).§_-AY§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-Sr§ & b2Body.§_-RR§) == 0)
                  {
                     _loc6_.§_-lx§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-Sr§ & b2Body.§_-RR§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-I1§(_loc6_.§_-Ce§,_loc6_.§_-Ce§) > _loc16_)
                  {
                     _loc6_.§_-lx§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-lx§ += param1.§_-a9§;
                     _loc15_ = b2Math.§_-Li§(_loc15_,_loc6_.§_-lx§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-E3§)
               {
                  (_loc6_ = this.§_-nz§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-1t§(param1:b2TimeStep) : void
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
         this.§_-iW§.§_-t1§(param1,this.§_-o3§,this.§_-6u§,this.§_-ia§);
         var _loc4_:b2ContactSolver = this.§_-iW§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-Tc§)
         {
            this.§_-0r§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-Gh§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-Tc§)
            {
               this.§_-0r§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-E3§)
         {
            if((_loc6_ = this.§_-nz§[_loc2_]).§_-AY§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-a9§ * _loc6_.§_-Ce§.x;
               _loc8_ = param1.§_-a9§ * _loc6_.§_-Ce§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-Ce§.Normalize();
                  _loc6_.§_-Ce§.x *= b2Settings.b2_maxTranslation * param1.§_-c-§;
                  _loc6_.§_-Ce§.y *= b2Settings.b2_maxTranslation * param1.§_-c-§;
               }
               _loc9_ = param1.§_-a9§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-c-§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-c-§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-a9§ * _loc6_.§_-Ce§.x;
               _loc6_.m_sweep.c.y += param1.§_-a9§ * _loc6_.§_-Ce§.y;
               _loc6_.m_sweep.a += param1.§_-a9§ * _loc6_.m_angularVelocity;
               _loc6_.§_-B0§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-Gq§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-Tc§)
            {
               _loc12_ = this.§_-0r§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-gV§(_loc4_.§_-cE§);
      }
      
      public function §_-gV§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-h2§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-6u§)
         {
            _loc3_ = this.§_-o3§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-g7§)
            {
               §_-oG§.§_-M5§[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
               §_-oG§.§_-Wu§[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-h2§.PostSolve(_loc3_,§_-oG§);
            _loc2_++;
         }
      }
      
      public function §_-Km§(param1:b2Body) : void
      {
         param1.§_-q0§ = this.§_-E3§;
         var _loc2_:* = this.§_-E3§++;
         this.§_-nz§[_loc2_] = param1;
      }
      
      public function §_-RK§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-6u§++;
         this.§_-o3§[_loc2_] = param1;
      }
      
      public function §var §(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-Tc§++;
         this.§_-0r§[_loc2_] = param1;
      }
   }
}
