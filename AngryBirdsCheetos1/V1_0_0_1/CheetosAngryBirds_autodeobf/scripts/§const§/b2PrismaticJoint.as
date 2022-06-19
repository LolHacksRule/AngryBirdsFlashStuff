package §const§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cP§.b2Mat22;
   import §_-cP§.b2Mat33;
   import §_-cP§.b2Math;
   import §_-cP§.b2Transform;
   import §_-cP§.b2Vec2;
   import §_-cP§.b2Vec3;
   import §try§.b2Body;
   import §try§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-9L§:b2Vec2;
      
      private var §_-JK§:b2Vec2;
      
      private var §_-LC§:Number;
      
      private var §_-40§:b2Vec2;
      
      private var §_-Bo§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-1l§:b2Mat33;
      
      private var §_-gD§:b2Vec3;
      
      private var §_-WQ§:Number;
      
      private var §_-4-§:Number;
      
      private var §_-zT§:Number;
      
      private var §_-SX§:Number;
      
      private var §_-HX§:Number;
      
      private var §_-1L§:Number;
      
      private var §_-8L§:Boolean;
      
      private var §_-eb§:Boolean;
      
      private var §_-ly§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-9L§ = new b2Vec2();
         this.§_-JK§ = new b2Vec2();
         this.§_-40§ = new b2Vec2();
         this.§_-Bo§ = new b2Vec2();
         this.§_-1l§ = new b2Mat33();
         this.§_-gD§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-Vd§);
         this.m_localAnchor2.SetV(param1.§_-j3§);
         this.§_-9L§.SetV(param1.§_-dq§);
         this.§_-JK§.x = -this.§_-9L§.y;
         this.§_-JK§.y = this.§_-9L§.x;
         this.§_-LC§ = param1.§_-hs§;
         this.§_-gD§.§_-WO§();
         this.§_-WQ§ = 0;
         this.§_-4-§ = 0;
         this.§_-zT§ = param1.§_-0V§;
         this.§_-SX§ = param1.§_-vo§;
         this.§_-HX§ = param1.§_-69§;
         this.§_-1L§ = param1.motorSpeed;
         this.§_-8L§ = param1.§_-XG§;
         this.§_-eb§ = param1.§_-uC§;
         this.§_-ly§ = b2internal::_-Qy;
         this.§_-40§.§_-WO§();
         this.§_-Bo§.§_-WO§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Jb.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-RO.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§_-gD§.x * this.§_-Bo§.x + (this.§_-4-§ + this.§_-gD§.z) * this.§_-40§.x),param1 * (this.§_-gD§.x * this.§_-Bo§.y + (this.§_-4-§ + this.§_-gD§.z) * this.§_-40§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-gD§.y;
      }
      
      public function §_-8e§() : Number
      {
         var _loc1_:b2Body = b2internal::_-Jb;
         var _loc2_:b2Body = b2internal::_-RO;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-4U§(this.§_-9L§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-iZ§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-Jb;
         var _loc2_:b2Body = b2internal::_-RO;
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
         var _loc9_:Number = _loc1_.m_sweep.§_-xQ§.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.§_-xQ§.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.§_-xQ§.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.§_-xQ§.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§_-4U§(this.§_-9L§);
         var _loc16_:b2Vec2 = _loc1_.§_-PK§;
         var _loc17_:b2Vec2 = _loc2_.§_-PK§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-I2§() : Boolean
      {
         return this.§_-8L§;
      }
      
      public function §_-3b§(param1:Boolean) : void
      {
         b2internal::_-Jb.SetAwake(true);
         b2internal::_-RO.SetAwake(true);
         this.§_-8L§ = param1;
      }
      
      public function §_-C7§() : Number
      {
         return this.§_-zT§;
      }
      
      public function §_-nr§() : Number
      {
         return this.§_-SX§;
      }
      
      public function §_-Rq§(param1:Number, param2:Number) : void
      {
         b2internal::_-Jb.SetAwake(true);
         b2internal::_-RO.SetAwake(true);
         this.§_-zT§ = param1;
         this.§_-SX§ = param2;
      }
      
      public function §_-0-N§() : Boolean
      {
         return this.§_-eb§;
      }
      
      public function §_-j5§(param1:Boolean) : void
      {
         b2internal::_-Jb.SetAwake(true);
         b2internal::_-RO.SetAwake(true);
         this.§_-eb§ = param1;
      }
      
      public function §_-b7§(param1:Number) : void
      {
         b2internal::_-Jb.SetAwake(true);
         b2internal::_-RO.SetAwake(true);
         this.§_-1L§ = param1;
      }
      
      public function §_-oa§() : Number
      {
         return this.§_-1L§;
      }
      
      public function §_-9O§(param1:Number) : void
      {
         b2internal::_-Jb.SetAwake(true);
         b2internal::_-RO.SetAwake(true);
         this.§_-HX§ = param1;
      }
      
      public function §_-gY§() : Number
      {
         return this.§_-4-§;
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
         var _loc2_:b2Body = b2internal::_-Jb;
         var _loc3_:b2Body = b2internal::_-RO;
         b2internal::_-iO.SetV(_loc2_.§_-D5§());
         b2internal::_-Jr.SetV(_loc3_.§_-D5§());
         var _loc6_:b2Transform = _loc2_.§_-KR§();
         var _loc7_:b2Transform = _loc3_.§_-KR§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-iO.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-iO.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-Jr.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-Jr.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.§_-xQ§.x + _loc10_ - _loc2_.m_sweep.§_-xQ§.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.§_-xQ§.y + _loc11_ - _loc2_.m_sweep.§_-xQ§.y - _loc9_;
         §_-Ma§ = _loc2_.§_-hk§;
         §_-cY§ = _loc3_.§_-hk§;
         §else § = _loc2_.§_-LF§;
         §_-Bp§ = _loc3_.§_-LF§;
         this.§_-40§.SetV(b2Math.§_-jK§(_loc6_.R,this.§_-9L§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-40§.y - (_loc13_ + _loc9_) * this.§_-40§.x;
         this.m_a2 = _loc10_ * this.§_-40§.y - _loc11_ * this.§_-40§.x;
         this.§_-WQ§ = b2internal::_-Ma + b2internal::_-cY + b2internal::else  * this.m_a1 * this.m_a1 + b2internal::_-Bp * this.m_a2 * this.m_a2;
         if(this.§_-WQ§ > Number.MIN_VALUE)
         {
            this.§_-WQ§ = 1 / this.§_-WQ§;
         }
         this.§_-Bo§.SetV(b2Math.§_-jK§(_loc6_.R,this.§_-JK§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-Bo§.y - (_loc13_ + _loc9_) * this.§_-Bo§.x;
         this.m_s2 = _loc10_ * this.§_-Bo§.y - _loc11_ * this.§_-Bo§.x;
         var _loc14_:Number = b2internal::_-Ma;
         var _loc15_:Number = b2internal::_-cY;
         var _loc16_:Number = b2internal::else ;
         var _loc17_:Number = b2internal::_-Bp;
         this.§_-1l§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-1l§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§_-1l§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-1l§.col2.x = this.§_-1l§.col1.y;
         this.§_-1l§.col2.y = _loc16_ + _loc17_;
         this.§_-1l§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§_-1l§.col3.x = this.§_-1l§.col1.z;
         this.§_-1l§.col3.y = this.§_-1l§.col2.z;
         this.§_-1l§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-8L§)
         {
            _loc18_ = this.§_-40§.x * _loc12_ + this.§_-40§.y * _loc13_;
            if(b2Math.§_-5C§(this.§_-SX§ - this.§_-zT§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-ly§ = b2internal::get;
            }
            else if(_loc18_ <= this.§_-zT§)
            {
               if(this.§_-ly§ != b2internal::_-yU)
               {
                  this.§_-ly§ = b2internal::_-yU;
                  this.§_-gD§.z = 0;
               }
            }
            else if(_loc18_ >= this.§_-SX§)
            {
               if(this.§_-ly§ != b2internal::_-mY)
               {
                  this.§_-ly§ = b2internal::_-mY;
                  this.§_-gD§.z = 0;
               }
            }
            else
            {
               this.§_-ly§ = b2internal::_-Qy;
               this.§_-gD§.z = 0;
            }
         }
         else
         {
            this.§_-ly§ = b2internal::_-Qy;
         }
         if(this.§_-eb§ == false)
         {
            this.§_-4-§ = 0;
         }
         if(param1.§_-0X§)
         {
            this.§_-gD§.x *= param1.§_-Mu§;
            this.§_-gD§.y *= param1.§_-Mu§;
            this.§_-4-§ *= param1.§_-Mu§;
            _loc19_ = this.§_-gD§.x * this.§_-Bo§.x + (this.§_-4-§ + this.§_-gD§.z) * this.§_-40§.x;
            _loc20_ = this.§_-gD§.x * this.§_-Bo§.y + (this.§_-4-§ + this.§_-gD§.z) * this.§_-40§.y;
            _loc21_ = this.§_-gD§.x * this.m_s1 + this.§_-gD§.y + (this.§_-4-§ + this.§_-gD§.z) * this.m_a1;
            _loc22_ = this.§_-gD§.x * this.m_s2 + this.§_-gD§.y + (this.§_-4-§ + this.§_-gD§.z) * this.m_a2;
            _loc2_.§_-PK§.x -= b2internal::_-Ma * _loc19_;
            _loc2_.§_-PK§.y -= b2internal::_-Ma * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::else  * _loc21_;
            _loc3_.§_-PK§.x += b2internal::_-cY * _loc19_;
            _loc3_.§_-PK§.y += b2internal::_-cY * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-Bp * _loc22_;
         }
         else
         {
            this.§_-gD§.§_-WO§();
            this.§_-4-§ = 0;
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
         var _loc2_:b2Body = b2internal::_-Jb;
         var _loc3_:b2Body = b2internal::_-RO;
         var _loc4_:b2Vec2 = _loc2_.§_-PK§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-PK§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-eb§ && this.§_-ly§ != b2internal::get)
         {
            _loc14_ = this.§_-40§.x * (_loc6_.x - _loc4_.x) + this.§_-40§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§_-WQ§ * (this.§_-1L§ - _loc14_);
            _loc16_ = this.§_-4-§;
            _loc17_ = param1.§_-ec§ * this.§_-HX§;
            this.§_-4-§ = b2Math.§_-9P§(this.§_-4-§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§_-4-§ - _loc16_) * this.§_-40§.x;
            _loc9_ = _loc15_ * this.§_-40§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::_-Ma * _loc8_;
            _loc4_.y -= b2internal::_-Ma * _loc9_;
            _loc5_ -= b2internal::else  * _loc10_;
            _loc6_.x += b2internal::_-cY * _loc8_;
            _loc6_.y += b2internal::_-cY * _loc9_;
            _loc7_ += b2internal::_-Bp * _loc11_;
         }
         var _loc12_:Number = this.§_-Bo§.x * (_loc6_.x - _loc4_.x) + this.§_-Bo§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§_-8L§ && this.§_-ly§ != b2internal::_-Qy)
         {
            _loc18_ = this.§_-40§.x * (_loc6_.x - _loc4_.x) + this.§_-40§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§_-gD§.Copy();
            _loc20_ = this.§_-1l§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§_-gD§.§_-db§(_loc20_);
            if(this.§_-ly§ == b2internal::_-yU)
            {
               this.§_-gD§.z = b2Math.§_-5m§(this.§_-gD§.z,0);
            }
            else if(this.§_-ly§ == b2internal::_-mY)
            {
               this.§_-gD§.z = b2Math.§_-gF§(this.§_-gD§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§_-gD§.z - _loc19_.z) * this.§_-1l§.col3.x;
            _loc22_ = -_loc13_ - (this.§_-gD§.z - _loc19_.z) * this.§_-1l§.col3.y;
            _loc23_ = this.§_-1l§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§_-gD§.x = _loc23_.x;
            this.§_-gD§.y = _loc23_.y;
            _loc20_.x = this.§_-gD§.x - _loc19_.x;
            _loc20_.y = this.§_-gD§.y - _loc19_.y;
            _loc20_.z = this.§_-gD§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§_-Bo§.x + _loc20_.z * this.§_-40§.x;
            _loc9_ = _loc20_.x * this.§_-Bo§.y + _loc20_.z * this.§_-40§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::_-Ma * _loc8_;
            _loc4_.y -= b2internal::_-Ma * _loc9_;
            _loc5_ -= b2internal::else  * _loc10_;
            _loc6_.x += b2internal::_-cY * _loc8_;
            _loc6_.y += b2internal::_-cY * _loc9_;
            _loc7_ += b2internal::_-Bp * _loc11_;
         }
         else
         {
            _loc24_ = this.§_-1l§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§_-gD§.x += _loc24_.x;
            this.§_-gD§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§_-Bo§.x;
            _loc9_ = _loc24_.x * this.§_-Bo§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::_-Ma * _loc8_;
            _loc4_.y -= b2internal::_-Ma * _loc9_;
            _loc5_ -= b2internal::else  * _loc10_;
            _loc6_.x += b2internal::_-cY * _loc8_;
            _loc6_.y += b2internal::_-cY * _loc9_;
            _loc7_ += b2internal::_-Bp * _loc11_;
         }
         _loc2_.§_-PK§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-PK§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-Jb;
         var _loc5_:b2Body = b2internal::_-RO;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.§_-xQ§;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.§_-xQ§;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-GP§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-GP§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-iO.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-iO.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-Jr.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-Jr.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-8L§)
         {
            this.§_-40§ = b2Math.§_-jK§(_loc20_,this.§_-9L§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-40§.y - (_loc27_ + _loc23_) * this.§_-40§.x;
            this.m_a2 = _loc24_ * this.§_-40§.y - _loc25_ * this.§_-40§.x;
            _loc35_ = this.§_-40§.x * _loc26_ + this.§_-40§.y * _loc27_;
            if(b2Math.§_-5C§(this.§_-SX§ - this.§_-zT§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-9P§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-5C§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§_-zT§)
            {
               _loc19_ = b2Math.§_-9P§(_loc35_ - this.§_-zT§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-zT§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§_-SX§)
            {
               _loc19_ = b2Math.§_-9P§(_loc35_ - this.§_-SX§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§_-SX§;
               _loc18_ = true;
            }
         }
         this.§_-Bo§ = b2Math.§_-jK§(_loc20_,this.§_-JK§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-Bo§.y - (_loc27_ + _loc23_) * this.§_-Bo§.x;
         this.m_s2 = _loc24_ * this.§_-Bo§.y - _loc25_ * this.§_-Bo§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§_-Bo§.x * _loc26_ + this.§_-Bo§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§_-LC§;
         _loc16_ = b2Math.§_-5m§(_loc16_,b2Math.§_-5C§(_loc29_));
         _loc17_ = b2Math.§_-5C§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::_-Ma;
            _loc13_ = b2internal::_-cY;
            _loc14_ = b2internal::else ;
            _loc15_ = b2internal::_-Bp;
            this.§_-1l§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-1l§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§_-1l§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-1l§.col2.x = this.§_-1l§.col1.y;
            this.§_-1l§.col2.y = _loc14_ + _loc15_;
            this.§_-1l§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§_-1l§.col3.x = this.§_-1l§.col1.z;
            this.§_-1l§.col3.y = this.§_-1l§.col2.z;
            this.§_-1l§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-1l§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-Ma;
            _loc13_ = b2internal::_-cY;
            _loc14_ = b2internal::else ;
            _loc15_ = b2internal::_-Bp;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§_-1l§.col1.Set(_loc36_,_loc37_,0);
            this.§_-1l§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§_-1l§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§_-Bo§.x + _loc28_.z * this.§_-40§.x;
         var _loc32_:Number = _loc28_.x * this.§_-Bo§.y + _loc28_.z * this.§_-40§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::_-Ma * _loc31_;
         _loc6_.y -= b2internal::_-Ma * _loc32_;
         _loc7_ -= b2internal::else  * _loc33_;
         _loc8_.x += b2internal::_-cY * _loc31_;
         _loc8_.y += b2internal::_-cY * _loc32_;
         _loc9_ += b2internal::_-Bp * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-fH§();
         _loc5_.§_-fH§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
