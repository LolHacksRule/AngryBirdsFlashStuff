package §_-Rb§
{
   import §_-Zl§.b2Mat22;
   import §_-Zl§.b2Mat33;
   import §_-Zl§.b2Math;
   import §_-Zl§.b2Transform;
   import §_-Zl§.b2Vec2;
   import §_-Zl§.b2Vec3;
   import §_-rg§.b2Body;
   import §_-rg§.b2TimeStep;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-0u§:b2Vec2;
      
      private var §_-MA§:b2Vec2;
      
      private var §_-iy§:Number;
      
      private var §_-Xb§:b2Vec2;
      
      private var §_-0o§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-SI§:b2Mat33;
      
      private var §_-ro§:b2Vec3;
      
      private var §_-4K§:Number;
      
      private var §_-IB§:Number;
      
      private var §_-Sn§:Number;
      
      private var §_-eh§:Number;
      
      private var §_-O2§:Number;
      
      private var §_-Ug§:Number;
      
      private var §_-p1§:Boolean;
      
      private var §_-BR§:Boolean;
      
      private var §_-vI§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-0u§ = new b2Vec2();
         this.§_-MA§ = new b2Vec2();
         this.§_-Xb§ = new b2Vec2();
         this.§_-0o§ = new b2Vec2();
         this.§_-SI§ = new b2Mat33();
         this.§_-ro§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-24§);
         this.m_localAnchor2.SetV(param1.§_-2Z§);
         this.§_-0u§.SetV(param1.§_-h4§);
         this.§_-MA§.x = -this.§_-0u§.y;
         this.§_-MA§.y = this.§_-0u§.x;
         this.§_-iy§ = param1.§_-Hj§;
         this.§_-ro§.§_-Vw§();
         this.§_-4K§ = 0;
         this.§_-IB§ = 0;
         this.§_-Sn§ = param1.§_-kj§;
         this.§_-eh§ = param1.§_-Ai§;
         this.§_-O2§ = param1.§_-CZ§;
         this.§_-Ug§ = param1.motorSpeed;
         this.§_-p1§ = param1.§_-Qa§;
         this.§_-BR§ = param1.§_-ff§;
         this.§_-vI§ = b2internal::native;
         this.§_-Xb§.§_-Vw§();
         this.§_-0o§.§_-Vw§();
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
         return new b2Vec2(param1 * (this.§_-ro§.x * this.§_-0o§.x + (this.§_-IB§ + this.§_-ro§.z) * this.§_-Xb§.x),param1 * (this.§_-ro§.x * this.§_-0o§.y + (this.§_-IB§ + this.§_-ro§.z) * this.§_-Xb§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-ro§.y;
      }
      
      public function §_-p§() : Number
      {
         var _loc1_:b2Body = b2internal::_-Rz;
         var _loc2_:b2Body = b2internal::_-GP;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-8C§(this.§_-0u§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-Mu§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-Rz;
         var _loc2_:b2Body = b2internal::_-GP;
         _loc3_ = _loc1_.m_xf.R;
         var _loc4_:Number = this.m_localAnchor1.x - _loc1_.m_sweep.localCenter.x;
         var _loc5_:Number = this.m_localAnchor1.y - _loc1_.m_sweep.localCenter.y;
         var _loc6_:Number = _loc3_.col1.x * _loc4_ + _loc3_.col2.x * _loc5_;
         _loc5_ = _loc3_.col1.y * _loc4_ + _loc3_.col2.y * _loc5_;
         _loc4_ = _loc6_;
         _loc3_ = _loc2_.m_xf.R;
         var _loc7_:Number = this.m_localAnchor2.x - _loc2_.m_sweep.localCenter.x;
         var _loc8_:Number = this.m_localAnchor2.y - _loc2_.m_sweep.localCenter.y;
         _loc6_ = _loc3_.col1.x * _loc7_ + _loc3_.col2.x * _loc8_;
         _loc8_ = _loc3_.col1.y * _loc7_ + _loc3_.col2.y * _loc8_;
         _loc7_ = _loc6_;
         var _loc9_:Number = _loc1_.m_sweep.c.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.c.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.c.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.c.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§_-8C§(this.§_-0u§);
         var _loc16_:b2Vec2 = _loc1_.§_-Ng§;
         var _loc17_:b2Vec2 = _loc2_.§_-Ng§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-0H§() : Boolean
      {
         return this.§_-p1§;
      }
      
      public function §_-B8§(param1:Boolean) : void
      {
         b2internal::_-Rz.SetAwake(true);
         b2internal::_-GP.SetAwake(true);
         this.§_-p1§ = param1;
      }
      
      public function §_-Cp§() : Number
      {
         return this.§_-Sn§;
      }
      
      public function §_-We§() : Number
      {
         return this.§_-eh§;
      }
      
      public function §_-L-§(param1:Number, param2:Number) : void
      {
         b2internal::_-Rz.SetAwake(true);
         b2internal::_-GP.SetAwake(true);
         this.§_-Sn§ = param1;
         this.§_-eh§ = param2;
      }
      
      public function §_-rW§() : Boolean
      {
         return this.§_-BR§;
      }
      
      public function §_-k8§(param1:Boolean) : void
      {
         b2internal::_-Rz.SetAwake(true);
         b2internal::_-GP.SetAwake(true);
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
      
      public function §_-0M§(param1:Number) : void
      {
         b2internal::_-Rz.SetAwake(true);
         b2internal::_-GP.SetAwake(true);
         this.§_-O2§ = param1;
      }
      
      public function §_-Qc§() : Number
      {
         return this.§_-IB§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-Rz;
         var _loc3_:b2Body = b2internal::_-GP;
         b2internal::_-32.SetV(_loc2_.§_-HZ§());
         b2internal::_-Of.SetV(_loc3_.§_-HZ§());
         var _loc6_:b2Transform = _loc2_.§_-9F§();
         var _loc7_:b2Transform = _loc3_.§_-9F§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-32.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-32.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-Of.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-Of.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §_-UK§ = _loc2_.§_-s§;
         §_-qn§ = _loc3_.§_-s§;
         §_-J7§ = _loc2_.§_-TW§;
         §_-Fq§ = _loc3_.§_-TW§;
         this.§_-Xb§.SetV(b2Math.§_-KM§(_loc6_.R,this.§_-0u§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-Xb§.y - (_loc13_ + _loc9_) * this.§_-Xb§.x;
         this.m_a2 = _loc10_ * this.§_-Xb§.y - _loc11_ * this.§_-Xb§.x;
         this.§_-4K§ = b2internal::_-UK + b2internal::_-qn + b2internal::_-J7 * this.m_a1 * this.m_a1 + b2internal::_-Fq * this.m_a2 * this.m_a2;
         if(this.§_-4K§ > Number.MIN_VALUE)
         {
            this.§_-4K§ = 1 / this.§_-4K§;
         }
         this.§_-0o§.SetV(b2Math.§_-KM§(_loc6_.R,this.§_-MA§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-0o§.y - (_loc13_ + _loc9_) * this.§_-0o§.x;
         this.m_s2 = _loc10_ * this.§_-0o§.y - _loc11_ * this.§_-0o§.x;
         var _loc14_:Number = b2internal::_-UK;
         var _loc15_:Number = b2internal::_-qn;
         var _loc16_:Number = b2internal::_-J7;
         var _loc17_:Number = b2internal::_-Fq;
         this.§_-SI§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-SI§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§_-SI§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-SI§.col2.x = this.§_-SI§.col1.y;
         this.§_-SI§.col2.y = _loc16_ + _loc17_;
         this.§_-SI§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§_-SI§.col3.x = this.§_-SI§.col1.z;
         this.§_-SI§.col3.y = this.§_-SI§.col2.z;
         this.§_-SI§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-p1§)
         {
            _loc18_ = this.§_-Xb§.x * _loc12_ + this.§_-Xb§.y * _loc13_;
            if(b2Math.§_-Os§(this.§_-eh§ - this.§_-Sn§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-vI§ = b2internal::_-dd;
            }
            else if(_loc18_ <= this.§_-Sn§)
            {
               if(this.§_-vI§ != b2internal::_-nw)
               {
                  this.§_-vI§ = b2internal::_-nw;
                  this.§_-ro§.z = 0;
               }
            }
            else if(_loc18_ >= this.§_-eh§)
            {
               if(this.§_-vI§ != b2internal::_-WR)
               {
                  this.§_-vI§ = b2internal::_-WR;
                  this.§_-ro§.z = 0;
               }
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
         if(this.§_-BR§ == false)
         {
            this.§_-IB§ = 0;
         }
         if(param1.§_-Fx§)
         {
            this.§_-ro§.x *= param1.§_-4i§;
            this.§_-ro§.y *= param1.§_-4i§;
            this.§_-IB§ *= param1.§_-4i§;
            _loc19_ = this.§_-ro§.x * this.§_-0o§.x + (this.§_-IB§ + this.§_-ro§.z) * this.§_-Xb§.x;
            _loc20_ = this.§_-ro§.x * this.§_-0o§.y + (this.§_-IB§ + this.§_-ro§.z) * this.§_-Xb§.y;
            _loc21_ = this.§_-ro§.x * this.m_s1 + this.§_-ro§.y + (this.§_-IB§ + this.§_-ro§.z) * this.m_a1;
            _loc22_ = this.§_-ro§.x * this.m_s2 + this.§_-ro§.y + (this.§_-IB§ + this.§_-ro§.z) * this.m_a2;
            _loc2_.§_-Ng§.x -= b2internal::_-UK * _loc19_;
            _loc2_.§_-Ng§.y -= b2internal::_-UK * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-J7 * _loc21_;
            _loc3_.§_-Ng§.x += b2internal::_-qn * _loc19_;
            _loc3_.§_-Ng§.y += b2internal::_-qn * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-Fq * _loc22_;
         }
         else
         {
            this.§_-ro§.§_-Vw§();
            this.§_-IB§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:b2Vec3 = null;
         var _loc20_:b2Vec3 = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:b2Vec2 = null;
         var _loc24_:b2Vec2 = null;
         var _loc2_:b2Body = b2internal::_-Rz;
         var _loc3_:b2Body = b2internal::_-GP;
         var _loc4_:b2Vec2 = _loc2_.§_-Ng§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-Ng§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-BR§ && this.§_-vI§ != b2internal::_-dd)
         {
            _loc14_ = this.§_-Xb§.x * (_loc6_.x - _loc4_.x) + this.§_-Xb§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§_-4K§ * (this.§_-Ug§ - _loc14_);
            _loc16_ = this.§_-IB§;
            _loc17_ = param1.§_-Vj§ * this.§_-O2§;
            this.§_-IB§ = b2Math.§_-Kz§(this.§_-IB§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§_-IB§ - _loc16_) * this.§_-Xb§.x;
            _loc9_ = _loc15_ * this.§_-Xb§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::_-UK * _loc8_;
            _loc4_.y -= b2internal::_-UK * _loc9_;
            _loc5_ -= b2internal::_-J7 * _loc10_;
            _loc6_.x += b2internal::_-qn * _loc8_;
            _loc6_.y += b2internal::_-qn * _loc9_;
            _loc7_ += b2internal::_-Fq * _loc11_;
         }
         var _loc12_:Number = this.§_-0o§.x * (_loc6_.x - _loc4_.x) + this.§_-0o§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§_-p1§ && this.§_-vI§ != b2internal::native)
         {
            _loc18_ = this.§_-Xb§.x * (_loc6_.x - _loc4_.x) + this.§_-Xb§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§_-ro§.Copy();
            _loc20_ = this.§_-SI§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§_-ro§.§_-Ec§(_loc20_);
            if(this.§_-vI§ == b2internal::_-nw)
            {
               this.§_-ro§.z = b2Math.§_-Gj§(this.§_-ro§.z,0);
            }
            else if(this.§_-vI§ == b2internal::_-WR)
            {
               this.§_-ro§.z = b2Math.§_-9u§(this.§_-ro§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§_-ro§.z - _loc19_.z) * this.§_-SI§.col3.x;
            _loc22_ = -_loc13_ - (this.§_-ro§.z - _loc19_.z) * this.§_-SI§.col3.y;
            _loc23_ = this.§_-SI§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§_-ro§.x = _loc23_.x;
            this.§_-ro§.y = _loc23_.y;
            _loc20_.x = this.§_-ro§.x - _loc19_.x;
            _loc20_.y = this.§_-ro§.y - _loc19_.y;
            _loc20_.z = this.§_-ro§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§_-0o§.x + _loc20_.z * this.§_-Xb§.x;
            _loc9_ = _loc20_.x * this.§_-0o§.y + _loc20_.z * this.§_-Xb§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::_-UK * _loc8_;
            _loc4_.y -= b2internal::_-UK * _loc9_;
            _loc5_ -= b2internal::_-J7 * _loc10_;
            _loc6_.x += b2internal::_-qn * _loc8_;
            _loc6_.y += b2internal::_-qn * _loc9_;
            _loc7_ += b2internal::_-Fq * _loc11_;
         }
         else
         {
            _loc24_ = this.§_-SI§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§_-ro§.x += _loc24_.x;
            this.§_-ro§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§_-0o§.x;
            _loc9_ = _loc24_.x * this.§_-0o§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::_-UK * _loc8_;
            _loc4_.y -= b2internal::_-UK * _loc9_;
            _loc5_ -= b2internal::_-J7 * _loc10_;
            _loc6_.x += b2internal::_-qn * _loc8_;
            _loc6_.y += b2internal::_-qn * _loc9_;
            _loc7_ += b2internal::_-Fq * _loc11_;
         }
         _loc2_.§_-Ng§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-Ng§.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc10_:b2Mat22 = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:b2Vec2 = null;
         var _loc4_:b2Body = b2internal::_-Rz;
         var _loc5_:b2Body = b2internal::_-GP;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-M3§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-M3§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-32.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-32.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-Of.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-Of.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-p1§)
         {
            this.§_-Xb§ = b2Math.§_-KM§(_loc20_,this.§_-0u§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-Xb§.y - (_loc27_ + _loc23_) * this.§_-Xb§.x;
            this.m_a2 = _loc24_ * this.§_-Xb§.y - _loc25_ * this.§_-Xb§.x;
            _loc35_ = this.§_-Xb§.x * _loc26_ + this.§_-Xb§.y * _loc27_;
            if(b2Math.§_-Os§(this.§_-eh§ - this.§_-Sn§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-Kz§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-Os§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§_-Sn§)
            {
               _loc19_ = b2Math.§_-Kz§(_loc35_ - this.§_-Sn§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-Sn§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§_-eh§)
            {
               _loc19_ = b2Math.§_-Kz§(_loc35_ - this.§_-eh§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§_-eh§;
               _loc18_ = true;
            }
         }
         this.§_-0o§ = b2Math.§_-KM§(_loc20_,this.§_-MA§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-0o§.y - (_loc27_ + _loc23_) * this.§_-0o§.x;
         this.m_s2 = _loc24_ * this.§_-0o§.y - _loc25_ * this.§_-0o§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§_-0o§.x * _loc26_ + this.§_-0o§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§_-iy§;
         _loc16_ = b2Math.§_-Gj§(_loc16_,b2Math.§_-Os§(_loc29_));
         _loc17_ = b2Math.§_-Os§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::_-UK;
            _loc13_ = b2internal::_-qn;
            _loc14_ = b2internal::_-J7;
            _loc15_ = b2internal::_-Fq;
            this.§_-SI§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-SI§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§_-SI§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-SI§.col2.x = this.§_-SI§.col1.y;
            this.§_-SI§.col2.y = _loc14_ + _loc15_;
            this.§_-SI§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§_-SI§.col3.x = this.§_-SI§.col1.z;
            this.§_-SI§.col3.y = this.§_-SI§.col2.z;
            this.§_-SI§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-SI§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-UK;
            _loc13_ = b2internal::_-qn;
            _loc14_ = b2internal::_-J7;
            _loc15_ = b2internal::_-Fq;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§_-SI§.col1.Set(_loc36_,_loc37_,0);
            this.§_-SI§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§_-SI§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§_-0o§.x + _loc28_.z * this.§_-Xb§.x;
         var _loc32_:Number = _loc28_.x * this.§_-0o§.y + _loc28_.z * this.§_-Xb§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::_-UK * _loc31_;
         _loc6_.y -= b2internal::_-UK * _loc32_;
         _loc7_ -= b2internal::_-J7 * _loc33_;
         _loc8_.x += b2internal::_-qn * _loc31_;
         _loc8_.y += b2internal::_-qn * _loc32_;
         _loc9_ += b2internal::_-Fq * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-Ax§();
         _loc5_.§_-Ax§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
