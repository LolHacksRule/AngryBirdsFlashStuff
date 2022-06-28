package §_-aU§
{
   import §_-09-§.*;
   import §_-0DM§.*;
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-NH§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-qZ§;
      
      private var §_-Te§:b2ContactListener;
      
      private var §_-ol§:b2ContactSolver;
      
      b2internal var §_-oa§:Vector.<b2Body>;
      
      b2internal var §_-03H§:Vector.<b2Contact>;
      
      b2internal var §_-tI§:Vector.<b2Joint>;
      
      b2internal var §_-F9§:int;
      
      b2internal var §_-ug§:int;
      
      b2internal var §_-09s§:int;
      
      private var §_-01L§:int;
      
      b2internal var §_-Fy§:int;
      
      b2internal var §_-068§:int;
      
      public function b2Island()
      {
         super();
         this.§_-oa§ = new Vector.<b2Body>();
         this.§_-03H§ = new Vector.<b2Contact>();
         this.§_-tI§ = new Vector.<b2Joint>();
      }
      
      public function §_-bL§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-01L§ = param1;
         this.§_-Fy§ = param2;
         this.§_-068§ = param3;
         this.§_-F9§ = 0;
         this.§_-09s§ = 0;
         this.§_-ug§ = 0;
         this.§_-qZ§ = param4;
         this.§_-Te§ = param5;
         this.§_-ol§ = param6;
         _loc7_ = this.§_-oa§.length;
         while(_loc7_ < param1)
         {
            this.§_-oa§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-03H§.length;
         while(_loc7_ < param2)
         {
            this.§_-03H§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-tI§.length;
         while(_loc7_ < param3)
         {
            this.§_-tI§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-p7§() : void
      {
         this.§_-F9§ = 0;
         this.§_-09s§ = 0;
         this.§_-ug§ = 0;
      }
      
      public function §_-NQ§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-F9§)
         {
            if((_loc6_ = this.§_-oa§[_loc4_]).§_-oF§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-kZ§.x += param1.§_-pn§ * (param2.x + _loc6_.§_-03A§ * _loc6_.§_-wp§.x);
               _loc6_.§_-kZ§.y += param1.§_-pn§ * (param2.y + _loc6_.§_-03A§ * _loc6_.§_-wp§.y);
               _loc6_.m_angularVelocity += param1.§_-pn§ * _loc6_.§_-Dz§ * _loc6_.§_-cH§;
               _loc6_.§_-kZ§.§_-mx§(b2Math.§_-ZK§(1 - param1.§_-pn§ * _loc6_.§_-aS§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-ZK§(1 - param1.§_-pn§ * _loc6_.§_-cz§,0,1);
            }
            _loc4_++;
         }
         this.§_-ol§.§_-bL§(param1,this.§_-03H§,this.§_-09s§,this.§_-qZ§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-ol§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-ug§)
         {
            (_loc7_ = this.§_-tI§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-lE§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-ug§)
            {
               (_loc7_ = this.§_-tI§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-ug§)
         {
            (_loc7_ = this.§_-tI§[_loc4_]).§_-dm§();
            _loc4_++;
         }
         _loc8_.§_-dm§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-F9§)
         {
            if((_loc6_ = this.§_-oa§[_loc4_]).§_-oF§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-pn§ * _loc6_.§_-kZ§.x;
               _loc10_ = param1.§_-pn§ * _loc6_.§_-kZ§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-kZ§.Normalize();
                  _loc6_.§_-kZ§.x *= b2Settings.b2_maxTranslation * param1.§_-00-§;
                  _loc6_.§_-kZ§.y *= b2Settings.b2_maxTranslation * param1.§_-00-§;
               }
               _loc11_ = param1.§_-pn§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-00-§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-00-§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-pn§ * _loc6_.§_-kZ§.x;
               _loc6_.m_sweep.c.y += param1.§_-pn§ * _loc6_.§_-kZ§.y;
               _loc6_.m_sweep.a += param1.§_-pn§ * _loc6_.m_angularVelocity;
               _loc6_.§_-da§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-u5§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-ug§)
            {
               _loc14_ = (_loc7_ = this.§_-tI§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-0B5§(_loc8_.§_-PC§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-F9§)
            {
               if((_loc6_ = this.§_-oa§[_loc4_]).§_-oF§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-7R§ & b2Body.§_-W7§) == 0)
                  {
                     _loc6_.§_-yN§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-7R§ & b2Body.§_-W7§) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-r8§(_loc6_.§_-kZ§,_loc6_.§_-kZ§) > _loc16_)
                  {
                     _loc6_.§_-yN§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-yN§ += param1.§_-pn§;
                     _loc15_ = b2Math.§_-fa§(_loc15_,_loc6_.§_-yN§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-F9§)
               {
                  (_loc6_ = this.§_-oa§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-Fk§(param1:b2TimeStep) : void
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
         this.§_-ol§.§_-bL§(param1,this.§_-03H§,this.§_-09s§,this.§_-qZ§);
         var _loc4_:b2ContactSolver = this.§_-ol§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-ug§)
         {
            this.§_-tI§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-lE§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-ug§)
            {
               this.§_-tI§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-F9§)
         {
            if((_loc6_ = this.§_-oa§[_loc2_]).§_-oF§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-pn§ * _loc6_.§_-kZ§.x;
               _loc8_ = param1.§_-pn§ * _loc6_.§_-kZ§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-kZ§.Normalize();
                  _loc6_.§_-kZ§.x *= b2Settings.b2_maxTranslation * param1.§_-00-§;
                  _loc6_.§_-kZ§.y *= b2Settings.b2_maxTranslation * param1.§_-00-§;
               }
               _loc9_ = param1.§_-pn§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-00-§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-00-§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-pn§ * _loc6_.§_-kZ§.x;
               _loc6_.m_sweep.c.y += param1.§_-pn§ * _loc6_.§_-kZ§.y;
               _loc6_.m_sweep.a += param1.§_-pn§ * _loc6_.m_angularVelocity;
               _loc6_.§_-da§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-u5§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-ug§)
            {
               _loc12_ = this.§_-tI§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-0B5§(_loc4_.§_-PC§);
      }
      
      public function §_-0B5§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-Te§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-09s§)
         {
            _loc3_ = this.§_-03H§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-0F6§)
            {
               §_-NH§.§_-vM§[_loc5_] = _loc4_.§_-0BA§[_loc5_].normalImpulse;
               §_-NH§.§_-Tg§[_loc5_] = _loc4_.§_-0BA§[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-Te§.PostSolve(_loc3_,§_-NH§);
            _loc2_++;
         }
      }
      
      public function §_-gW§(param1:b2Body) : void
      {
         param1.§_-Sb§ = this.§_-F9§;
         var _loc2_:* = this.§_-F9§++;
         this.§_-oa§[_loc2_] = param1;
      }
      
      public function §_-ms§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-09s§++;
         this.§_-03H§[_loc2_] = param1;
      }
      
      public function §_-9S§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-ug§++;
         this.§_-tI§[_loc2_] = param1;
      }
   }
}
