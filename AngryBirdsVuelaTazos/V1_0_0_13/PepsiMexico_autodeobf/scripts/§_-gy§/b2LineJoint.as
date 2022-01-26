package §_-gy§
{
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2TimeStep;
   import §var§.b2Mat22;
   import §var§.b2Math;
   import §var§.b2Transform;
   import §var§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-Yu§:b2Vec2;
      
      private var §_-j6§:b2Vec2;
      
      private var §_-Oi§:b2Vec2;
      
      private var §_-dC§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-WH§:b2Mat22;
      
      private var §continue§:b2Vec2;
      
      private var §_-vQ§:Number;
      
      private var §_-YX§:Number;
      
      private var §_-dO§:Number;
      
      private var §_-Tl§:Number;
      
      private var §_-PD§:Number;
      
      private var §_-yt§:Number;
      
      private var §_-ig§:Boolean;
      
      private var §_-Ti§:Boolean;
      
      private var §_-52§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-Yu§ = new b2Vec2();
         this.§_-j6§ = new b2Vec2();
         this.§_-Oi§ = new b2Vec2();
         this.§_-dC§ = new b2Vec2();
         this.§_-WH§ = new b2Mat22();
         this.§continue§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-3r§);
         this.m_localAnchor2.SetV(param1.§_-sR§);
         this.§_-Yu§.SetV(param1.§_-0z§);
         this.§_-j6§.x = -this.§_-Yu§.y;
         this.§_-j6§.y = this.§_-Yu§.x;
         this.§continue§.§_-pR§();
         this.§_-vQ§ = 0;
         this.§_-YX§ = 0;
         this.§_-dO§ = param1.§_-mQ§;
         this.§_-Tl§ = param1.§_-v-§;
         this.§_-PD§ = param1.§_-l1§;
         this.§_-yt§ = param1.motorSpeed;
         this.§_-ig§ = param1.§_-yk§;
         this.§_-Ti§ = param1.§_-ff§;
         this.§_-52§ = b2internal::_-9a;
         this.§_-Oi§.§_-pR§();
         this.§_-dC§.§_-pR§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-do.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-Zw.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§continue§.x * this.§_-dC§.x + (this.§_-YX§ + this.§continue§.y) * this.§_-Oi§.x),param1 * (this.§continue§.x * this.§_-dC§.y + (this.§_-YX§ + this.§continue§.y) * this.§_-Oi§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§continue§.y;
      }
      
      public function §_-vX§() : Number
      {
         var _loc1_:b2Body = b2internal::_-do;
         var _loc2_:b2Body = b2internal::_-Zw;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-iS§(this.§_-Yu§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-LE§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-do;
         var _loc2_:b2Body = b2internal::_-Zw;
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
         var _loc15_:b2Vec2 = _loc1_.§_-iS§(this.§_-Yu§);
         var _loc16_:b2Vec2 = _loc1_.§_-dS§;
         var _loc17_:b2Vec2 = _loc2_.§_-dS§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-nu§() : Boolean
      {
         return this.§_-ig§;
      }
      
      public function §_-B7§(param1:Boolean) : void
      {
         b2internal::_-do.SetAwake(true);
         b2internal::_-Zw.SetAwake(true);
         this.§_-ig§ = param1;
      }
      
      public function §_-89§() : Number
      {
         return this.§_-dO§;
      }
      
      public function §_-km§() : Number
      {
         return this.§_-Tl§;
      }
      
      public function §_-qX§(param1:Number, param2:Number) : void
      {
         b2internal::_-do.SetAwake(true);
         b2internal::_-Zw.SetAwake(true);
         this.§_-dO§ = param1;
         this.§_-Tl§ = param2;
      }
      
      public function §_-os§() : Boolean
      {
         return this.§_-Ti§;
      }
      
      public function §_-5Z§(param1:Boolean) : void
      {
         b2internal::_-do.SetAwake(true);
         b2internal::_-Zw.SetAwake(true);
         this.§_-Ti§ = param1;
      }
      
      public function § true§(param1:Number) : void
      {
         b2internal::_-do.SetAwake(true);
         b2internal::_-Zw.SetAwake(true);
         this.§_-yt§ = param1;
      }
      
      public function §_-nR§() : Number
      {
         return this.§_-yt§;
      }
      
      public function §_-xl§(param1:Number) : void
      {
         b2internal::_-do.SetAwake(true);
         b2internal::_-Zw.SetAwake(true);
         this.§_-PD§ = param1;
      }
      
      public function §_-Un§() : Number
      {
         return this.§_-PD§;
      }
      
      public function §_-pB§() : Number
      {
         return this.§_-YX§;
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
         var _loc2_:b2Body = b2internal::_-do;
         var _loc3_:b2Body = b2internal::_-Zw;
         b2internal::_-yp.SetV(_loc2_.§_-kA§());
         b2internal::_-Ze.SetV(_loc3_.§_-kA§());
         var _loc6_:b2Transform = _loc2_.§_-tx§();
         var _loc7_:b2Transform = _loc3_.§_-tx§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-yp.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-yp.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-Ze.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-Ze.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §_-r5§ = _loc2_.§_-Af§;
         §_-OX§ = _loc3_.§_-Af§;
         §_-Y5§ = _loc2_.§_-Yq§;
         §_-Xk§ = _loc3_.§_-Yq§;
         this.§_-Oi§.SetV(b2Math.§_-hb§(_loc6_.R,this.§_-Yu§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-Oi§.y - (_loc13_ + _loc9_) * this.§_-Oi§.x;
         this.m_a2 = _loc10_ * this.§_-Oi§.y - _loc11_ * this.§_-Oi§.x;
         this.§_-vQ§ = b2internal::_-r5 + b2internal::_-OX + b2internal::_-Y5 * this.m_a1 * this.m_a1 + b2internal::_-Xk * this.m_a2 * this.m_a2;
         this.§_-vQ§ = this.§_-vQ§ > Number.MIN_VALUE ? Number(1 / this.§_-vQ§) : Number(0);
         this.§_-dC§.SetV(b2Math.§_-hb§(_loc6_.R,this.§_-j6§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-dC§.y - (_loc13_ + _loc9_) * this.§_-dC§.x;
         this.m_s2 = _loc10_ * this.§_-dC§.y - _loc11_ * this.§_-dC§.x;
         var _loc14_:Number = b2internal::_-r5;
         var _loc15_:Number = b2internal::_-OX;
         var _loc16_:Number = b2internal::_-Y5;
         var _loc17_:Number = b2internal::_-Xk;
         this.§_-WH§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-WH§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-WH§.col2.x = this.§_-WH§.col1.y;
         this.§_-WH§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-ig§)
         {
            _loc18_ = this.§_-Oi§.x * _loc12_ + this.§_-Oi§.y * _loc13_;
            if(b2Math.§_-PB§(this.§_-Tl§ - this.§_-dO§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-52§ = b2internal::_-Lt;
            }
            else if(_loc18_ <= this.§_-dO§)
            {
               if(this.§_-52§ != b2internal::_-R7)
               {
                  this.§_-52§ = b2internal::_-R7;
                  this.§continue§.y = 0;
               }
            }
            else if(_loc18_ >= this.§_-Tl§)
            {
               if(this.§_-52§ != b2internal::_-v4)
               {
                  this.§_-52§ = b2internal::_-v4;
                  this.§continue§.y = 0;
               }
            }
            else
            {
               this.§_-52§ = b2internal::_-9a;
               this.§continue§.y = 0;
            }
         }
         else
         {
            this.§_-52§ = b2internal::_-9a;
         }
         if(this.§_-Ti§ == false)
         {
            this.§_-YX§ = 0;
         }
         if(param1.§_-bF§)
         {
            this.§continue§.x *= param1.§_-PA§;
            this.§continue§.y *= param1.§_-PA§;
            this.§_-YX§ *= param1.§_-PA§;
            _loc19_ = this.§continue§.x * this.§_-dC§.x + (this.§_-YX§ + this.§continue§.y) * this.§_-Oi§.x;
            _loc20_ = this.§continue§.x * this.§_-dC§.y + (this.§_-YX§ + this.§continue§.y) * this.§_-Oi§.y;
            _loc21_ = this.§continue§.x * this.m_s1 + (this.§_-YX§ + this.§continue§.y) * this.m_a1;
            _loc22_ = this.§continue§.x * this.m_s2 + (this.§_-YX§ + this.§continue§.y) * this.m_a2;
            _loc2_.§_-dS§.x -= b2internal::_-r5 * _loc19_;
            _loc2_.§_-dS§.y -= b2internal::_-r5 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-Y5 * _loc21_;
            _loc3_.§_-dS§.x += b2internal::_-OX * _loc19_;
            _loc3_.§_-dS§.y += b2internal::_-OX * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-Xk * _loc22_;
         }
         else
         {
            this.§continue§.§_-pR§();
            this.§_-YX§ = 0;
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
         var _loc2_:b2Body = b2internal::_-do;
         var _loc3_:b2Body = b2internal::_-Zw;
         var _loc4_:b2Vec2 = _loc2_.§_-dS§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-dS§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-Ti§ && this.§_-52§ != b2internal::_-Lt)
         {
            _loc13_ = this.§_-Oi§.x * (_loc6_.x - _loc4_.x) + this.§_-Oi§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§_-vQ§ * (this.§_-yt§ - _loc13_);
            _loc15_ = this.§_-YX§;
            _loc16_ = param1.§_-sn§ * this.§_-PD§;
            this.§_-YX§ = b2Math.§_-vw§(this.§_-YX§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§_-YX§ - _loc15_) * this.§_-Oi§.x;
            _loc9_ = _loc14_ * this.§_-Oi§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::_-r5 * _loc8_;
            _loc4_.y -= b2internal::_-r5 * _loc9_;
            _loc5_ -= b2internal::_-Y5 * _loc10_;
            _loc6_.x += b2internal::_-OX * _loc8_;
            _loc6_.y += b2internal::_-OX * _loc9_;
            _loc7_ += b2internal::_-Xk * _loc11_;
         }
         var _loc12_:Number = this.§_-dC§.x * (_loc6_.x - _loc4_.x) + this.§_-dC§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§_-ig§ && this.§_-52§ != b2internal::_-9a)
         {
            _loc17_ = this.§_-Oi§.x * (_loc6_.x - _loc4_.x) + this.§_-Oi§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§continue§.Copy();
            _loc19_ = this.§_-WH§.§_-Zy§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§continue§.§default§(_loc19_);
            if(this.§_-52§ == b2internal::_-R7)
            {
               this.§continue§.y = b2Math.§_-NO§(this.§continue§.y,0);
            }
            else if(this.§_-52§ == b2internal::_-v4)
            {
               this.§continue§.y = b2Math.§_-U5§(this.§continue§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§continue§.y - _loc18_.y) * this.§_-WH§.col2.x;
            if(this.§_-WH§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§_-WH§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§continue§.x = _loc21_;
            _loc19_.x = this.§continue§.x - _loc18_.x;
            _loc19_.y = this.§continue§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§_-dC§.x + _loc19_.y * this.§_-Oi§.x;
            _loc9_ = _loc19_.x * this.§_-dC§.y + _loc19_.y * this.§_-Oi§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::_-r5 * _loc8_;
            _loc4_.y -= b2internal::_-r5 * _loc9_;
            _loc5_ -= b2internal::_-Y5 * _loc10_;
            _loc6_.x += b2internal::_-OX * _loc8_;
            _loc6_.y += b2internal::_-OX * _loc9_;
            _loc7_ += b2internal::_-Xk * _loc11_;
         }
         else
         {
            if(this.§_-WH§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§_-WH§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§continue§.x += _loc22_;
            _loc8_ = _loc22_ * this.§_-dC§.x;
            _loc9_ = _loc22_ * this.§_-dC§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::_-r5 * _loc8_;
            _loc4_.y -= b2internal::_-r5 * _loc9_;
            _loc5_ -= b2internal::_-Y5 * _loc10_;
            _loc6_.x += b2internal::_-OX * _loc8_;
            _loc6_.y += b2internal::_-OX * _loc9_;
            _loc7_ += b2internal::_-Xk * _loc11_;
         }
         _loc2_.§_-dS§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-dS§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-do;
         var _loc5_:b2Body = b2internal::_-Zw;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-iG§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-iG§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-yp.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-yp.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-Ze.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-Ze.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-ig§)
         {
            this.§_-Oi§ = b2Math.§_-hb§(_loc20_,this.§_-Yu§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-Oi§.y - (_loc27_ + _loc23_) * this.§_-Oi§.x;
            this.m_a2 = _loc24_ * this.§_-Oi§.y - _loc25_ * this.§_-Oi§.x;
            _loc34_ = this.§_-Oi§.x * _loc26_ + this.§_-Oi§.y * _loc27_;
            if(b2Math.§_-PB§(this.§_-Tl§ - this.§_-dO§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-vw§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-PB§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§_-dO§)
            {
               _loc19_ = b2Math.§_-vw§(_loc34_ - this.§_-dO§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-dO§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§_-Tl§)
            {
               _loc19_ = b2Math.§_-vw§(_loc34_ - this.§_-Tl§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§_-Tl§;
               _loc18_ = true;
            }
         }
         this.§_-dC§ = b2Math.§_-hb§(_loc20_,this.§_-j6§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-dC§.y - (_loc27_ + _loc23_) * this.§_-dC§.x;
         this.m_s2 = _loc24_ * this.§_-dC§.y - _loc25_ * this.§_-dC§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§_-dC§.x * _loc26_ + this.§_-dC§.y * _loc27_;
         _loc16_ = b2Math.§_-NO§(_loc16_,b2Math.§_-PB§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::_-r5;
            _loc13_ = b2internal::_-OX;
            _loc14_ = b2internal::_-Y5;
            _loc15_ = b2internal::_-Xk;
            this.§_-WH§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-WH§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-WH§.col2.x = this.§_-WH§.col1.y;
            this.§_-WH§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-WH§.§_-Zy§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-r5;
            _loc13_ = b2internal::_-OX;
            _loc14_ = b2internal::_-Y5;
            _loc15_ = b2internal::_-Xk;
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
         var _loc30_:Number = _loc28_.x * this.§_-dC§.x + _loc28_.y * this.§_-Oi§.x;
         var _loc31_:Number = _loc28_.x * this.§_-dC§.y + _loc28_.y * this.§_-Oi§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::_-r5 * _loc30_;
         _loc6_.y -= b2internal::_-r5 * _loc31_;
         _loc7_ -= b2internal::_-Y5 * _loc32_;
         _loc8_.x += b2internal::_-OX * _loc30_;
         _loc8_.y += b2internal::_-OX * _loc31_;
         _loc9_ += b2internal::_-Xk * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-W0§();
         _loc5_.§_-W0§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
