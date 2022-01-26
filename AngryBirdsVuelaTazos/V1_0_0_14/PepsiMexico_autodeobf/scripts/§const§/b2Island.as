package §const§
{
   import §_-4n§.*;
   import §_-K2§.*;
   import §_-bW§.*;
   import §_-bt§.*;
   import §_-iw§.*;
   
   use namespace b2internal;
   
   public class b2Island
   {
      
      private static var §_-hr§:b2ContactImpulse = new b2ContactImpulse();
       
      
      private var §_-cp§;
      
      private var §_-WN§:b2ContactListener;
      
      private var §_-ZE§:b2ContactSolver;
      
      b2internal var §_-ZK§:Vector.<b2Body>;
      
      b2internal var §_-z6§:Vector.<b2Contact>;
      
      b2internal var §_-JM§:Vector.<b2Joint>;
      
      b2internal var §_-JW§:int;
      
      b2internal var §_-gx§:int;
      
      b2internal var §_-LQ§:int;
      
      private var §_-qD§:int;
      
      b2internal var §_-F§:int;
      
      b2internal var §_-3g§:int;
      
      public function b2Island()
      {
         super();
         this.§_-ZK§ = new Vector.<b2Body>();
         this.§_-z6§ = new Vector.<b2Contact>();
         this.§_-JM§ = new Vector.<b2Joint>();
      }
      
      public function §_-Vy§(param1:int, param2:int, param3:int, param4:*, param5:b2ContactListener, param6:b2ContactSolver) : void
      {
         var _loc7_:int = 0;
         this.§_-qD§ = param1;
         this.§_-F§ = param2;
         this.§_-3g§ = param3;
         this.§_-JW§ = 0;
         this.§_-LQ§ = 0;
         this.§_-gx§ = 0;
         this.§_-cp§ = param4;
         this.§_-WN§ = param5;
         this.§_-ZE§ = param6;
         _loc7_ = this.§_-ZK§.length;
         while(_loc7_ < param1)
         {
            this.§_-ZK§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-z6§.length;
         while(_loc7_ < param2)
         {
            this.§_-z6§[_loc7_] = null;
            _loc7_++;
         }
         _loc7_ = this.§_-JM§.length;
         while(_loc7_ < param3)
         {
            this.§_-JM§[_loc7_] = null;
            _loc7_++;
         }
      }
      
      public function §_-5E§() : void
      {
         this.§_-JW§ = 0;
         this.§_-LQ§ = 0;
         this.§_-gx§ = 0;
      }
      
      public function §_-B8§(param1:b2TimeStep, param2:b2Vec2, param3:Boolean) : void
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
         while(_loc4_ < this.§_-JW§)
         {
            if((_loc6_ = this.§_-ZK§[_loc4_]).§_-hZ§() == b2Body.b2_dynamicBody)
            {
               _loc6_.§_-eW§.x += param1.§_-ib§ * (param2.x + _loc6_.§_-RG§ * _loc6_.§_-vq§.x);
               _loc6_.§_-eW§.y += param1.§_-ib§ * (param2.y + _loc6_.§_-RG§ * _loc6_.§_-vq§.y);
               _loc6_.m_angularVelocity += param1.§_-ib§ * _loc6_.§_-n4§ * _loc6_.§_-VK§;
               _loc6_.§_-eW§.§_-wB§(b2Math.§_-1P§(1 - param1.§_-ib§ * _loc6_.§ case§,0,1));
               _loc6_.m_angularVelocity *= b2Math.§_-1P§(1 - param1.§_-ib§ * _loc6_.§_-2o§,0,1);
            }
            _loc4_++;
         }
         this.§_-ZE§.§_-Vy§(param1,this.§_-z6§,this.§_-LQ§,this.§_-cp§);
         var _loc8_:b2ContactSolver;
         (_loc8_ = this.§_-ZE§).InitVelocityConstraints(param1);
         _loc4_ = 0;
         while(_loc4_ < this.§_-gx§)
         {
            (_loc7_ = this.§_-JM§[_loc4_]).InitVelocityConstraints(param1);
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-ZG§)
         {
            _loc5_ = 0;
            while(_loc5_ < this.§_-gx§)
            {
               (_loc7_ = this.§_-JM§[_loc5_]).SolveVelocityConstraints(param1);
               _loc5_++;
            }
            _loc8_.SolveVelocityConstraints();
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < this.§_-gx§)
         {
            (_loc7_ = this.§_-JM§[_loc4_]).§_-4§();
            _loc4_++;
         }
         _loc8_.§_-4§();
         _loc4_ = 0;
         while(_loc4_ < this.§_-JW§)
         {
            if((_loc6_ = this.§_-ZK§[_loc4_]).§_-hZ§() != b2Body.b2_staticBody)
            {
               _loc9_ = param1.§_-ib§ * _loc6_.§_-eW§.x;
               _loc10_ = param1.§_-ib§ * _loc6_.§_-eW§.y;
               if(_loc9_ * _loc9_ + _loc10_ * _loc10_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-eW§.Normalize();
                  _loc6_.§_-eW§.x *= b2Settings.b2_maxTranslation * param1.§_-h4§;
                  _loc6_.§_-eW§.y *= b2Settings.b2_maxTranslation * param1.§_-h4§;
               }
               _loc11_ = param1.§_-ib§ * _loc6_.m_angularVelocity;
               if(_loc11_ * _loc11_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-h4§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-h4§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-ib§ * _loc6_.§_-eW§.x;
               _loc6_.m_sweep.c.y += param1.§_-ib§ * _loc6_.§_-eW§.y;
               _loc6_.m_sweep.a += param1.§_-ib§ * _loc6_.m_angularVelocity;
               _loc6_.§_-Zz§();
            }
            _loc4_++;
         }
         _loc4_ = 0;
         while(_loc4_ < param1.§_-GE§)
         {
            _loc12_ = _loc8_.SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
            _loc13_ = true;
            _loc5_ = 0;
            while(_loc5_ < this.§_-gx§)
            {
               _loc14_ = (_loc7_ = this.§_-JM§[_loc5_]).SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc13_ = _loc13_ && _loc14_;
               _loc5_++;
            }
            if(_loc12_ && _loc13_)
            {
               break;
            }
            _loc4_++;
         }
         this.§_-4H§(_loc8_.§_-UV§);
         if(param3)
         {
            _loc15_ = Number.MAX_VALUE;
            _loc16_ = b2Settings.b2_linearSleepTolerance * b2Settings.b2_linearSleepTolerance;
            _loc17_ = b2Settings.b2_angularSleepTolerance * b2Settings.b2_angularSleepTolerance;
            _loc4_ = 0;
            while(_loc4_ < this.§_-JW§)
            {
               if((_loc6_ = this.§_-ZK§[_loc4_]).§_-hZ§() != b2Body.b2_staticBody)
               {
                  if((_loc6_.§_-rY§ & b2Body.§get §) == 0)
                  {
                     _loc6_.§_-5g§ = 0;
                     _loc15_ = 0;
                  }
                  if((_loc6_.§_-rY§ & b2Body.§get §) == 0 || _loc6_.m_angularVelocity * _loc6_.m_angularVelocity > _loc17_ || b2Math.§_-pS§(_loc6_.§_-eW§,_loc6_.§_-eW§) > _loc16_)
                  {
                     _loc6_.§_-5g§ = 0;
                     _loc15_ = 0;
                  }
                  else
                  {
                     _loc6_.§_-5g§ += param1.§_-ib§;
                     _loc15_ = b2Math.§_-NB§(_loc15_,_loc6_.§_-5g§);
                  }
               }
               _loc4_++;
            }
            if(_loc15_ >= b2Settings.b2_timeToSleep)
            {
               _loc4_ = 0;
               while(_loc4_ < this.§_-JW§)
               {
                  (_loc6_ = this.§_-ZK§[_loc4_]).SetAwake(false);
                  _loc4_++;
               }
            }
         }
      }
      
      public function §_-HZ§(param1:b2TimeStep) : void
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
         this.§_-ZE§.§_-Vy§(param1,this.§_-z6§,this.§_-LQ§,this.§_-cp§);
         var _loc4_:b2ContactSolver = this.§_-ZE§;
         _loc2_ = 0;
         while(_loc2_ < this.§_-gx§)
         {
            this.§_-JM§[_loc2_].InitVelocityConstraints(param1);
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-ZG§)
         {
            _loc4_.SolveVelocityConstraints();
            _loc3_ = 0;
            while(_loc3_ < this.§_-gx§)
            {
               this.§_-JM§[_loc3_].SolveVelocityConstraints(param1);
               _loc3_++;
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-JW§)
         {
            if((_loc6_ = this.§_-ZK§[_loc2_]).§_-hZ§() != b2Body.b2_staticBody)
            {
               _loc7_ = param1.§_-ib§ * _loc6_.§_-eW§.x;
               _loc8_ = param1.§_-ib§ * _loc6_.§_-eW§.y;
               if(_loc7_ * _loc7_ + _loc8_ * _loc8_ > b2Settings.b2_maxTranslationSquared)
               {
                  _loc6_.§_-eW§.Normalize();
                  _loc6_.§_-eW§.x *= b2Settings.b2_maxTranslation * param1.§_-h4§;
                  _loc6_.§_-eW§.y *= b2Settings.b2_maxTranslation * param1.§_-h4§;
               }
               _loc9_ = param1.§_-ib§ * _loc6_.m_angularVelocity;
               if(_loc9_ * _loc9_ > b2Settings.b2_maxRotationSquared)
               {
                  if(_loc6_.m_angularVelocity < 0)
                  {
                     _loc6_.m_angularVelocity = -b2Settings.b2_maxRotation * param1.§_-h4§;
                  }
                  else
                  {
                     _loc6_.m_angularVelocity = b2Settings.b2_maxRotation * param1.§_-h4§;
                  }
               }
               _loc6_.m_sweep.c0.SetV(_loc6_.m_sweep.c);
               _loc6_.m_sweep.a0 = _loc6_.m_sweep.a;
               _loc6_.m_sweep.c.x += param1.§_-ib§ * _loc6_.§_-eW§.x;
               _loc6_.m_sweep.c.y += param1.§_-ib§ * _loc6_.§_-eW§.y;
               _loc6_.m_sweep.a += param1.§_-ib§ * _loc6_.m_angularVelocity;
               _loc6_.§_-Zz§();
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < param1.§_-GE§)
         {
            _loc10_ = _loc4_.SolvePositionConstraints(0.75);
            _loc11_ = true;
            _loc3_ = 0;
            while(_loc3_ < this.§_-gx§)
            {
               _loc12_ = this.§_-JM§[_loc3_].SolvePositionConstraints(b2Settings.b2_contactBaumgarte);
               _loc11_ = _loc11_ && _loc12_;
               _loc3_++;
            }
            if(_loc10_ && _loc11_)
            {
               break;
            }
            _loc2_++;
         }
         this.§_-4H§(_loc4_.§_-UV§);
      }
      
      public function §_-4H§(param1:Vector.<b2ContactConstraint>) : void
      {
         var _loc3_:b2Contact = null;
         var _loc4_:b2ContactConstraint = null;
         var _loc5_:int = 0;
         if(this.§_-WN§ == null)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-LQ§)
         {
            _loc3_ = this.§_-z6§[_loc2_];
            _loc4_ = param1[_loc2_];
            _loc5_ = 0;
            while(_loc5_ < _loc4_.§_-c1§)
            {
               §_-hr§.§_-Pe§[_loc5_] = _loc4_.points[_loc5_].normalImpulse;
               §_-hr§.§_-8b§[_loc5_] = _loc4_.points[_loc5_].tangentImpulse;
               _loc5_++;
            }
            this.§_-WN§.PostSolve(_loc3_,§_-hr§);
            _loc2_++;
         }
      }
      
      public function §_-FP§(param1:b2Body) : void
      {
         param1.§_-Zy§ = this.§_-JW§;
         var _loc2_:* = this.§_-JW§++;
         this.§_-ZK§[_loc2_] = param1;
      }
      
      public function §_-yx§(param1:b2Contact) : void
      {
         var _loc2_:* = this.§_-LQ§++;
         this.§_-z6§[_loc2_] = param1;
      }
      
      public function §_-Gy§(param1:b2Joint) : void
      {
         var _loc2_:* = this.§_-gx§++;
         this.§_-JM§[_loc2_] = param1;
      }
   }
}
