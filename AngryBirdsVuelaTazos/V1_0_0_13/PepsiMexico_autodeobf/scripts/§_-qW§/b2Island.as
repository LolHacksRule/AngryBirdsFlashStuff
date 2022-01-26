package §_-qW§
{
   import §_-2V§.*;
   import §_-SM§.*;
   import §_-gy§.*;
   import §_-wZ§.*;
   import §var§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-vS§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-DO§;
      
      private var §_-ie§:b2ContactListener;
      
      private var §_-fq§:b2ContactSolver;
      
      b2internal var §_-Ju§:Vector.<b2Body>;
      
      b2internal var §_-Cz§:Vector.<b2Contact>;
      
      b2internal var §_-Jx§:Vector.<b2Joint>;
      
      b2internal var §_-fQ§:int;
      
      b2internal var §_-ru§:int;
      
      b2internal var §_-kN§:int;
      
      private var §_-uo§:int;
      
      b2internal var §_-ek§:int;
      
      b2internal var §_-fI§:int;
      
      public function b2Island()
      {
         super();
         this.§_-Ju§ = new Vector.<b2Body>();
         this.§_-Cz§ = new Vector.<b2Contact>();
         this.§_-Jx§ = new Vector.<b2Joint>();
      }
      
      public function §_-PU§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-uo§ = param1;
         this.§_-ek§ = param2;
         this.§_-fI§ = param3;
         this.§_-fQ§ = 0;
         this.§_-kN§ = 0;
         this.§_-ru§ = 0;
         this.§_-DO§ = param4;
         this.§_-ie§ = param5;
         this.§_-fq§ = param6;
         _loc7_ = this.§_-Ju§.length;
         while(_loc7_ < param1)
         {
            this.§_-Ju§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-Cz§.length;
         while(_loc7_ < param2)
         {
            this.§_-Cz§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-Jx§.length;
         while(_loc7_ < param3)
         {
            this.§_-Jx§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-OH§() : void
      {
         this.§_-fQ§ = 0;
         this.§_-kN§ = 0;
         this.§_-ru§ = 0;
      }
      
      public function §_-Zy§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-fQ§)
         {
            if((_loc6_ = this.§_-Ju§[_loc4_]).§_-kK§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-dS§.x += param1.§_-sn§ * (param2.x + _loc6_.§_-Af§ * _loc6_.§_-hM§.x);
               _loc6_.§_-dS§.y += param1.§_-sn§ * (param2.y + _loc6_.§_-Af§ * _loc6_.§_-hM§.y);
               _loc6_.m_angularVelocity += param1.§_-sn§ * _loc6_.§_-Yq§ * _loc6_.§_-Yk§;
               _loc6_.§_-dS§.§_-ju§(b2Math.§_-vw§(1 - param1.§_-sn§ * _loc6_.§_-KX§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-vw§(1 - param1.§_-sn§ * _loc6_.§_-Cd§,0,1);
            }
            _loc4_++;
         }
         this.§_-fq§.§_-PU§(param1,this.§_-Cz§,this.§_-kN§,this.§_-DO§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-fq§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-ru§)
         {
            (_loc7_ = this.§_-Jx§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-ZZ§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-ru§)
            {
               (_loc7_ = this.§_-Jx§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-ru§)
         {
            (_loc7_ = this.§_-Jx§[_loc4_]).§_-3f§();
            _loc4_++;
         }
         _loc8_.§_-3f§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-fQ§)
         {
            if((_loc6_ = this.§_-Ju§[_loc4_]).§_-kK§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-sn§ * _loc6_.§_-dS§.x;
               _loc10_ = param1.§_-sn§ * _loc6_.§_-dS§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-dS§.Normalize();
                  _loc6_.§_-dS§.x *= b2Settings.b2_maxTranslation * param1.§_-vR§;
                  _loc6_.§_-dS§.y *= b2Settings.b2_maxTranslation * param1.§_-vR§;
               }
               _loc11_ = param1.§_-sn§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-vR§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-vR§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-sn§ * _loc6_.§_-dS§.x;
               _loc6_.m_sweep.c.y += param1.§_-sn§ * _loc6_.§_-dS§.y;
               _loc6_.m_sweep.a += param1.§_-sn§ * _loc6_.m_angularVelocity;
               _loc6_.§_-W0§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§ case§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-ru§)
            {
               _loc14_ = (_loc7_ = this.§_-Jx§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-cs§(_loc8_.§_-mt§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-fQ§)
            {
               if((_loc6_ = this.§_-Ju§[_loc4_]).§_-kK§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-X3§ & b2Body.§_-oS§) == 0)
                  {
                     _loc6_.§_-I7§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-X3§ & b2Body.§_-oS§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-WJ§(_loc6_.§_-dS§,_loc6_.§_-dS§) > _loc16_)
                  {
                     _loc6_.§_-I7§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-I7§ += param1.§_-sn§;
                     _loc15_ = b2Math.§_-U5§(_loc15_,_loc6_.§_-I7§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-fQ§)
               {
                  (_loc6_ = this.§_-Ju§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-Pg§(param1:b2TimeStep) : void
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
         this.§_-fq§.§_-PU§(param1,this.§_-Cz§,this.§_-kN§,this.§_-DO§);
         var _loc4_:b2ContactSolver = this.§_-fq§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-ru§)
         {
            this.§_-Jx§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-ZZ§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-ru§)
            {
               this.§_-Jx§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-fQ§)
         {
            if((_loc6_ = this.§_-Ju§[_loc2_]).§_-kK§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-sn§ * _loc6_.§_-dS§.x;
               _loc8_ = param1.§_-sn§ * _loc6_.§_-dS§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-dS§.Normalize();
                  _loc6_.§_-dS§.x *= b2Settings.b2_maxTranslation * param1.§_-vR§;
                  _loc6_.§_-dS§.y *= b2Settings.b2_maxTranslation * param1.§_-vR§;
               }
               _loc9_ = param1.§_-sn§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-vR§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-vR§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-sn§ * _loc6_.§_-dS§.x;
               _loc6_.m_sweep.c.y += param1.§_-sn§ * _loc6_.§_-dS§.y;
               _loc6_.m_sweep.a += param1.§_-sn§ * _loc6_.m_angularVelocity;
               _loc6_.§_-W0§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§ case§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-ru§)
            {
               _loc12_ = this.§_-Jx§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-cs§(_loc4_.§_-mt§);
      }
      
      public function §_-cs§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-ie§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-kN§)
         {
            _loc3_ = this.§_-Cz§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-cU§)
            {
               §_-vS§.§_-XU§[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
               §_-vS§.§_-2s§[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-ie§.PostSolve(_loc3_,§_-vS§);
            _loc2_++;
         }
      }
      
      public function §_-cX§(param1:b2Body) : void
      {
         param1.§_-TO§ = this.§_-fQ§;
         var _loc2_:* = this.§_-fQ§++;
         this.§_-Ju§[_loc2_] = param1;
      }
      
      public function §_-3m§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-kN§++;
         this.§_-Cz§[_loc2_] = param1;
      }
      
      public function §_-Be§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-ru§++;
         this.§_-Jx§[_loc2_] = param1;
      }
   }
}
