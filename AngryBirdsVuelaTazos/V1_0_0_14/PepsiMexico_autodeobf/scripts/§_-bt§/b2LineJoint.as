package §_-bt§
{
   import §_-4n§.b2Mat22;
   import §_-4n§.b2Math;
   import §_-4n§.b2Transform;
   import §_-4n§.b2Vec2;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §const§.b2Body;
   import §const§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-Si§:b2Vec2;
      
      private var §_-rM§:b2Vec2;
      
      private var §_-PK§:b2Vec2;
      
      private var §_-up§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-bP§:b2Mat22;
      
      private var §_-A0§:b2Vec2;
      
      private var §_-b6§:Number;
      
      private var §_-Nh§:Number;
      
      private var §_-nl§:Number;
      
      private var §_-Rm§:Number;
      
      private var §_-Ik§:Number;
      
      private var §_-Fn§:Number;
      
      private var §_-5b§:Boolean;
      
      private var §_-ZF§:Boolean;
      
      private var §_-rj§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Si§ = new b2Vec2();
         this.§_-rM§ = new b2Vec2();
         this.§_-PK§ = new b2Vec2();
         this.§_-up§ = new b2Vec2();
         this.§_-bP§ = new b2Mat22();
         this.§_-A0§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-5O§);
         this.m_localAnchor2.SetV(param1.§_-q3§);
         this.§_-Si§.SetV(param1.§_-P5§);
         this.§_-rM§.x = -this.§_-Si§.y;
         this.§_-rM§.y = this.§_-Si§.x;
         this.§_-A0§.§_-IE§();
         this.§_-b6§ = 0;
         this.§_-Nh§ = 0;
         this.§_-nl§ = param1.§_-6m§;
         this.§_-Rm§ = param1.§_-q0§;
         this.§_-Ik§ = param1.§_-p7§;
         this.§_-Fn§ = param1.motorSpeed;
         this.§_-5b§ = param1.§_-Mf§;
         this.§_-ZF§ = param1.§_-So§;
         this.§_-rj§ = b2internal::_-zJ;
         this.§_-PK§.§_-IE§();
         this.§_-up§.§_-IE§();
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
         return new b2Vec2(param1 * (this.§_-A0§.x * this.§_-up§.x + (this.§_-Nh§ + this.§_-A0§.y) * this.§_-PK§.x),param1 * (this.§_-A0§.x * this.§_-up§.y + (this.§_-Nh§ + this.§_-A0§.y) * this.§_-PK§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-A0§.y;
      }
      
      public function §_-r1§() : Number
      {
         var _loc1_:b2Body = b2internal::_-ba;
         var _loc2_:b2Body = b2internal::_-pK;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-rK§(this.§_-Si§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-uk§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-ba;
         var _loc2_:b2Body = b2internal::_-pK;
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
         var _loc15_:b2Vec2 = _loc1_.§_-rK§(this.§_-Si§);
         var _loc16_:b2Vec2 = _loc1_.§_-eW§;
         var _loc17_:b2Vec2 = _loc2_.§_-eW§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-Jk§() : Boolean
      {
         return this.§_-5b§;
      }
      
      public function §_-yE§(param1:Boolean) : void
      {
         b2internal::_-ba.SetAwake(true);
         b2internal::_-pK.SetAwake(true);
         this.§_-5b§ = param1;
      }
      
      public function §_-o7§() : Number
      {
         return this.§_-nl§;
      }
      
      public function §_-k7§() : Number
      {
         return this.§_-Rm§;
      }
      
      public function §_-Ah§(param1:Number, param2:Number) : void
      {
         b2internal::_-ba.SetAwake(true);
         b2internal::_-pK.SetAwake(true);
         this.§_-nl§ = param1;
         this.§_-Rm§ = param2;
      }
      
      public function §_-RK§() : Boolean
      {
         return this.§_-ZF§;
      }
      
      public function §_-Ut§(param1:Boolean) : void
      {
         b2internal::_-ba.SetAwake(true);
         b2internal::_-pK.SetAwake(true);
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
      
      public function §_-c-§(param1:Number) : void
      {
         b2internal::_-ba.SetAwake(true);
         b2internal::_-pK.SetAwake(true);
         this.§_-Ik§ = param1;
      }
      
      public function §_-ey§() : Number
      {
         return this.§_-Ik§;
      }
      
      public function §_-BZ§() : Number
      {
         return this.§_-Nh§;
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
         var _loc2_:b2Body = b2internal::_-ba;
         var _loc3_:b2Body = b2internal::_-pK;
         b2internal::_-C0.SetV(_loc2_.§_-rB§());
         b2internal::_-py.SetV(_loc3_.§_-rB§());
         var _loc6_:b2Transform = _loc2_.§_-XD§();
         var _loc7_:b2Transform = _loc3_.§_-XD§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-C0.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-C0.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-py.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-py.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §_-YG§ = _loc2_.§_-RG§;
         §_-VU§ = _loc3_.§_-RG§;
         §_-33§ = _loc2_.§_-n4§;
         §_-oP§ = _loc3_.§_-n4§;
         this.§_-PK§.SetV(b2Math.§_-UD§(_loc6_.R,this.§_-Si§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-PK§.y - (_loc13_ + _loc9_) * this.§_-PK§.x;
         this.m_a2 = _loc10_ * this.§_-PK§.y - _loc11_ * this.§_-PK§.x;
         this.§_-b6§ = b2internal::_-YG + b2internal::_-VU + b2internal::_-33 * this.m_a1 * this.m_a1 + b2internal::_-oP * this.m_a2 * this.m_a2;
         this.§_-b6§ = this.§_-b6§ > Number.MIN_VALUE ? Number(1 / this.§_-b6§) : Number(0);
         this.§_-up§.SetV(b2Math.§_-UD§(_loc6_.R,this.§_-rM§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-up§.y - (_loc13_ + _loc9_) * this.§_-up§.x;
         this.m_s2 = _loc10_ * this.§_-up§.y - _loc11_ * this.§_-up§.x;
         var _loc14_:Number = b2internal::_-YG;
         var _loc15_:Number = b2internal::_-VU;
         var _loc16_:Number = b2internal::_-33;
         var _loc17_:Number = b2internal::_-oP;
         this.§_-bP§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-bP§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-bP§.col2.x = this.§_-bP§.col1.y;
         this.§_-bP§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-5b§)
         {
            _loc18_ = this.§_-PK§.x * _loc12_ + this.§_-PK§.y * _loc13_;
            if(b2Math.§_-R3§(this.§_-Rm§ - this.§_-nl§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-rj§ = b2internal::_-5i;
            }
            else if(_loc18_ <= this.§_-nl§)
            {
               if(this.§_-rj§ != b2internal::_-Ep)
               {
                  this.§_-rj§ = b2internal::_-Ep;
                  this.§_-A0§.y = 0;
               }
            }
            else if(_loc18_ >= this.§_-Rm§)
            {
               if(this.§_-rj§ != b2internal::_-45)
               {
                  this.§_-rj§ = b2internal::_-45;
                  this.§_-A0§.y = 0;
               }
            }
            else
            {
               this.§_-rj§ = b2internal::_-zJ;
               this.§_-A0§.y = 0;
            }
         }
         else
         {
            this.§_-rj§ = b2internal::_-zJ;
         }
         if(this.§_-ZF§ == false)
         {
            this.§_-Nh§ = 0;
         }
         if(param1.§_-lv§)
         {
            this.§_-A0§.x *= param1.§_-4Y§;
            this.§_-A0§.y *= param1.§_-4Y§;
            this.§_-Nh§ *= param1.§_-4Y§;
            _loc19_ = this.§_-A0§.x * this.§_-up§.x + (this.§_-Nh§ + this.§_-A0§.y) * this.§_-PK§.x;
            _loc20_ = this.§_-A0§.x * this.§_-up§.y + (this.§_-Nh§ + this.§_-A0§.y) * this.§_-PK§.y;
            _loc21_ = this.§_-A0§.x * this.m_s1 + (this.§_-Nh§ + this.§_-A0§.y) * this.m_a1;
            _loc22_ = this.§_-A0§.x * this.m_s2 + (this.§_-Nh§ + this.§_-A0§.y) * this.m_a2;
            _loc2_.§_-eW§.x -= b2internal::_-YG * _loc19_;
            _loc2_.§_-eW§.y -= b2internal::_-YG * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-33 * _loc21_;
            _loc3_.§_-eW§.x += b2internal::_-VU * _loc19_;
            _loc3_.§_-eW§.y += b2internal::_-VU * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-oP * _loc22_;
         }
         else
         {
            this.§_-A0§.§_-IE§();
            this.§_-Nh§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:b2Vec2 = null;
         var _loc19_:b2Vec2 = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc2_:b2Body = b2internal::_-ba;
         var _loc3_:b2Body = b2internal::_-pK;
         var _loc4_:b2Vec2 = _loc2_.§_-eW§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-eW§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-ZF§ && this.§_-rj§ != b2internal::_-5i)
         {
            _loc13_ = this.§_-PK§.x * (_loc6_.x - _loc4_.x) + this.§_-PK§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§_-b6§ * (this.§_-Fn§ - _loc13_);
            _loc15_ = this.§_-Nh§;
            _loc16_ = param1.§_-ib§ * this.§_-Ik§;
            this.§_-Nh§ = b2Math.§_-1P§(this.§_-Nh§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§_-Nh§ - _loc15_) * this.§_-PK§.x;
            _loc9_ = _loc14_ * this.§_-PK§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::_-YG * _loc8_;
            _loc4_.y -= b2internal::_-YG * _loc9_;
            _loc5_ -= b2internal::_-33 * _loc10_;
            _loc6_.x += b2internal::_-VU * _loc8_;
            _loc6_.y += b2internal::_-VU * _loc9_;
            _loc7_ += b2internal::_-oP * _loc11_;
         }
         var _loc12_:Number = this.§_-up§.x * (_loc6_.x - _loc4_.x) + this.§_-up§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§_-5b§ && this.§_-rj§ != b2internal::_-zJ)
         {
            _loc17_ = this.§_-PK§.x * (_loc6_.x - _loc4_.x) + this.§_-PK§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§_-A0§.Copy();
            _loc19_ = this.§_-bP§.§_-B8§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§_-A0§.§_-YN§(_loc19_);
            if(this.§_-rj§ == b2internal::_-Ep)
            {
               this.§_-A0§.y = b2Math.§_-NX§(this.§_-A0§.y,0);
            }
            else if(this.§_-rj§ == b2internal::_-45)
            {
               this.§_-A0§.y = b2Math.§_-NB§(this.§_-A0§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§_-A0§.y - _loc18_.y) * this.§_-bP§.col2.x;
            if(this.§_-bP§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§_-bP§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§_-A0§.x = _loc21_;
            _loc19_.x = this.§_-A0§.x - _loc18_.x;
            _loc19_.y = this.§_-A0§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§_-up§.x + _loc19_.y * this.§_-PK§.x;
            _loc9_ = _loc19_.x * this.§_-up§.y + _loc19_.y * this.§_-PK§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::_-YG * _loc8_;
            _loc4_.y -= b2internal::_-YG * _loc9_;
            _loc5_ -= b2internal::_-33 * _loc10_;
            _loc6_.x += b2internal::_-VU * _loc8_;
            _loc6_.y += b2internal::_-VU * _loc9_;
            _loc7_ += b2internal::_-oP * _loc11_;
         }
         else
         {
            if(this.§_-bP§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§_-bP§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§_-A0§.x += _loc22_;
            _loc8_ = _loc22_ * this.§_-up§.x;
            _loc9_ = _loc22_ * this.§_-up§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::_-YG * _loc8_;
            _loc4_.y -= b2internal::_-YG * _loc9_;
            _loc5_ -= b2internal::_-33 * _loc10_;
            _loc6_.x += b2internal::_-VU * _loc8_;
            _loc6_.y += b2internal::_-VU * _loc9_;
            _loc7_ += b2internal::_-oP * _loc11_;
         }
         _loc2_.§_-eW§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-eW§.SetV(_loc6_);
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
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc4_:b2Body = b2internal::_-ba;
         var _loc5_:b2Body = b2internal::_-pK;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-Oe§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-Oe§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-C0.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-C0.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-py.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-py.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-5b§)
         {
            this.§_-PK§ = b2Math.§_-UD§(_loc20_,this.§_-Si§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-PK§.y - (_loc27_ + _loc23_) * this.§_-PK§.x;
            this.m_a2 = _loc24_ * this.§_-PK§.y - _loc25_ * this.§_-PK§.x;
            _loc34_ = this.§_-PK§.x * _loc26_ + this.§_-PK§.y * _loc27_;
            if(b2Math.§_-R3§(this.§_-Rm§ - this.§_-nl§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-1P§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-R3§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§_-nl§)
            {
               _loc19_ = b2Math.§_-1P§(_loc34_ - this.§_-nl§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-nl§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§_-Rm§)
            {
               _loc19_ = b2Math.§_-1P§(_loc34_ - this.§_-Rm§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§_-Rm§;
               _loc18_ = true;
            }
         }
         this.§_-up§ = b2Math.§_-UD§(_loc20_,this.§_-rM§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-up§.y - (_loc27_ + _loc23_) * this.§_-up§.x;
         this.m_s2 = _loc24_ * this.§_-up§.y - _loc25_ * this.§_-up§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§_-up§.x * _loc26_ + this.§_-up§.y * _loc27_;
         _loc16_ = b2Math.§_-NX§(_loc16_,b2Math.§_-R3§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::_-YG;
            _loc13_ = b2internal::_-VU;
            _loc14_ = b2internal::_-33;
            _loc15_ = b2internal::_-oP;
            this.§_-bP§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-bP§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-bP§.col2.x = this.§_-bP§.col1.y;
            this.§_-bP§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-bP§.§_-B8§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-YG;
            _loc13_ = b2internal::_-VU;
            _loc14_ = b2internal::_-33;
            _loc15_ = b2internal::_-oP;
            if((_loc35_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2) != 0)
            {
               _loc36_ = -_loc29_ / _loc35_;
            }
            else
            {
               _loc36_ = 0;
            }
            _loc28_.x = _loc36_;
            _loc28_.y = 0;
         }
         var _loc30_:Number = _loc28_.x * this.§_-up§.x + _loc28_.y * this.§_-PK§.x;
         var _loc31_:Number = _loc28_.x * this.§_-up§.y + _loc28_.y * this.§_-PK§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::_-YG * _loc30_;
         _loc6_.y -= b2internal::_-YG * _loc31_;
         _loc7_ -= b2internal::_-33 * _loc32_;
         _loc8_.x += b2internal::_-VU * _loc30_;
         _loc8_.y += b2internal::_-VU * _loc31_;
         _loc9_ += b2internal::_-oP * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-Zz§();
         _loc5_.§_-Zz§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
