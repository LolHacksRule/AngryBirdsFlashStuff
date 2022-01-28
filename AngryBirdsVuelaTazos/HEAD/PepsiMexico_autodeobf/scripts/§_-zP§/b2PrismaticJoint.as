package §_-zP§
{
   import §_-bA§.b2Mat22;
   import §_-bA§.b2Mat33;
   import §_-bA§.b2Math;
   import §_-bA§.b2Transform;
   import §_-bA§.b2Vec2;
   import §_-bA§.b2Vec3;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-lW§:b2Vec2;
      
      private var §_-Je§:b2Vec2;
      
      private var §_-mu§:Number;
      
      private var §_-hR§:b2Vec2;
      
      private var §_-g5§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var § use§:b2Mat33;
      
      private var §_-TZ§:b2Vec3;
      
      private var §_-Nr§:Number;
      
      private var §_-ss§:Number;
      
      private var §_-Pr§:Number;
      
      private var §_-XF§:Number;
      
      private var §_-t8§:Number;
      
      private var §_-qu§:Number;
      
      private var §_-KD§:Boolean;
      
      private var §_-Td§:Boolean;
      
      private var §_-l-§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-lW§ = new b2Vec2();
         this.§_-Je§ = new b2Vec2();
         this.§_-hR§ = new b2Vec2();
         this.§_-g5§ = new b2Vec2();
         this.§ use§ = new b2Mat33();
         this.§_-TZ§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Ys§);
         this.m_localAnchor2.SetV(param1.§_-8p§);
         this.§_-lW§.SetV(param1.§_-KT§);
         this.§_-Je§.x = -this.§_-lW§.y;
         this.§_-Je§.y = this.§_-lW§.x;
         this.§_-mu§ = param1.§_-51§;
         this.§_-TZ§.§_-qi§();
         this.§_-Nr§ = 0;
         this.§_-ss§ = 0;
         this.§_-Pr§ = param1.§_-1h§;
         this.§_-XF§ = param1.§_-dU§;
         this.§_-t8§ = param1.§_-cG§;
         this.§_-qu§ = param1.motorSpeed;
         this.§_-KD§ = param1.§_-LR§;
         this.§_-Td§ = param1.§_-FI§;
         this.§_-l-§ = b2internal::_-bn;
         this.§_-hR§.§_-qi§();
         this.§_-g5§.§_-qi§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Vj.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qa.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§_-TZ§.x * this.§_-g5§.x + (this.§_-ss§ + this.§_-TZ§.z) * this.§_-hR§.x),param1 * (this.§_-TZ§.x * this.§_-g5§.y + (this.§_-ss§ + this.§_-TZ§.z) * this.§_-hR§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-TZ§.y;
      }
      
      public function §_-YC§() : Number
      {
         var _loc1_:b2Body = b2internal::_-Vj;
         var _loc2_:b2Body = b2internal::_-qa;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-wt§(this.§_-lW§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-dc§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-Vj;
         var _loc2_:b2Body = b2internal::_-qa;
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
         var _loc9_:Number = _loc1_.m_sweep.§_-Zh§.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.§_-Zh§.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.§_-Zh§.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.§_-Zh§.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§_-wt§(this.§_-lW§);
         var _loc16_:b2Vec2 = _loc1_.§_-At§;
         var _loc17_:b2Vec2 = _loc2_.§_-At§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-oU§() : Boolean
      {
         return this.§_-KD§;
      }
      
      public function §_-f§(param1:Boolean) : void
      {
         b2internal::_-Vj.SetAwake(true);
         b2internal::_-qa.SetAwake(true);
         this.§_-KD§ = param1;
      }
      
      public function §_-zj§() : Number
      {
         return this.§_-Pr§;
      }
      
      public function §_-jd§() : Number
      {
         return this.§_-XF§;
      }
      
      public function §_-JY§(param1:Number, param2:Number) : void
      {
         b2internal::_-Vj.SetAwake(true);
         b2internal::_-qa.SetAwake(true);
         this.§_-Pr§ = param1;
         this.§_-XF§ = param2;
      }
      
      public function §_-7o§() : Boolean
      {
         return this.§_-Td§;
      }
      
      public function §_-79§(param1:Boolean) : void
      {
         b2internal::_-Vj.SetAwake(true);
         b2internal::_-qa.SetAwake(true);
         this.§_-Td§ = param1;
      }
      
      public function §_-24§(param1:Number) : void
      {
         b2internal::_-Vj.SetAwake(true);
         b2internal::_-qa.SetAwake(true);
         this.§_-qu§ = param1;
      }
      
      public function §_-4B§() : Number
      {
         return this.§_-qu§;
      }
      
      public function §_-4S§(param1:Number) : void
      {
         b2internal::_-Vj.SetAwake(true);
         b2internal::_-qa.SetAwake(true);
         this.§_-t8§ = param1;
      }
      
      public function §_-2k§() : Number
      {
         return this.§_-ss§;
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
         var _loc2_:b2Body = b2internal::_-Vj;
         var _loc3_:b2Body = b2internal::_-qa;
         b2internal::_-va.SetV(_loc2_.§_-he§());
         b2internal::_-8n.SetV(_loc3_.§_-he§());
         var _loc6_:b2Transform = _loc2_.§_-ow§();
         var _loc7_:b2Transform = _loc3_.§_-ow§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-va.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-va.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-8n.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-8n.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.§_-Zh§.x + _loc10_ - _loc2_.m_sweep.§_-Zh§.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.§_-Zh§.y + _loc11_ - _loc2_.m_sweep.§_-Zh§.y - _loc9_;
         §_-DC§ = _loc2_.§_-Wd§;
         §_-TG§ = _loc3_.§_-Wd§;
         §_-NS§ = _loc2_.§_-Ox§;
         §_-e§ = _loc3_.§_-Ox§;
         this.§_-hR§.SetV(b2Math.§_-7h§(_loc6_.R,this.§_-lW§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-hR§.y - (_loc13_ + _loc9_) * this.§_-hR§.x;
         this.m_a2 = _loc10_ * this.§_-hR§.y - _loc11_ * this.§_-hR§.x;
         this.§_-Nr§ = b2internal::_-DC + b2internal::_-TG + b2internal::_-NS * this.m_a1 * this.m_a1 + b2internal::_-e * this.m_a2 * this.m_a2;
         if(this.§_-Nr§ > Number.MIN_VALUE)
         {
            this.§_-Nr§ = 1 / this.§_-Nr§;
         }
         this.§_-g5§.SetV(b2Math.§_-7h§(_loc6_.R,this.§_-Je§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-g5§.y - (_loc13_ + _loc9_) * this.§_-g5§.x;
         this.m_s2 = _loc10_ * this.§_-g5§.y - _loc11_ * this.§_-g5§.x;
         var _loc14_:Number = b2internal::_-DC;
         var _loc15_:Number = b2internal::_-TG;
         var _loc16_:Number = b2internal::_-NS;
         var _loc17_:Number = b2internal::_-e;
         this.§ use§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§ use§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§ use§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§ use§.col2.x = this.§ use§.col1.y;
         this.§ use§.col2.y = _loc16_ + _loc17_;
         this.§ use§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§ use§.col3.x = this.§ use§.col1.z;
         this.§ use§.col3.y = this.§ use§.col2.z;
         this.§ use§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-KD§)
         {
            _loc18_ = this.§_-hR§.x * _loc12_ + this.§_-hR§.y * _loc13_;
            if(b2Math.§_-30§(this.§_-XF§ - this.§_-Pr§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-l-§ = b2internal::_-SD;
            }
            else if(_loc18_ <= this.§_-Pr§)
            {
               if(this.§_-l-§ != b2internal::_-3O)
               {
                  this.§_-l-§ = b2internal::_-3O;
                  this.§_-TZ§.z = 0;
               }
            }
            else if(_loc18_ >= this.§_-XF§)
            {
               if(this.§_-l-§ != b2internal::_-3x)
               {
                  this.§_-l-§ = b2internal::_-3x;
                  this.§_-TZ§.z = 0;
               }
            }
            else
            {
               this.§_-l-§ = b2internal::_-bn;
               this.§_-TZ§.z = 0;
            }
         }
         else
         {
            this.§_-l-§ = b2internal::_-bn;
         }
         if(this.§_-Td§ == false)
         {
            this.§_-ss§ = 0;
         }
         if(param1.§_-uU§)
         {
            this.§_-TZ§.x *= param1.§_-D§;
            this.§_-TZ§.y *= param1.§_-D§;
            this.§_-ss§ *= param1.§_-D§;
            _loc19_ = this.§_-TZ§.x * this.§_-g5§.x + (this.§_-ss§ + this.§_-TZ§.z) * this.§_-hR§.x;
            _loc20_ = this.§_-TZ§.x * this.§_-g5§.y + (this.§_-ss§ + this.§_-TZ§.z) * this.§_-hR§.y;
            _loc21_ = this.§_-TZ§.x * this.m_s1 + this.§_-TZ§.y + (this.§_-ss§ + this.§_-TZ§.z) * this.m_a1;
            _loc22_ = this.§_-TZ§.x * this.m_s2 + this.§_-TZ§.y + (this.§_-ss§ + this.§_-TZ§.z) * this.m_a2;
            _loc2_.§_-At§.x -= b2internal::_-DC * _loc19_;
            _loc2_.§_-At§.y -= b2internal::_-DC * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-NS * _loc21_;
            _loc3_.§_-At§.x += b2internal::_-TG * _loc19_;
            _loc3_.§_-At§.y += b2internal::_-TG * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-e * _loc22_;
         }
         else
         {
            this.§_-TZ§.§_-qi§();
            this.§_-ss§ = 0;
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
         var _loc2_:b2Body = b2internal::_-Vj;
         var _loc3_:b2Body = b2internal::_-qa;
         var _loc4_:b2Vec2 = _loc2_.§_-At§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-At§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-Td§ && this.§_-l-§ != b2internal::_-SD)
         {
            _loc14_ = this.§_-hR§.x * (_loc6_.x - _loc4_.x) + this.§_-hR§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§_-Nr§ * (this.§_-qu§ - _loc14_);
            _loc16_ = this.§_-ss§;
            _loc17_ = param1.§_-Qf§ * this.§_-t8§;
            this.§_-ss§ = b2Math.§_-rr§(this.§_-ss§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§_-ss§ - _loc16_) * this.§_-hR§.x;
            _loc9_ = _loc15_ * this.§_-hR§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::_-DC * _loc8_;
            _loc4_.y -= b2internal::_-DC * _loc9_;
            _loc5_ -= b2internal::_-NS * _loc10_;
            _loc6_.x += b2internal::_-TG * _loc8_;
            _loc6_.y += b2internal::_-TG * _loc9_;
            _loc7_ += b2internal::_-e * _loc11_;
         }
         var _loc12_:Number = this.§_-g5§.x * (_loc6_.x - _loc4_.x) + this.§_-g5§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§_-KD§ && this.§_-l-§ != b2internal::_-bn)
         {
            _loc18_ = this.§_-hR§.x * (_loc6_.x - _loc4_.x) + this.§_-hR§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§_-TZ§.Copy();
            _loc20_ = this.§ use§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§_-TZ§.§_-B8§(_loc20_);
            if(this.§_-l-§ == b2internal::_-3O)
            {
               this.§_-TZ§.z = b2Math.§_-44§(this.§_-TZ§.z,0);
            }
            else if(this.§_-l-§ == b2internal::_-3x)
            {
               this.§_-TZ§.z = b2Math.§_-1A§(this.§_-TZ§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§_-TZ§.z - _loc19_.z) * this.§ use§.col3.x;
            _loc22_ = -_loc13_ - (this.§_-TZ§.z - _loc19_.z) * this.§ use§.col3.y;
            _loc23_ = this.§ use§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§_-TZ§.x = _loc23_.x;
            this.§_-TZ§.y = _loc23_.y;
            _loc20_.x = this.§_-TZ§.x - _loc19_.x;
            _loc20_.y = this.§_-TZ§.y - _loc19_.y;
            _loc20_.z = this.§_-TZ§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§_-g5§.x + _loc20_.z * this.§_-hR§.x;
            _loc9_ = _loc20_.x * this.§_-g5§.y + _loc20_.z * this.§_-hR§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::_-DC * _loc8_;
            _loc4_.y -= b2internal::_-DC * _loc9_;
            _loc5_ -= b2internal::_-NS * _loc10_;
            _loc6_.x += b2internal::_-TG * _loc8_;
            _loc6_.y += b2internal::_-TG * _loc9_;
            _loc7_ += b2internal::_-e * _loc11_;
         }
         else
         {
            _loc24_ = this.§ use§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§_-TZ§.x += _loc24_.x;
            this.§_-TZ§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§_-g5§.x;
            _loc9_ = _loc24_.x * this.§_-g5§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::_-DC * _loc8_;
            _loc4_.y -= b2internal::_-DC * _loc9_;
            _loc5_ -= b2internal::_-NS * _loc10_;
            _loc6_.x += b2internal::_-TG * _loc8_;
            _loc6_.y += b2internal::_-TG * _loc9_;
            _loc7_ += b2internal::_-e * _loc11_;
         }
         _loc2_.§_-At§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-At§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-Vj;
         var _loc5_:b2Body = b2internal::_-qa;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.§_-Zh§;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.§_-Zh§;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-NW§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-NW§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-va.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-va.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-8n.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-8n.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-KD§)
         {
            this.§_-hR§ = b2Math.§_-7h§(_loc20_,this.§_-lW§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-hR§.y - (_loc27_ + _loc23_) * this.§_-hR§.x;
            this.m_a2 = _loc24_ * this.§_-hR§.y - _loc25_ * this.§_-hR§.x;
            _loc35_ = this.§_-hR§.x * _loc26_ + this.§_-hR§.y * _loc27_;
            if(b2Math.§_-30§(this.§_-XF§ - this.§_-Pr§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-rr§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-30§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§_-Pr§)
            {
               _loc19_ = b2Math.§_-rr§(_loc35_ - this.§_-Pr§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-Pr§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§_-XF§)
            {
               _loc19_ = b2Math.§_-rr§(_loc35_ - this.§_-XF§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§_-XF§;
               _loc18_ = true;
            }
         }
         this.§_-g5§ = b2Math.§_-7h§(_loc20_,this.§_-Je§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-g5§.y - (_loc27_ + _loc23_) * this.§_-g5§.x;
         this.m_s2 = _loc24_ * this.§_-g5§.y - _loc25_ * this.§_-g5§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§_-g5§.x * _loc26_ + this.§_-g5§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§_-mu§;
         _loc16_ = b2Math.§_-44§(_loc16_,b2Math.§_-30§(_loc29_));
         _loc17_ = b2Math.§_-30§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::_-DC;
            _loc13_ = b2internal::_-TG;
            _loc14_ = b2internal::_-NS;
            _loc15_ = b2internal::_-e;
            this.§ use§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§ use§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§ use§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§ use§.col2.x = this.§ use§.col1.y;
            this.§ use§.col2.y = _loc14_ + _loc15_;
            this.§ use§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§ use§.col3.x = this.§ use§.col1.z;
            this.§ use§.col3.y = this.§ use§.col2.z;
            this.§ use§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§ use§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-DC;
            _loc13_ = b2internal::_-TG;
            _loc14_ = b2internal::_-NS;
            _loc15_ = b2internal::_-e;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§ use§.col1.Set(_loc36_,_loc37_,0);
            this.§ use§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§ use§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§_-g5§.x + _loc28_.z * this.§_-hR§.x;
         var _loc32_:Number = _loc28_.x * this.§_-g5§.y + _loc28_.z * this.§_-hR§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::_-DC * _loc31_;
         _loc6_.y -= b2internal::_-DC * _loc32_;
         _loc7_ -= b2internal::_-NS * _loc33_;
         _loc8_.x += b2internal::_-TG * _loc31_;
         _loc8_.y += b2internal::_-TG * _loc32_;
         _loc9_ += b2internal::_-e * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-I5§();
         _loc5_.§_-I5§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
