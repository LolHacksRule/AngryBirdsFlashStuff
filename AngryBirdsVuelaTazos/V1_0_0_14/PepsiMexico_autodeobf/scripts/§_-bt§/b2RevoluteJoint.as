package §_-bt§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Mat33;
   import §_-4n§.b2Math;
   import §_-4n§.b2Vec2;
   import §_-4n§.b2Vec3;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §_-fl§:b2Vec2 = new b2Vec2();
       
      
      private var §_-s3§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §_-mI§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §_-A0§:b2Vec3;
      
      private var §_-Nh§:Number;
      
      private var §_-dp§:b2Mat33;
      
      private var §_-b6§:Number;
      
      private var §_-ZF§:Boolean;
      
      private var §_-jF§:Number;
      
      private var §_-Fn§:Number;
      
      private var §_-5b§:Boolean;
      
      private var §_-DL§:Number;
      
      private var §_-nG§:Number;
      
      private var §_-5x§:Number;
      
      private var §_-rj§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§_-s3§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§_-mI§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-A0§ = new b2Vec3();
         this.§_-dp§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-5O§);
         this.m_localAnchor2.SetV(param1.§_-q3§);
         this.§_-DL§ = param1.§_-Xr§;
         this.§_-A0§.§_-IE§();
         this.§_-Nh§ = 0;
         this.§_-nG§ = param1.§_-mD§;
         this.§_-5x§ = param1.§_-DZ§;
         this.§_-jF§ = param1.§_-uq§;
         this.§_-Fn§ = param1.motorSpeed;
         this.§_-5b§ = param1.§_-Mf§;
         this.§_-ZF§ = param1.§_-So§;
         this.§_-rj§ = b2internal::_-zJ;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-ba.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-pK.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§_-A0§.x,param1 * this.§_-A0§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-A0§.z;
      }
      
      public function §_-mW§() : Number
      {
         return b2internal::_-pK.m_sweep.a - b2internal::_-ba.m_sweep.a - this.§_-DL§;
      }
      
      public function §_-uk§() : Number
      {
         return b2internal::_-pK.m_angularVelocity - b2internal::_-ba.m_angularVelocity;
      }
      
      public function §_-Jk§() : Boolean
      {
         return this.§_-5b§;
      }
      
      public function §_-yE§(param1:Boolean) : void
      {
         this.§_-5b§ = param1;
      }
      
      public function §_-o7§() : Number
      {
         return this.§_-nG§;
      }
      
      public function §_-k7§() : Number
      {
         return this.§_-5x§;
      }
      
      public function §_-Ah§(param1:Number, param2:Number) : void
      {
         this.§_-nG§ = param1;
         this.§_-5x§ = param2;
      }
      
      public function §_-RK§() : Boolean
      {
         b2internal::_-ba.SetAwake(true);
         b2internal::_-pK.SetAwake(true);
         return this.§_-ZF§;
      }
      
      public function §_-Ut§(param1:Boolean) : void
      {
         this.§_-ZF§ = param1;
      }
      
      public function §_-oW§(param1:Number) : void
      {
         b2internal::_-ba.SetAwake(true);
         b2internal::_-pK.SetAwake(true);
         this.§_-Fn§ = param1;
      }
      
      public function §_-L5§() : Number
      {
         return this.§_-Fn§;
      }
      
      public function §_-vy§(param1:Number) : void
      {
         this.§_-jF§ = param1;
      }
      
      public function §_-wY§() : Number
      {
         return this.§_-jF§;
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
         _loc2_ = b2internal::_-ba;
         _loc3_ = b2internal::_-pK;
         if(this.§_-ZF§ || this.§_-5b§)
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
         var _loc10_:Number = _loc2_.§_-RG§;
         var _loc11_:Number = _loc3_.§_-RG§;
         var _loc12_:Number = _loc2_.§_-n4§;
         var _loc13_:Number = _loc3_.§_-n4§;
         this.§_-dp§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§_-dp§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§_-dp§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§_-dp§.col1.y = this.§_-dp§.col2.x;
         this.§_-dp§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§_-dp§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§_-dp§.col1.z = this.§_-dp§.col3.x;
         this.§_-dp§.col2.z = this.§_-dp§.col3.y;
         this.§_-dp§.col3.z = _loc12_ + _loc13_;
         this.§_-b6§ = 1 / (_loc12_ + _loc13_);
         if(this.§_-ZF§ == false)
         {
            this.§_-Nh§ = 0;
         }
         if(this.§_-5b§)
         {
            _loc14_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§_-DL§;
            if(b2Math.§_-R3§(this.§_-5x§ - this.§_-nG§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§_-rj§ = b2internal::_-5i;
            }
            else if(_loc14_ <= this.§_-nG§)
            {
               if(this.§_-rj§ != b2internal::_-Ep)
               {
                  this.§_-A0§.z = 0;
               }
               this.§_-rj§ = b2internal::_-Ep;
            }
            else if(_loc14_ >= this.§_-5x§)
            {
               if(this.§_-rj§ != b2internal::_-45)
               {
                  this.§_-A0§.z = 0;
               }
               this.§_-rj§ = b2internal::_-45;
            }
            else
            {
               this.§_-rj§ = b2internal::_-zJ;
               this.§_-A0§.z = 0;
            }
         }
         else
         {
            this.§_-rj§ = b2internal::_-zJ;
         }
         if(param1.§_-lv§)
         {
            this.§_-A0§.x *= param1.§_-4Y§;
            this.§_-A0§.y *= param1.§_-4Y§;
            this.§_-Nh§ *= param1.§_-4Y§;
            _loc15_ = this.§_-A0§.x;
            _loc16_ = this.§_-A0§.y;
            _loc2_.§_-eW§.x -= _loc10_ * _loc15_;
            _loc2_.§_-eW§.y -= _loc10_ * _loc16_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc16_ - _loc7_ * _loc15_ + this.§_-Nh§ + this.§_-A0§.z);
            _loc3_.§_-eW§.x += _loc11_ * _loc15_;
            _loc3_.§_-eW§.y += _loc11_ * _loc16_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc16_ - _loc9_ * _loc15_ + this.§_-Nh§ + this.§_-A0§.z);
         }
         else
         {
            this.§_-A0§.§_-IE§();
            this.§_-Nh§ = 0;
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
         var _loc2_:b2Body = b2internal::_-ba;
         var _loc3_:b2Body = b2internal::_-pK;
         var _loc11_:b2Vec2 = _loc2_.§_-eW§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§_-eW§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§_-RG§;
         var _loc16_:Number = _loc3_.§_-RG§;
         var _loc17_:Number = _loc2_.§_-n4§;
         var _loc18_:Number = _loc3_.§_-n4§;
         if(this.§_-ZF§ && this.§_-rj§ != b2internal::_-5i)
         {
            _loc19_ = _loc14_ - _loc12_ - this.§_-Fn§;
            _loc20_ = this.§_-b6§ * -_loc19_;
            _loc21_ = this.§_-Nh§;
            _loc22_ = param1.§_-ib§ * this.§_-jF§;
            this.§_-Nh§ = b2Math.§_-1P§(this.§_-Nh§ + _loc20_,-_loc22_,_loc22_);
            _loc20_ = this.§_-Nh§ - _loc21_;
            _loc12_ -= _loc17_ * _loc20_;
            _loc14_ += _loc18_ * _loc20_;
         }
         if(this.§_-5b§ && this.§_-rj§ != b2internal::_-zJ)
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
            this.§_-dp§.Solve33(this.impulse3,-_loc23_,-_loc24_,-_loc25_);
            if(this.§_-rj§ == b2internal::_-5i)
            {
               this.§_-A0§.§_-YN§(this.impulse3);
            }
            else if(this.§_-rj§ == b2internal::_-Ep)
            {
               if((_loc6_ = this.§_-A0§.z + this.impulse3.z) < 0)
               {
                  this.§_-dp§.Solve22(this.§_-mI§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-mI§.x;
                  this.impulse3.y = this.§_-mI§.y;
                  this.impulse3.z = -this.§_-A0§.z;
                  this.§_-A0§.x += this.§_-mI§.x;
                  this.§_-A0§.y += this.§_-mI§.y;
                  this.§_-A0§.z = 0;
               }
            }
            else if(this.§_-rj§ == b2internal::_-45)
            {
               if((_loc6_ = this.§_-A0§.z + this.impulse3.z) > 0)
               {
                  this.§_-dp§.Solve22(this.§_-mI§,-_loc23_,-_loc24_);
                  this.impulse3.x = this.§_-mI§.x;
                  this.impulse3.y = this.§_-mI§.y;
                  this.impulse3.z = -this.§_-A0§.z;
                  this.§_-A0§.x += this.§_-mI§.x;
                  this.§_-A0§.y += this.§_-mI§.y;
                  this.§_-A0§.z = 0;
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
            this.§_-dp§.Solve22(this.impulse2,-_loc26_,-_loc27_);
            this.§_-A0§.x += this.impulse2.x;
            this.§_-A0§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§_-eW§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§_-eW§.SetV(_loc13_);
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
         var _loc5_:b2Body = b2internal::_-ba;
         var _loc6_:b2Body = b2internal::_-pK;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         if(this.§_-5b§ && this.§_-rj§ != b2internal::_-zJ)
         {
            _loc25_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§_-DL§;
            _loc26_ = 0;
            if(this.§_-rj§ == b2internal::_-5i)
            {
               _loc3_ = b2Math.§_-1P§(_loc25_ - this.§_-nG§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-b6§ * _loc3_;
               _loc7_ = b2Math.§_-R3§(_loc3_);
            }
            else if(this.§_-rj§ == b2internal::_-Ep)
            {
               _loc3_ = _loc25_ - this.§_-nG§;
               _loc7_ = -_loc3_;
               _loc3_ = b2Math.§_-1P§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc26_ = -this.§_-b6§ * _loc3_;
            }
            else if(this.§_-rj§ == b2internal::_-45)
            {
               _loc3_ = _loc25_ - this.§_-5x§;
               _loc7_ = _loc3_;
               _loc3_ = b2Math.§_-1P§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc26_ = -this.§_-b6§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§_-n4§ * _loc26_;
            _loc6_.m_sweep.a += _loc6_.§_-n4§ * _loc26_;
            _loc5_.§_-Zz§();
            _loc6_.§_-Zz§();
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
         var _loc20_:Number = _loc5_.§_-RG§;
         var _loc21_:Number = _loc6_.§_-RG§;
         var _loc22_:Number = _loc5_.§_-n4§;
         var _loc23_:Number = _loc6_.§_-n4§;
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
         this.§_-s3§.§_-Dj§(this.K1);
         this.§_-s3§.§_-99§(this.K2);
         this.§_-s3§.§_-99§(this.K3);
         this.§_-s3§.§_-B8§(§_-fl§,-_loc16_,-_loc17_);
         _loc10_ = §_-fl§.x;
         _loc11_ = §_-fl§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§_-RG§ * _loc10_;
         _loc5_.m_sweep.c.y -= _loc5_.§_-RG§ * _loc11_;
         _loc5_.m_sweep.a -= _loc5_.§_-n4§ * (_loc12_ * _loc11_ - _loc13_ * _loc10_);
         _loc6_.m_sweep.c.x += _loc6_.§_-RG§ * _loc10_;
         _loc6_.m_sweep.c.y += _loc6_.§_-RG§ * _loc11_;
         _loc6_.m_sweep.a += _loc6_.§_-n4§ * (_loc14_ * _loc11_ - _loc15_ * _loc10_);
         _loc5_.§_-Zz§();
         _loc6_.§_-Zz§();
         return _loc8_ <= b2Settings.b2_linearSlop && _loc7_ <= b2Settings.b2_angularSlop;
      }
   }
}
