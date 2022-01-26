package §_-E§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2TimeStep;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Vn§.b2Mat22;
   import §_-Vn§.b2Mat33;
   import §_-Vn§.b2Math;
   import §_-Vn§.b2Transform;
   import §_-Vn§.b2Vec2;
   import §_-Vn§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-Zm§:b2Vec2;
      
      private var §_-op§:b2Vec2;
      
      private var §_-4U§:Number;
      
      private var §_-4C§:b2Vec2;
      
      private var §_-1y§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-Ob§:b2Mat33;
      
      private var §_-Ud§:b2Vec3;
      
      private var §_-jK§:Number;
      
      private var §_-O7§:Number;
      
      private var §_-8Q§:Number;
      
      private var §_-W§:Number;
      
      private var §_-lb§:Number;
      
      private var §_-kY§:Number;
      
      private var §_-Gy§:Boolean;
      
      private var §_-UZ§:Boolean;
      
      private var §_-x§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Zm§ = new b2Vec2();
         this.§_-op§ = new b2Vec2();
         this.§_-4C§ = new b2Vec2();
         this.§_-1y§ = new b2Vec2();
         this.§_-Ob§ = new b2Mat33();
         this.§_-Ud§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-4N§);
         this.m_localAnchor2.SetV(param1.§_-nR§);
         this.§_-Zm§.SetV(param1.§_-yc§);
         this.§_-op§.x = -this.§_-Zm§.y;
         this.§_-op§.y = this.§_-Zm§.x;
         this.§_-4U§ = param1.§_-L7§;
         this.§_-Ud§.§return§();
         this.§_-jK§ = 0;
         this.§_-O7§ = 0;
         this.§_-8Q§ = param1.§_-fX§;
         this.§_-W§ = param1.§_-Xb§;
         this.§_-lb§ = param1.§_-lm§;
         this.§_-kY§ = param1.motorSpeed;
         this.§_-Gy§ = param1.§_-MB§;
         this.§_-UZ§ = param1.§_-77§;
         this.§_-x§ = b2internal::_-S8;
         this.§_-4C§.§return§();
         this.§_-1y§.§return§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-oB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-52.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§_-Ud§.x * this.§_-1y§.x + (this.§_-O7§ + this.§_-Ud§.z) * this.§_-4C§.x),param1 * (this.§_-Ud§.x * this.§_-1y§.y + (this.§_-O7§ + this.§_-Ud§.z) * this.§_-4C§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-Ud§.y;
      }
      
      public function §_-e§() : Number
      {
         var _loc1_:b2Body = b2internal::_-oB;
         var _loc2_:b2Body = b2internal::_-52;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-Xs§(this.§_-Zm§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-RD§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-oB;
         var _loc2_:b2Body = b2internal::_-52;
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
         var _loc15_:b2Vec2 = _loc1_.§_-Xs§(this.§_-Zm§);
         var _loc16_:b2Vec2 = _loc1_.§_-Yd§;
         var _loc17_:b2Vec2 = _loc2_.§_-Yd§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-nr§() : Boolean
      {
         return this.§_-Gy§;
      }
      
      public function §_-000§(param1:Boolean) : void
      {
         b2internal::_-oB.SetAwake(true);
         b2internal::_-52.SetAwake(true);
         this.§_-Gy§ = param1;
      }
      
      public function §_-hB§() : Number
      {
         return this.§_-8Q§;
      }
      
      public function §_-ud§() : Number
      {
         return this.§_-W§;
      }
      
      public function §_-oj§(param1:Number, param2:Number) : void
      {
         b2internal::_-oB.SetAwake(true);
         b2internal::_-52.SetAwake(true);
         this.§_-8Q§ = param1;
         this.§_-W§ = param2;
      }
      
      public function §_-XE§() : Boolean
      {
         return this.§_-UZ§;
      }
      
      public function §_-aw§(param1:Boolean) : void
      {
         b2internal::_-oB.SetAwake(true);
         b2internal::_-52.SetAwake(true);
         this.§_-UZ§ = param1;
      }
      
      public function §_-F5§(param1:Number) : void
      {
         b2internal::_-oB.SetAwake(true);
         b2internal::_-52.SetAwake(true);
         this.§_-kY§ = param1;
      }
      
      public function §_-ad§() : Number
      {
         return this.§_-kY§;
      }
      
      public function §_-pX§(param1:Number) : void
      {
         b2internal::_-oB.SetAwake(true);
         b2internal::_-52.SetAwake(true);
         this.§_-lb§ = param1;
      }
      
      public function §_-MP§() : Number
      {
         return this.§_-O7§;
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
         var _loc2_:b2Body = b2internal::_-oB;
         var _loc3_:b2Body = b2internal::_-52;
         b2internal:: else.SetV(_loc2_.§_-5d§());
         b2internal::_-Wm.SetV(_loc3_.§_-5d§());
         var _loc6_:b2Transform = _loc2_.§_-fs§();
         var _loc7_:b2Transform = _loc3_.§_-fs§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal:: else.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal:: else.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-Wm.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-Wm.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §_-M8§ = _loc2_.§_-zL§;
         §_-pU§ = _loc3_.§_-zL§;
         §_-Fp§ = _loc2_.§_-aJ§;
         §_-Gb§ = _loc3_.§_-aJ§;
         this.§_-4C§.SetV(b2Math.§_-E0§(_loc6_.R,this.§_-Zm§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-4C§.y - (_loc13_ + _loc9_) * this.§_-4C§.x;
         this.m_a2 = _loc10_ * this.§_-4C§.y - _loc11_ * this.§_-4C§.x;
         this.§_-jK§ = b2internal::_-M8 + b2internal::_-pU + b2internal::_-Fp * this.m_a1 * this.m_a1 + b2internal::_-Gb * this.m_a2 * this.m_a2;
         if(this.§_-jK§ > Number.MIN_VALUE)
         {
            this.§_-jK§ = 1 / this.§_-jK§;
         }
         this.§_-1y§.SetV(b2Math.§_-E0§(_loc6_.R,this.§_-op§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-1y§.y - (_loc13_ + _loc9_) * this.§_-1y§.x;
         this.m_s2 = _loc10_ * this.§_-1y§.y - _loc11_ * this.§_-1y§.x;
         var _loc14_:Number = b2internal::_-M8;
         var _loc15_:Number = b2internal::_-pU;
         var _loc16_:Number = b2internal::_-Fp;
         var _loc17_:Number = b2internal::_-Gb;
         this.§_-Ob§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-Ob§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§_-Ob§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-Ob§.col2.x = this.§_-Ob§.col1.y;
         this.§_-Ob§.col2.y = _loc16_ + _loc17_;
         this.§_-Ob§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§_-Ob§.col3.x = this.§_-Ob§.col1.z;
         this.§_-Ob§.col3.y = this.§_-Ob§.col2.z;
         this.§_-Ob§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-Gy§)
         {
            _loc18_ = this.§_-4C§.x * _loc12_ + this.§_-4C§.y * _loc13_;
            if(b2Math.§_-hI§(this.§_-W§ - this.§_-8Q§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-x§ = b2internal::_-wp;
            }
            else if(_loc18_ <= this.§_-8Q§)
            {
               if(this.§_-x§ != b2internal::_-t2)
               {
                  this.§_-x§ = b2internal::_-t2;
                  this.§_-Ud§.z = 0;
               }
            }
            else if(_loc18_ >= this.§_-W§)
            {
               if(this.§_-x§ != b2internal::_-v7)
               {
                  this.§_-x§ = b2internal::_-v7;
                  this.§_-Ud§.z = 0;
               }
            }
            else
            {
               this.§_-x§ = b2internal::_-S8;
               this.§_-Ud§.z = 0;
            }
         }
         else
         {
            this.§_-x§ = b2internal::_-S8;
         }
         if(this.§_-UZ§ == false)
         {
            this.§_-O7§ = 0;
         }
         if(param1.§_-eH§)
         {
            this.§_-Ud§.x *= param1.§_-na§;
            this.§_-Ud§.y *= param1.§_-na§;
            this.§_-O7§ *= param1.§_-na§;
            _loc19_ = this.§_-Ud§.x * this.§_-1y§.x + (this.§_-O7§ + this.§_-Ud§.z) * this.§_-4C§.x;
            _loc20_ = this.§_-Ud§.x * this.§_-1y§.y + (this.§_-O7§ + this.§_-Ud§.z) * this.§_-4C§.y;
            _loc21_ = this.§_-Ud§.x * this.m_s1 + this.§_-Ud§.y + (this.§_-O7§ + this.§_-Ud§.z) * this.m_a1;
            _loc22_ = this.§_-Ud§.x * this.m_s2 + this.§_-Ud§.y + (this.§_-O7§ + this.§_-Ud§.z) * this.m_a2;
            _loc2_.§_-Yd§.x -= b2internal::_-M8 * _loc19_;
            _loc2_.§_-Yd§.y -= b2internal::_-M8 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-Fp * _loc21_;
            _loc3_.§_-Yd§.x += b2internal::_-pU * _loc19_;
            _loc3_.§_-Yd§.y += b2internal::_-pU * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-Gb * _loc22_;
         }
         else
         {
            this.§_-Ud§.§return§();
            this.§_-O7§ = 0;
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
         var _loc2_:b2Body = b2internal::_-oB;
         var _loc3_:b2Body = b2internal::_-52;
         var _loc4_:b2Vec2 = _loc2_.§_-Yd§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-Yd§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-UZ§ && this.§_-x§ != b2internal::_-wp)
         {
            _loc14_ = this.§_-4C§.x * (_loc6_.x - _loc4_.x) + this.§_-4C§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§_-jK§ * (this.§_-kY§ - _loc14_);
            _loc16_ = this.§_-O7§;
            _loc17_ = param1.§_-Km§ * this.§_-lb§;
            this.§_-O7§ = b2Math.§_-a4§(this.§_-O7§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§_-O7§ - _loc16_) * this.§_-4C§.x;
            _loc9_ = _loc15_ * this.§_-4C§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::_-M8 * _loc8_;
            _loc4_.y -= b2internal::_-M8 * _loc9_;
            _loc5_ -= b2internal::_-Fp * _loc10_;
            _loc6_.x += b2internal::_-pU * _loc8_;
            _loc6_.y += b2internal::_-pU * _loc9_;
            _loc7_ += b2internal::_-Gb * _loc11_;
         }
         var _loc12_:Number = this.§_-1y§.x * (_loc6_.x - _loc4_.x) + this.§_-1y§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§_-Gy§ && this.§_-x§ != b2internal::_-S8)
         {
            _loc18_ = this.§_-4C§.x * (_loc6_.x - _loc4_.x) + this.§_-4C§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§_-Ud§.Copy();
            _loc20_ = this.§_-Ob§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§_-Ud§.§_-vL§(_loc20_);
            if(this.§_-x§ == b2internal::_-t2)
            {
               this.§_-Ud§.z = b2Math.§_-6y§(this.§_-Ud§.z,0);
            }
            else if(this.§_-x§ == b2internal::_-v7)
            {
               this.§_-Ud§.z = b2Math.§_-6A§(this.§_-Ud§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§_-Ud§.z - _loc19_.z) * this.§_-Ob§.col3.x;
            _loc22_ = -_loc13_ - (this.§_-Ud§.z - _loc19_.z) * this.§_-Ob§.col3.y;
            _loc23_ = this.§_-Ob§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§_-Ud§.x = _loc23_.x;
            this.§_-Ud§.y = _loc23_.y;
            _loc20_.x = this.§_-Ud§.x - _loc19_.x;
            _loc20_.y = this.§_-Ud§.y - _loc19_.y;
            _loc20_.z = this.§_-Ud§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§_-1y§.x + _loc20_.z * this.§_-4C§.x;
            _loc9_ = _loc20_.x * this.§_-1y§.y + _loc20_.z * this.§_-4C§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::_-M8 * _loc8_;
            _loc4_.y -= b2internal::_-M8 * _loc9_;
            _loc5_ -= b2internal::_-Fp * _loc10_;
            _loc6_.x += b2internal::_-pU * _loc8_;
            _loc6_.y += b2internal::_-pU * _loc9_;
            _loc7_ += b2internal::_-Gb * _loc11_;
         }
         else
         {
            _loc24_ = this.§_-Ob§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§_-Ud§.x += _loc24_.x;
            this.§_-Ud§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§_-1y§.x;
            _loc9_ = _loc24_.x * this.§_-1y§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::_-M8 * _loc8_;
            _loc4_.y -= b2internal::_-M8 * _loc9_;
            _loc5_ -= b2internal::_-Fp * _loc10_;
            _loc6_.x += b2internal::_-pU * _loc8_;
            _loc6_.y += b2internal::_-pU * _loc9_;
            _loc7_ += b2internal::_-Gb * _loc11_;
         }
         _loc2_.§_-Yd§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-Yd§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-oB;
         var _loc5_:b2Body = b2internal::_-52;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-xB§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-xB§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal:: else.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal:: else.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-Wm.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-Wm.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-Gy§)
         {
            this.§_-4C§ = b2Math.§_-E0§(_loc20_,this.§_-Zm§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-4C§.y - (_loc27_ + _loc23_) * this.§_-4C§.x;
            this.m_a2 = _loc24_ * this.§_-4C§.y - _loc25_ * this.§_-4C§.x;
            _loc35_ = this.§_-4C§.x * _loc26_ + this.§_-4C§.y * _loc27_;
            if(b2Math.§_-hI§(this.§_-W§ - this.§_-8Q§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-a4§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-hI§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§_-8Q§)
            {
               _loc19_ = b2Math.§_-a4§(_loc35_ - this.§_-8Q§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-8Q§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§_-W§)
            {
               _loc19_ = b2Math.§_-a4§(_loc35_ - this.§_-W§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§_-W§;
               _loc18_ = true;
            }
         }
         this.§_-1y§ = b2Math.§_-E0§(_loc20_,this.§_-op§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-1y§.y - (_loc27_ + _loc23_) * this.§_-1y§.x;
         this.m_s2 = _loc24_ * this.§_-1y§.y - _loc25_ * this.§_-1y§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§_-1y§.x * _loc26_ + this.§_-1y§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§_-4U§;
         _loc16_ = b2Math.§_-6y§(_loc16_,b2Math.§_-hI§(_loc29_));
         _loc17_ = b2Math.§_-hI§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::_-M8;
            _loc13_ = b2internal::_-pU;
            _loc14_ = b2internal::_-Fp;
            _loc15_ = b2internal::_-Gb;
            this.§_-Ob§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-Ob§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§_-Ob§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-Ob§.col2.x = this.§_-Ob§.col1.y;
            this.§_-Ob§.col2.y = _loc14_ + _loc15_;
            this.§_-Ob§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§_-Ob§.col3.x = this.§_-Ob§.col1.z;
            this.§_-Ob§.col3.y = this.§_-Ob§.col2.z;
            this.§_-Ob§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-Ob§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-M8;
            _loc13_ = b2internal::_-pU;
            _loc14_ = b2internal::_-Fp;
            _loc15_ = b2internal::_-Gb;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§_-Ob§.col1.Set(_loc36_,_loc37_,0);
            this.§_-Ob§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§_-Ob§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§_-1y§.x + _loc28_.z * this.§_-4C§.x;
         var _loc32_:Number = _loc28_.x * this.§_-1y§.y + _loc28_.z * this.§_-4C§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::_-M8 * _loc31_;
         _loc6_.y -= b2internal::_-M8 * _loc32_;
         _loc7_ -= b2internal::_-Fp * _loc33_;
         _loc8_.x += b2internal::_-pU * _loc31_;
         _loc8_.y += b2internal::_-pU * _loc32_;
         _loc9_ += b2internal::_-Gb * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-X2§();
         _loc5_.§_-X2§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
