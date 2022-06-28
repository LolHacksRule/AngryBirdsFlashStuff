package §_-09-§
{
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Mat22;
   import §_-Yp§.b2Math;
   import §_-Yp§.b2Transform;
   import §_-Yp§.b2Vec2;
   import §_-aU§.b2Body;
   import §_-aU§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-0-i§:b2Vec2;
      
      private var §_-07I§:b2Vec2;
      
      private var §_-DN§:b2Vec2;
      
      private var §_-0t§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-0Ax§:b2Mat22;
      
      private var §_-MK§:b2Vec2;
      
      private var §_-04m§:Number;
      
      private var §_-j§:Number;
      
      private var §_-Fr§:Number;
      
      private var §_-KV§:Number;
      
      private var §_-V§:Number;
      
      private var §_-09I§:Number;
      
      private var §_-E5§:Boolean;
      
      private var §_-sv§:Boolean;
      
      private var §_-Vb§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-0-i§ = new b2Vec2();
         this.§_-07I§ = new b2Vec2();
         this.§_-DN§ = new b2Vec2();
         this.§_-0t§ = new b2Vec2();
         this.§_-0Ax§ = new b2Mat22();
         this.§_-MK§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-F6§);
         this.m_localAnchor2.SetV(param1.§_-0Bf§);
         this.§_-0-i§.SetV(param1.§_-v5§);
         this.§_-07I§.x = -this.§_-0-i§.y;
         this.§_-07I§.y = this.§_-0-i§.x;
         this.§_-MK§.§_-el§();
         this.§_-04m§ = 0;
         this.§_-j§ = 0;
         this.§_-Fr§ = param1.§_-7p§;
         this.§_-KV§ = param1.§_-1F§;
         this.§_-V§ = param1.§_-2E§;
         this.§_-09I§ = param1.motorSpeed;
         this.§_-E5§ = param1.§_-6W§;
         this.§_-sv§ = param1.§_-1g§;
         this.§_-Vb§ = b2internal::_-019;
         this.§_-DN§.§_-el§();
         this.§_-0t§.§_-el§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-0FB.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-c9.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§_-MK§.x * this.§_-0t§.x + (this.§_-j§ + this.§_-MK§.y) * this.§_-DN§.x),param1 * (this.§_-MK§.x * this.§_-0t§.y + (this.§_-j§ + this.§_-MK§.y) * this.§_-DN§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-MK§.y;
      }
      
      public function §_-qk§() : Number
      {
         var _loc1_:b2Body = b2internal::_-0FB;
         var _loc2_:b2Body = b2internal::_-c9;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-2R§(this.§_-0-i§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-bV§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-0FB;
         var _loc2_:b2Body = b2internal::_-c9;
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
         var _loc15_:b2Vec2 = _loc1_.§_-2R§(this.§_-0-i§);
         var _loc16_:b2Vec2 = _loc1_.§_-kZ§;
         var _loc17_:b2Vec2 = _loc2_.§_-kZ§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-sE§() : Boolean
      {
         return this.§_-E5§;
      }
      
      public function §_-6P§(param1:Boolean) : void
      {
         b2internal::_-0FB.SetAwake(true);
         b2internal::_-c9.SetAwake(true);
         this.§_-E5§ = param1;
      }
      
      public function §_-IV§() : Number
      {
         return this.§_-Fr§;
      }
      
      public function §_-7W§() : Number
      {
         return this.§_-KV§;
      }
      
      public function §_-Hl§(param1:Number, param2:Number) : void
      {
         b2internal::_-0FB.SetAwake(true);
         b2internal::_-c9.SetAwake(true);
         this.§_-Fr§ = param1;
         this.§_-KV§ = param2;
      }
      
      public function §_-FT§() : Boolean
      {
         return this.§_-sv§;
      }
      
      public function §_-060§(param1:Boolean) : void
      {
         b2internal::_-0FB.SetAwake(true);
         b2internal::_-c9.SetAwake(true);
         this.§_-sv§ = param1;
      }
      
      public function §_-02d§(param1:Number) : void
      {
         b2internal::_-0FB.SetAwake(true);
         b2internal::_-c9.SetAwake(true);
         this.§_-09I§ = param1;
      }
      
      public function §_-be§() : Number
      {
         return this.§_-09I§;
      }
      
      public function §_-h0§(param1:Number) : void
      {
         b2internal::_-0FB.SetAwake(true);
         b2internal::_-c9.SetAwake(true);
         this.§_-V§ = param1;
      }
      
      public function §_-8q§() : Number
      {
         return this.§_-V§;
      }
      
      public function §_-4Y§() : Number
      {
         return this.§_-j§;
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
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         b2internal::_-2i.SetV(_loc2_.§_-9w§());
         b2internal::_-iQ.SetV(_loc3_.§_-9w§());
         var _loc6_:b2Transform = _loc2_.§_-tg§();
         var _loc7_:b2Transform = _loc3_.§_-tg§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-2i.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-2i.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-iQ.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-iQ.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §_-04l§ = _loc2_.§_-03A§;
         §_-cW§ = _loc3_.§_-03A§;
         §_-gk§ = _loc2_.§_-Dz§;
         §_-at§ = _loc3_.§_-Dz§;
         this.§_-DN§.SetV(b2Math.§_-S4§(_loc6_.R,this.§_-0-i§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-DN§.y - (_loc13_ + _loc9_) * this.§_-DN§.x;
         this.m_a2 = _loc10_ * this.§_-DN§.y - _loc11_ * this.§_-DN§.x;
         this.§_-04m§ = b2internal::_-04l + b2internal::_-cW + b2internal::_-gk * this.m_a1 * this.m_a1 + b2internal::_-at * this.m_a2 * this.m_a2;
         this.§_-04m§ = this.§_-04m§ > Number.MIN_VALUE ? Number(1 / this.§_-04m§) : Number(0);
         this.§_-0t§.SetV(b2Math.§_-S4§(_loc6_.R,this.§_-07I§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-0t§.y - (_loc13_ + _loc9_) * this.§_-0t§.x;
         this.m_s2 = _loc10_ * this.§_-0t§.y - _loc11_ * this.§_-0t§.x;
         var _loc14_:Number = b2internal::_-04l;
         var _loc15_:Number = b2internal::_-cW;
         var _loc16_:Number = b2internal::_-gk;
         var _loc17_:Number = b2internal::_-at;
         this.§_-0Ax§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-0Ax§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-0Ax§.col2.x = this.§_-0Ax§.col1.y;
         this.§_-0Ax§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-E5§)
         {
            _loc18_ = this.§_-DN§.x * _loc12_ + this.§_-DN§.y * _loc13_;
            if(b2Math.§_-010§(this.§_-KV§ - this.§_-Fr§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-Vb§ = b2internal::_-z3;
            }
            else if(_loc18_ <= this.§_-Fr§)
            {
               if(this.§_-Vb§ != b2internal::_-D3)
               {
                  this.§_-Vb§ = b2internal::_-D3;
                  this.§_-MK§.y = 0;
               }
            }
            else if(_loc18_ >= this.§_-KV§)
            {
               if(this.§_-Vb§ != b2internal::_-Z5)
               {
                  this.§_-Vb§ = b2internal::_-Z5;
                  this.§_-MK§.y = 0;
               }
            }
            else
            {
               this.§_-Vb§ = b2internal::_-019;
               this.§_-MK§.y = 0;
            }
         }
         else
         {
            this.§_-Vb§ = b2internal::_-019;
         }
         if(this.§_-sv§ == false)
         {
            this.§_-j§ = 0;
         }
         if(param1.§_-0F7§)
         {
            this.§_-MK§.x *= param1.§_-b8§;
            this.§_-MK§.y *= param1.§_-b8§;
            this.§_-j§ *= param1.§_-b8§;
            _loc19_ = this.§_-MK§.x * this.§_-0t§.x + (this.§_-j§ + this.§_-MK§.y) * this.§_-DN§.x;
            _loc20_ = this.§_-MK§.x * this.§_-0t§.y + (this.§_-j§ + this.§_-MK§.y) * this.§_-DN§.y;
            _loc21_ = this.§_-MK§.x * this.m_s1 + (this.§_-j§ + this.§_-MK§.y) * this.m_a1;
            _loc22_ = this.§_-MK§.x * this.m_s2 + (this.§_-j§ + this.§_-MK§.y) * this.m_a2;
            _loc2_.§_-kZ§.x -= b2internal::_-04l * _loc19_;
            _loc2_.§_-kZ§.y -= b2internal::_-04l * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-gk * _loc21_;
            _loc3_.§_-kZ§.x += b2internal::_-cW * _loc19_;
            _loc3_.§_-kZ§.y += b2internal::_-cW * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-at * _loc22_;
         }
         else
         {
            this.§_-MK§.§_-el§();
            this.§_-j§ = 0;
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
         var _loc2_:b2Body = b2internal::_-0FB;
         var _loc3_:b2Body = b2internal::_-c9;
         var _loc4_:b2Vec2 = _loc2_.§_-kZ§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-kZ§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-sv§ && this.§_-Vb§ != b2internal::_-z3)
         {
            _loc13_ = this.§_-DN§.x * (_loc6_.x - _loc4_.x) + this.§_-DN§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§_-04m§ * (this.§_-09I§ - _loc13_);
            _loc15_ = this.§_-j§;
            _loc16_ = param1.§_-pn§ * this.§_-V§;
            this.§_-j§ = b2Math.§_-ZK§(this.§_-j§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§_-j§ - _loc15_) * this.§_-DN§.x;
            _loc9_ = _loc14_ * this.§_-DN§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::_-04l * _loc8_;
            _loc4_.y -= b2internal::_-04l * _loc9_;
            _loc5_ -= b2internal::_-gk * _loc10_;
            _loc6_.x += b2internal::_-cW * _loc8_;
            _loc6_.y += b2internal::_-cW * _loc9_;
            _loc7_ += b2internal::_-at * _loc11_;
         }
         var _loc12_:Number = this.§_-0t§.x * (_loc6_.x - _loc4_.x) + this.§_-0t§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§_-E5§ && this.§_-Vb§ != b2internal::_-019)
         {
            _loc17_ = this.§_-DN§.x * (_loc6_.x - _loc4_.x) + this.§_-DN§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§_-MK§.Copy();
            _loc19_ = this.§_-0Ax§.§_-NQ§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§_-MK§.§_-M6§(_loc19_);
            if(this.§_-Vb§ == b2internal::_-D3)
            {
               this.§_-MK§.y = b2Math.§_-yL§(this.§_-MK§.y,0);
            }
            else if(this.§_-Vb§ == b2internal::_-Z5)
            {
               this.§_-MK§.y = b2Math.§_-fa§(this.§_-MK§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§_-MK§.y - _loc18_.y) * this.§_-0Ax§.col2.x;
            if(this.§_-0Ax§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§_-0Ax§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§_-MK§.x = _loc21_;
            _loc19_.x = this.§_-MK§.x - _loc18_.x;
            _loc19_.y = this.§_-MK§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§_-0t§.x + _loc19_.y * this.§_-DN§.x;
            _loc9_ = _loc19_.x * this.§_-0t§.y + _loc19_.y * this.§_-DN§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::_-04l * _loc8_;
            _loc4_.y -= b2internal::_-04l * _loc9_;
            _loc5_ -= b2internal::_-gk * _loc10_;
            _loc6_.x += b2internal::_-cW * _loc8_;
            _loc6_.y += b2internal::_-cW * _loc9_;
            _loc7_ += b2internal::_-at * _loc11_;
         }
         else
         {
            if(this.§_-0Ax§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§_-0Ax§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§_-MK§.x += _loc22_;
            _loc8_ = _loc22_ * this.§_-0t§.x;
            _loc9_ = _loc22_ * this.§_-0t§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::_-04l * _loc8_;
            _loc4_.y -= b2internal::_-04l * _loc9_;
            _loc5_ -= b2internal::_-gk * _loc10_;
            _loc6_.x += b2internal::_-cW * _loc8_;
            _loc6_.y += b2internal::_-cW * _loc9_;
            _loc7_ += b2internal::_-at * _loc11_;
         }
         _loc2_.§_-kZ§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-kZ§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-0FB;
         var _loc5_:b2Body = b2internal::_-c9;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-06D§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-06D§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-2i.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-2i.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-iQ.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-iQ.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-E5§)
         {
            this.§_-DN§ = b2Math.§_-S4§(_loc20_,this.§_-0-i§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-DN§.y - (_loc27_ + _loc23_) * this.§_-DN§.x;
            this.m_a2 = _loc24_ * this.§_-DN§.y - _loc25_ * this.§_-DN§.x;
            _loc34_ = this.§_-DN§.x * _loc26_ + this.§_-DN§.y * _loc27_;
            if(b2Math.§_-010§(this.§_-KV§ - this.§_-Fr§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-ZK§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-010§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§_-Fr§)
            {
               _loc19_ = b2Math.§_-ZK§(_loc34_ - this.§_-Fr§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-Fr§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§_-KV§)
            {
               _loc19_ = b2Math.§_-ZK§(_loc34_ - this.§_-KV§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§_-KV§;
               _loc18_ = true;
            }
         }
         this.§_-0t§ = b2Math.§_-S4§(_loc20_,this.§_-07I§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-0t§.y - (_loc27_ + _loc23_) * this.§_-0t§.x;
         this.m_s2 = _loc24_ * this.§_-0t§.y - _loc25_ * this.§_-0t§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§_-0t§.x * _loc26_ + this.§_-0t§.y * _loc27_;
         _loc16_ = b2Math.§_-yL§(_loc16_,b2Math.§_-010§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::_-04l;
            _loc13_ = b2internal::_-cW;
            _loc14_ = b2internal::_-gk;
            _loc15_ = b2internal::_-at;
            this.§_-0Ax§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-0Ax§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-0Ax§.col2.x = this.§_-0Ax§.col1.y;
            this.§_-0Ax§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-0Ax§.§_-NQ§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-04l;
            _loc13_ = b2internal::_-cW;
            _loc14_ = b2internal::_-gk;
            _loc15_ = b2internal::_-at;
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
         var _loc30_:Number = _loc28_.x * this.§_-0t§.x + _loc28_.y * this.§_-DN§.x;
         var _loc31_:Number = _loc28_.x * this.§_-0t§.y + _loc28_.y * this.§_-DN§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::_-04l * _loc30_;
         _loc6_.y -= b2internal::_-04l * _loc31_;
         _loc7_ -= b2internal::_-gk * _loc32_;
         _loc8_.x += b2internal::_-cW * _loc30_;
         _loc8_.y += b2internal::_-cW * _loc31_;
         _loc9_ += b2internal::_-at * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-da§();
         _loc5_.§_-da§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
