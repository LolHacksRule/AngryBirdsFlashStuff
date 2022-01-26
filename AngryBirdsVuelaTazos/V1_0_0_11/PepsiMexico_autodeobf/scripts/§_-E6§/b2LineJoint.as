package §_-E6§
{
   import §_-WW§.b2Body;
   import §_-WW§.b2TimeStep;
   import §_-dx§.b2Mat22;
   import §_-dx§.b2Math;
   import §_-dx§.b2Transform;
   import §_-dx§.b2Vec2;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-8L§:b2Vec2;
      
      private var §_-Nj§:b2Vec2;
      
      private var §_-oP§:b2Vec2;
      
      private var §_-F4§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-kv§:b2Mat22;
      
      private var §_-TC§:b2Vec2;
      
      private var §_-ay§:Number;
      
      private var §_-OB§:Number;
      
      private var §_-b1§:Number;
      
      private var §_-ou§:Number;
      
      private var §_-BN§:Number;
      
      private var §_-lP§:Number;
      
      private var §_-Th§:Boolean;
      
      private var §_-iP§:Boolean;
      
      private var §_-N0§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-8L§ = new b2Vec2();
         this.§_-Nj§ = new b2Vec2();
         this.§_-oP§ = new b2Vec2();
         this.§_-F4§ = new b2Vec2();
         this.§_-kv§ = new b2Mat22();
         this.§_-TC§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-uE§);
         this.m_localAnchor2.SetV(param1.§_-L5§);
         this.§_-8L§.SetV(param1.§_-qZ§);
         this.§_-Nj§.x = -this.§_-8L§.y;
         this.§_-Nj§.y = this.§_-8L§.x;
         this.§_-TC§.§_-pZ§();
         this.§_-ay§ = 0;
         this.§_-OB§ = 0;
         this.§_-b1§ = param1.§_-7G§;
         this.§_-ou§ = param1.§_-BR§;
         this.§_-BN§ = param1.§_-mu§;
         this.§_-lP§ = param1.motorSpeed;
         this.§_-Th§ = param1.§_-fG§;
         this.§_-iP§ = param1.§_-HV§;
         this.§_-N0§ = b2internal::_-H9;
         this.§_-oP§.§_-pZ§();
         this.§_-F4§.§_-pZ§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-t6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-7f.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§_-TC§.x * this.§_-F4§.x + (this.§_-OB§ + this.§_-TC§.y) * this.§_-oP§.x),param1 * (this.§_-TC§.x * this.§_-F4§.y + (this.§_-OB§ + this.§_-TC§.y) * this.§_-oP§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-TC§.y;
      }
      
      public function §_-KA§() : Number
      {
         var _loc1_:b2Body = b2internal::_-t6;
         var _loc2_:b2Body = b2internal::_-7f;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-sz§(this.§_-8L§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-rC§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-t6;
         var _loc2_:b2Body = b2internal::_-7f;
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
         var _loc15_:b2Vec2 = _loc1_.§_-sz§(this.§_-8L§);
         var _loc16_:b2Vec2 = _loc1_.§_-Ce§;
         var _loc17_:b2Vec2 = _loc2_.§_-Ce§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-KT§() : Boolean
      {
         return this.§_-Th§;
      }
      
      public function §_-aM§(param1:Boolean) : void
      {
         b2internal::_-t6.SetAwake(true);
         b2internal::_-7f.SetAwake(true);
         this.§_-Th§ = param1;
      }
      
      public function §_-hr§() : Number
      {
         return this.§_-b1§;
      }
      
      public function §_-JF§() : Number
      {
         return this.§_-ou§;
      }
      
      public function §_-w6§(param1:Number, param2:Number) : void
      {
         b2internal::_-t6.SetAwake(true);
         b2internal::_-7f.SetAwake(true);
         this.§_-b1§ = param1;
         this.§_-ou§ = param2;
      }
      
      public function §_-YJ§() : Boolean
      {
         return this.§_-iP§;
      }
      
      public function §_-q1§(param1:Boolean) : void
      {
         b2internal::_-t6.SetAwake(true);
         b2internal::_-7f.SetAwake(true);
         this.§_-iP§ = param1;
      }
      
      public function §_-fH§(param1:Number) : void
      {
         b2internal::_-t6.SetAwake(true);
         b2internal::_-7f.SetAwake(true);
         this.§_-lP§ = param1;
      }
      
      public function §_-R1§() : Number
      {
         return this.§_-lP§;
      }
      
      public function §_-l1§(param1:Number) : void
      {
         b2internal::_-t6.SetAwake(true);
         b2internal::_-7f.SetAwake(true);
         this.§_-BN§ = param1;
      }
      
      public function §_-cG§() : Number
      {
         return this.§_-BN§;
      }
      
      public function §_-2I§() : Number
      {
         return this.§_-OB§;
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
         var _loc2_:b2Body = b2internal::_-t6;
         var _loc3_:b2Body = b2internal::_-7f;
         b2internal::_-mz.SetV(_loc2_.§_-Zk§());
         b2internal::_-Op.SetV(_loc3_.§_-Zk§());
         var _loc6_:b2Transform = _loc2_.§_-LW§();
         var _loc7_:b2Transform = _loc3_.§_-LW§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-mz.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-mz.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-Op.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-Op.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §_-lT§ = _loc2_.§_-YH§;
         §_-vb§ = _loc3_.§_-YH§;
         §_-lc§ = _loc2_.§_-49§;
         §_-n0§ = _loc3_.§_-49§;
         this.§_-oP§.SetV(b2Math.§_-IM§(_loc6_.R,this.§_-8L§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-oP§.y - (_loc13_ + _loc9_) * this.§_-oP§.x;
         this.m_a2 = _loc10_ * this.§_-oP§.y - _loc11_ * this.§_-oP§.x;
         this.§_-ay§ = b2internal::_-lT + b2internal::_-vb + b2internal::_-lc * this.m_a1 * this.m_a1 + b2internal::_-n0 * this.m_a2 * this.m_a2;
         this.§_-ay§ = this.§_-ay§ > Number.MIN_VALUE ? Number(1 / this.§_-ay§) : Number(0);
         this.§_-F4§.SetV(b2Math.§_-IM§(_loc6_.R,this.§_-Nj§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-F4§.y - (_loc13_ + _loc9_) * this.§_-F4§.x;
         this.m_s2 = _loc10_ * this.§_-F4§.y - _loc11_ * this.§_-F4§.x;
         var _loc14_:Number = b2internal::_-lT;
         var _loc15_:Number = b2internal::_-vb;
         var _loc16_:Number = b2internal::_-lc;
         var _loc17_:Number = b2internal::_-n0;
         this.§_-kv§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-kv§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-kv§.col2.x = this.§_-kv§.col1.y;
         this.§_-kv§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-Th§)
         {
            _loc18_ = this.§_-oP§.x * _loc12_ + this.§_-oP§.y * _loc13_;
            if(b2Math.§_-2l§(this.§_-ou§ - this.§_-b1§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-N0§ = b2internal::extends;
            }
            else if(_loc18_ <= this.§_-b1§)
            {
               if(this.§_-N0§ != b2internal::_-lg)
               {
                  this.§_-N0§ = b2internal::_-lg;
                  this.§_-TC§.y = 0;
               }
            }
            else if(_loc18_ >= this.§_-ou§)
            {
               if(this.§_-N0§ != b2internal::_-pq)
               {
                  this.§_-N0§ = b2internal::_-pq;
                  this.§_-TC§.y = 0;
               }
            }
            else
            {
               this.§_-N0§ = b2internal::_-H9;
               this.§_-TC§.y = 0;
            }
         }
         else
         {
            this.§_-N0§ = b2internal::_-H9;
         }
         if(this.§_-iP§ == false)
         {
            this.§_-OB§ = 0;
         }
         if(param1.§_-xV§)
         {
            this.§_-TC§.x *= param1.§_-3W§;
            this.§_-TC§.y *= param1.§_-3W§;
            this.§_-OB§ *= param1.§_-3W§;
            _loc19_ = this.§_-TC§.x * this.§_-F4§.x + (this.§_-OB§ + this.§_-TC§.y) * this.§_-oP§.x;
            _loc20_ = this.§_-TC§.x * this.§_-F4§.y + (this.§_-OB§ + this.§_-TC§.y) * this.§_-oP§.y;
            _loc21_ = this.§_-TC§.x * this.m_s1 + (this.§_-OB§ + this.§_-TC§.y) * this.m_a1;
            _loc22_ = this.§_-TC§.x * this.m_s2 + (this.§_-OB§ + this.§_-TC§.y) * this.m_a2;
            _loc2_.§_-Ce§.x -= b2internal::_-lT * _loc19_;
            _loc2_.§_-Ce§.y -= b2internal::_-lT * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-lc * _loc21_;
            _loc3_.§_-Ce§.x += b2internal::_-vb * _loc19_;
            _loc3_.§_-Ce§.y += b2internal::_-vb * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-n0 * _loc22_;
         }
         else
         {
            this.§_-TC§.§_-pZ§();
            this.§_-OB§ = 0;
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
         var _loc2_:b2Body = b2internal::_-t6;
         var _loc3_:b2Body = b2internal::_-7f;
         var _loc4_:b2Vec2 = _loc2_.§_-Ce§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-Ce§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-iP§ && this.§_-N0§ != b2internal::extends)
         {
            _loc13_ = this.§_-oP§.x * (_loc6_.x - _loc4_.x) + this.§_-oP§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§_-ay§ * (this.§_-lP§ - _loc13_);
            _loc15_ = this.§_-OB§;
            _loc16_ = param1.§_-a9§ * this.§_-BN§;
            this.§_-OB§ = b2Math.§_-k3§(this.§_-OB§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§_-OB§ - _loc15_) * this.§_-oP§.x;
            _loc9_ = _loc14_ * this.§_-oP§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::_-lT * _loc8_;
            _loc4_.y -= b2internal::_-lT * _loc9_;
            _loc5_ -= b2internal::_-lc * _loc10_;
            _loc6_.x += b2internal::_-vb * _loc8_;
            _loc6_.y += b2internal::_-vb * _loc9_;
            _loc7_ += b2internal::_-n0 * _loc11_;
         }
         var _loc12_:Number = this.§_-F4§.x * (_loc6_.x - _loc4_.x) + this.§_-F4§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§_-Th§ && this.§_-N0§ != b2internal::_-H9)
         {
            _loc17_ = this.§_-oP§.x * (_loc6_.x - _loc4_.x) + this.§_-oP§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§_-TC§.Copy();
            _loc19_ = this.§_-kv§.§_-Ok§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§_-TC§.§_-7H§(_loc19_);
            if(this.§_-N0§ == b2internal::_-lg)
            {
               this.§_-TC§.y = b2Math.§_-Cz§(this.§_-TC§.y,0);
            }
            else if(this.§_-N0§ == b2internal::_-pq)
            {
               this.§_-TC§.y = b2Math.§_-Li§(this.§_-TC§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§_-TC§.y - _loc18_.y) * this.§_-kv§.col2.x;
            if(this.§_-kv§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§_-kv§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§_-TC§.x = _loc21_;
            _loc19_.x = this.§_-TC§.x - _loc18_.x;
            _loc19_.y = this.§_-TC§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§_-F4§.x + _loc19_.y * this.§_-oP§.x;
            _loc9_ = _loc19_.x * this.§_-F4§.y + _loc19_.y * this.§_-oP§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::_-lT * _loc8_;
            _loc4_.y -= b2internal::_-lT * _loc9_;
            _loc5_ -= b2internal::_-lc * _loc10_;
            _loc6_.x += b2internal::_-vb * _loc8_;
            _loc6_.y += b2internal::_-vb * _loc9_;
            _loc7_ += b2internal::_-n0 * _loc11_;
         }
         else
         {
            if(this.§_-kv§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§_-kv§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§_-TC§.x += _loc22_;
            _loc8_ = _loc22_ * this.§_-F4§.x;
            _loc9_ = _loc22_ * this.§_-F4§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::_-lT * _loc8_;
            _loc4_.y -= b2internal::_-lT * _loc9_;
            _loc5_ -= b2internal::_-lc * _loc10_;
            _loc6_.x += b2internal::_-vb * _loc8_;
            _loc6_.y += b2internal::_-vb * _loc9_;
            _loc7_ += b2internal::_-n0 * _loc11_;
         }
         _loc2_.§_-Ce§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-Ce§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-t6;
         var _loc5_:b2Body = b2internal::_-7f;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-59§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-59§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-mz.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-mz.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-Op.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-Op.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-Th§)
         {
            this.§_-oP§ = b2Math.§_-IM§(_loc20_,this.§_-8L§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-oP§.y - (_loc27_ + _loc23_) * this.§_-oP§.x;
            this.m_a2 = _loc24_ * this.§_-oP§.y - _loc25_ * this.§_-oP§.x;
            _loc34_ = this.§_-oP§.x * _loc26_ + this.§_-oP§.y * _loc27_;
            if(b2Math.§_-2l§(this.§_-ou§ - this.§_-b1§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-k3§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-2l§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§_-b1§)
            {
               _loc19_ = b2Math.§_-k3§(_loc34_ - this.§_-b1§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-b1§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§_-ou§)
            {
               _loc19_ = b2Math.§_-k3§(_loc34_ - this.§_-ou§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§_-ou§;
               _loc18_ = true;
            }
         }
         this.§_-F4§ = b2Math.§_-IM§(_loc20_,this.§_-Nj§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-F4§.y - (_loc27_ + _loc23_) * this.§_-F4§.x;
         this.m_s2 = _loc24_ * this.§_-F4§.y - _loc25_ * this.§_-F4§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§_-F4§.x * _loc26_ + this.§_-F4§.y * _loc27_;
         _loc16_ = b2Math.§_-Cz§(_loc16_,b2Math.§_-2l§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::_-lT;
            _loc13_ = b2internal::_-vb;
            _loc14_ = b2internal::_-lc;
            _loc15_ = b2internal::_-n0;
            this.§_-kv§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-kv§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-kv§.col2.x = this.§_-kv§.col1.y;
            this.§_-kv§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-kv§.§_-Ok§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-lT;
            _loc13_ = b2internal::_-vb;
            _loc14_ = b2internal::_-lc;
            _loc15_ = b2internal::_-n0;
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
         var _loc30_:Number = _loc28_.x * this.§_-F4§.x + _loc28_.y * this.§_-oP§.x;
         var _loc31_:Number = _loc28_.x * this.§_-F4§.y + _loc28_.y * this.§_-oP§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::_-lT * _loc30_;
         _loc6_.y -= b2internal::_-lT * _loc31_;
         _loc7_ -= b2internal::_-lc * _loc32_;
         _loc8_.x += b2internal::_-vb * _loc30_;
         _loc8_.y += b2internal::_-vb * _loc31_;
         _loc9_ += b2internal::_-n0 * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-B0§();
         _loc5_.§_-B0§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
