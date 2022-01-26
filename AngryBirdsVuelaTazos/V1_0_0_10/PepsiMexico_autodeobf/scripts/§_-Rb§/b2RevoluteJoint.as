package §_-Rb§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Mat33;
   import §_-Zl§.b2Math;
   import §_-Zl§.b2Vec2;
   import §_-Zl§.b2Vec3;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-8W§:b2Vec2 = new b2Vec2();
       
      
      private var §_-1c§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-nc§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-ro§:b2Vec3;
      
      private var §_-IB§:Number;
      
      private var §_-qa§:b2Mat33;
      
      private var §_-4K§:Number;
      
      private var §_-BR§:Boolean;
      
      private var §_-fz§:Number;
      
      private var §_-Ug§:Number;
      
      private var §_-p1§:Boolean;
      
      private var §_-t8§:Number;
      
      private var §_-5a§:Number;
      
      private var §_-Ty§:Number;
      
      private var §_-vI§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-1c§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-nc§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-ro§ = new b2Vec3();
         this.§_-qa§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-24§);
         this.m_localAnchor2.SetV(param1.§_-2Z§);
         this.§_-t8§ = param1.§_-Hj§;
         this.§_-ro§.§_-Vw§();
         this.§_-IB§ = 0;
         this.§_-5a§ = param1.§_-DK§;
         this.§_-Ty§ = param1.§_-Em§;
         this.§_-fz§ = param1.§_-Sx§;
         this.§_-Ug§ = param1.motorSpeed;
         this.§_-p1§ = param1.§_-Qa§;
         this.§_-BR§ = param1.§_-ff§;
         this.§_-vI§ = b2internal::native;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Rz.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-GP.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-ro§.x,param1 * this.§_-ro§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-ro§.z;
      }
      
      public function §_-Cy§() : Number
      {
         return b2internal::_-GP.m_sweep.a - b2internal::_-Rz.m_sweep.a - this.§_-t8§;
      }
      
      public function §_-Mu§() : Number
      {
         return b2internal::_-GP.m_angularVelocity - b2internal::_-Rz.m_angularVelocity;
      }
      
      public function §_-0H§() : Boolean
      {
         return this.§_-p1§;
      }
      
      public function §_-B8§(param1:Boolean) : void
      {
         this.§_-p1§ = param1;
      }
      
      public function §_-Cp§() : Number
      {
         return this.§_-5a§;
      }
      
      public function §_-We§() : Number
      {
         return this.§_-Ty§;
      }
      
      public function §_-L-§(param1:Number, param2:Number) : void
      {
         this.§_-5a§ = param1;
         this.§_-Ty§ = param2;
      }
      
      public function §_-rW§() : Boolean
      {
         b2internal::_-Rz.SetAwake(true);
         b2internal::_-GP.SetAwake(true);
         return this.§_-BR§;
      }
      
      public function §_-k8§(param1:Boolean) : void
      {
         this.§_-BR§ = param1;
      }
      
      public function §_-1W§(param1:Number) : void
      {
         b2internal::_-Rz.SetAwake(true);
         b2internal::_-GP.SetAwake(true);
         this.§_-Ug§ = param1;
      }
      
      public function §_-la§() : Number
      {
         return this.§_-Ug§;
      }
      
      public function §_-QD§(param1:Number) : void
      {
         this.§_-fz§ = param1;
      }
      
      public function §_-5T§() : Number
      {
         return this.§_-fz§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc2_ = b2internal::_-Rz;
         _loc3_ = b2internal::_-GP;
         if(this.§_-BR§ || this.§_-p1§)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.§_-s§;
         var _loc11_:Number = _loc3_.§_-s§;
         var _loc12_:Number = _loc2_.§_-TW§;
         var _loc13_:Number = _loc3_.§_-TW§;
         this.§_-qa§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-qa§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-qa§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-qa§.col1.y = this.§_-qa§.col2.x;
         this.§_-qa§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-qa§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-qa§.col1.z = this.§_-qa§.col3.x;
         this.§_-qa§.col2.z = this.§_-qa§.col3.y;
         this.§_-qa§.col3.z = _loc12_ + _loc13_;
         this.§_-4K§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-BR§ == false)
         {
            this.§_-IB§ = 0;
         }
         if(this.§_-p1§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-t8§;
            if(b2Math.§_-Os§(this.§_-Ty§ - this.§_-5a§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-vI§ = b2internal::_-dd;
            }
            else if(_loc14_ <= this.§_-5a§)
            {
               if(this.§_-vI§ != b2internal::_-nw)
               {
                  this.§_-ro§.z = 0;
               }
               this.§_-vI§ = b2internal::_-nw;
            }
            else if(_loc14_ >= this.§_-Ty§)
            {
               if(this.§_-vI§ != b2internal::_-WR)
               {
                  this.§_-ro§.z = 0;
               }
               this.§_-vI§ = b2internal::_-WR;
            }
            else
            {
               this.§_-vI§ = b2internal::native;
               this.§_-ro§.z = 0;
            }
         }
         else
         {
            this.§_-vI§ = b2internal::native;
         }
         if(param1.§_-Fx§)
         {
            this.§_-ro§.x *= param1.§_-4i§;
            this.§_-ro§.y *= param1.§_-4i§;
            this.§_-IB§ *= param1.§_-4i§;
            _loc15_ = this.§_-ro§.x;
            _loc16_ = this.§_-ro§.y;
            _loc2_.§_-Ng§.x -= _loc10_ * _loc15_;
            _loc2_.§_-Ng§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-IB§ + this.§_-ro§.z);
            _loc3_.§_-Ng§.x += _loc11_ * _loc15_;
            _loc3_.§_-Ng§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-IB§ + this.§_-ro§.z);
         }
         else
         {
            this.§_-ro§.§_-Vw§();
            this.§_-IB§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-Rz;
         var _loc3_:b2Body = b2internal::_-GP;
         var _loc11_:b2Vec2 = _loc2_.§_-Ng§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-Ng§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-s§;
         var _loc16_:Number = _loc3_.§_-s§;
         var _loc17_:Number = _loc2_.§_-TW§;
         var _loc18_:Number = _loc3_.§_-TW§;
         if(this.§_-BR§ && this.§_-vI§ != b2internal::_-dd)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-Ug§;
            _loc20_ = this.§_-4K§ * -_loc19_;
            _loc21_ = this.§_-IB§;
            _loc22_ = param1.§_-Vj§ * this.§_-fz§;
            this.§_-IB§ = b2Math.§_-Kz§(this.§_-IB§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-IB§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-p1§ && this.§_-vI§ != b2internal::native)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc23_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc24_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc25_ = _loc14_ - _loc12_;
            this.§_-qa§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-vI§ == b2internal::_-dd)
            {
               this.§_-ro§.§_-Ec§(this.impulse3);
            }
            else if(this.§_-vI§ == b2internal::_-nw)
            {
               if((_loc6_ = this.§_-ro§.z + this.impulse3.z) < 0)
               {
                  this.§_-qa§.Solve22(this.§_-nc§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-nc§.x;
                  this.impulse3.y = this.§_-nc§.y;
                  this.impulse3.z = -this.§_-ro§.z;
                  this.§_-ro§.x += this.§_-nc§.x;
                  this.§_-ro§.y += this.§_-nc§.y;
                  this.§_-ro§.z = 0;
               }
            }
            else if(this.§_-vI§ == b2internal::_-WR)
            {
               if((_loc6_ = this.§_-ro§.z + this.impulse3.z) > 0)
               {
                  this.§_-qa§.Solve22(this.§_-nc§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-nc§.x;
                  this.impulse3.y = this.§_-nc§.y;
                  this.impulse3.z = -this.§_-ro§.z;
                  this.§_-ro§.x += this.§_-nc§.x;
                  this.§_-ro§.y += this.§_-nc§.y;
                  this.§_-ro§.z = 0;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc26_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc27_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§_-qa§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-ro§.x += this.impulse2.x;
            this.§_-ro§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-Ng§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-Ng§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:b2Body = b2internal::_-Rz;
         var _loc6_:b2Body = b2internal::_-GP;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-p1§ && this.§_-vI§ != b2internal::native)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-t8§;
            _loc26_ = 0;
            if(this.§_-vI§ == b2internal::_-dd)
            {
               _loc3_ = b2Math.§_-Kz§(_loc25_ - this.§_-5a§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-4K§ * _loc3_;
               _loc7_ = b2Math.§_-Os§(_loc3_);
            }
            else if(this.§_-vI§ == b2internal::_-nw)
            {
               _loc3_ = _loc25_ - this.§_-5a§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-Kz§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-4K§ * _loc3_;
            }
            else if(this.§_-vI§ == b2internal::_-WR)
            {
               _loc3_ = _loc25_ - this.§_-Ty§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-Kz§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-4K§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-TW§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-TW§ * _loc26_;
            _loc5_.§_-Ax§();
            _loc6_.§_-Ax§();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc12_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc13_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc12_ + _loc4_.col2.x * _loc13_;
         _loc13_ = _loc4_.col1.y * _loc12_ + _loc4_.col2.y * _loc13_;
         _loc12_ = _loc9_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc14_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc15_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc9_ = _loc4_.col1.x * _loc14_ + _loc4_.col2.x * _loc15_;
         _loc15_ = _loc4_.col1.y * _loc14_ + _loc4_.col2.y * _loc15_;
         _loc14_ = _loc9_;
         var _loc16_:Number = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
         var _loc17_:Number = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         var _loc18_:Number = _loc16_ * _loc16_ + _loc17_ * _loc17_;
         var _loc19_:Number;
         _loc8_ = _loc19_ = Math.sqrt(_loc18_);
         var _loc20_:Number = _loc5_.§_-s§;
         var _loc21_:Number = _loc6_.§_-s§;
         var _loc22_:Number = _loc5_.§_-TW§;
         var _loc23_:Number = _loc6_.§_-TW§;
         var _loc24_:Number = 10 * b2Settings.b2_linearSlop;
         if(_loc18_ > _loc24_ * _loc24_)
         {
            _loc27_ = _loc16_ / _loc19_;
            _loc28_ = _loc17_ / _loc19_;
            _loc29_ = _loc20_ + _loc21_;
            _loc10_ = (_loc30_ = 1 / _loc29_) * -_loc16_;
            _loc11_ = _loc30_ * -_loc17_;
            _loc31_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc31_ * _loc20_ * _loc10_;
            _loc5_.m_sweep.c.y -= _loc31_ * _loc20_ * _loc11_;
            _loc6_.m_sweep.c.x += _loc31_ * _loc21_ * _loc10_;
            _loc6_.m_sweep.c.y += _loc31_ * _loc21_ * _loc11_;
            _loc16_ = _loc6_.m_sweep.c.x + _loc14_ - _loc5_.m_sweep.c.x - _loc12_;
            _loc17_ = _loc6_.m_sweep.c.y + _loc15_ - _loc5_.m_sweep.c.y - _loc13_;
         }
         this.K1.col1.x = _loc20_ + _loc21_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc20_ + _loc21_;
         this.K2.col1.x = _loc22_ * _loc13_ * _loc13_;
         this.K2.col2.x = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col1.y = -_loc22_ * _loc12_ * _loc13_;
         this.K2.col2.y = _loc22_ * _loc12_ * _loc12_;
         this.K3.col1.x = _loc23_ * _loc15_ * _loc15_;
         this.K3.col2.x = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col1.y = -_loc23_ * _loc14_ * _loc15_;
         this.K3.col2.y = _loc23_ * _loc14_ * _loc14_;
         this.§_-1c§.§_-Xw§(this.K1);
         this.§_-1c§.§_-Ph§(this.K2);
         this.§_-1c§.§_-Ph§(this.K3);
         this.§_-1c§.§_-c7§(§_-8W§,-_loc16_,-_loc17_);
         _loc10_ = §_-8W§.x;
         _loc11_ = §_-8W§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-s§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-s§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-TW§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-s§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-s§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-TW§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-Ax§();
         _loc6_.§_-Ax§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
