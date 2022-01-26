package §_-Ox§
{
   import §_-9z§.b2Mat22;
   import §_-9z§.b2Math;
   import §_-9z§.b2Transform;
   import §_-9z§.b2Vec2;
   import §_-EH§.b2Body;
   import §_-EH§.b2TimeStep;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § case§:b2Vec2;
      
      private var §_-a§:b2Vec2;
      
      private var §_-jL§:b2Vec2;
      
      private var §_-Wx§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-q6§:b2Mat22;
      
      private var §_-AM§:b2Vec2;
      
      private var §_-9y§:Number;
      
      private var §_-AH§:Number;
      
      private var §_-MZ§:Number;
      
      private var §_-CV§:Number;
      
      private var §_-tr§:Number;
      
      private var §_-1C§:Number;
      
      private var §_-I4§:Boolean;
      
      private var §_-XK§:Boolean;
      
      private var §_-D9§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ case§ = new b2Vec2();
         this.§_-a§ = new b2Vec2();
         this.§_-jL§ = new b2Vec2();
         this.§_-Wx§ = new b2Vec2();
         this.§_-q6§ = new b2Mat22();
         this.§_-AM§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-7E§);
         this.m_localAnchor2.SetV(param1.§_-ID§);
         this.§ case§.SetV(param1.§_-xV§);
         this.§_-a§.x = -this.§ case§.y;
         this.§_-a§.y = this.§ case§.x;
         this.§_-AM§.§_-TJ§();
         this.§_-9y§ = 0;
         this.§_-AH§ = 0;
         this.§_-MZ§ = param1.§_-4c§;
         this.§_-CV§ = param1.§_-Px§;
         this.§_-tr§ = param1.§_-KL§;
         this.§_-1C§ = param1.motorSpeed;
         this.§_-I4§ = param1.§_-UE§;
         this.§_-XK§ = param1.§_-i3§;
         this.§_-D9§ = b2internal::_-R1;
         this.§_-jL§.§_-TJ§();
         this.§_-Wx§.§_-TJ§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-e4.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-qA.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§_-AM§.x * this.§_-Wx§.x + (this.§_-AH§ + this.§_-AM§.y) * this.§_-jL§.x),param1 * (this.§_-AM§.x * this.§_-Wx§.y + (this.§_-AH§ + this.§_-AM§.y) * this.§_-jL§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-AM§.y;
      }
      
      public function §_-4B§() : Number
      {
         var _loc1_:b2Body = b2internal::_-e4;
         var _loc2_:b2Body = b2internal::_-qA;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-aR§(this.§ case§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-WA§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-e4;
         var _loc2_:b2Body = b2internal::_-qA;
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
         var _loc15_:b2Vec2 = _loc1_.§_-aR§(this.§ case§);
         var _loc16_:b2Vec2 = _loc1_.§_-wk§;
         var _loc17_:b2Vec2 = _loc2_.§_-wk§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-Sb§() : Boolean
      {
         return this.§_-I4§;
      }
      
      public function §_-jb§(param1:Boolean) : void
      {
         b2internal::_-e4.SetAwake(true);
         b2internal::_-qA.SetAwake(true);
         this.§_-I4§ = param1;
      }
      
      public function §_-0R§() : Number
      {
         return this.§_-MZ§;
      }
      
      public function §_-ZU§() : Number
      {
         return this.§_-CV§;
      }
      
      public function §_-F4§(param1:Number, param2:Number) : void
      {
         b2internal::_-e4.SetAwake(true);
         b2internal::_-qA.SetAwake(true);
         this.§_-MZ§ = param1;
         this.§_-CV§ = param2;
      }
      
      public function §_-uw§() : Boolean
      {
         return this.§_-XK§;
      }
      
      public function §_-8L§(param1:Boolean) : void
      {
         b2internal::_-e4.SetAwake(true);
         b2internal::_-qA.SetAwake(true);
         this.§_-XK§ = param1;
      }
      
      public function §_-mO§(param1:Number) : void
      {
         b2internal::_-e4.SetAwake(true);
         b2internal::_-qA.SetAwake(true);
         this.§_-1C§ = param1;
      }
      
      public function §_-7V§() : Number
      {
         return this.§_-1C§;
      }
      
      public function §_-84§(param1:Number) : void
      {
         b2internal::_-e4.SetAwake(true);
         b2internal::_-qA.SetAwake(true);
         this.§_-tr§ = param1;
      }
      
      public function §_-o2§() : Number
      {
         return this.§_-tr§;
      }
      
      public function §_-Io§() : Number
      {
         return this.§_-AH§;
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
         var _loc2_:b2Body = b2internal::_-e4;
         var _loc3_:b2Body = b2internal::_-qA;
         b2internal::_-38.SetV(_loc2_.§_-uZ§());
         b2internal::_-Bu.SetV(_loc3_.§_-uZ§());
         var _loc6_:b2Transform = _loc2_.§return§();
         var _loc7_:b2Transform = _loc3_.§return§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-38.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-38.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-Bu.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-Bu.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §_-Zi§ = _loc2_.§_-dH§;
         §_-c2§ = _loc3_.§_-dH§;
         §_-Ay§ = _loc2_.§_-sp§;
         §_-it§ = _loc3_.§_-sp§;
         this.§_-jL§.SetV(b2Math.§_-0q§(_loc6_.R,this.§ case§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-jL§.y - (_loc13_ + _loc9_) * this.§_-jL§.x;
         this.m_a2 = _loc10_ * this.§_-jL§.y - _loc11_ * this.§_-jL§.x;
         this.§_-9y§ = b2internal::_-Zi + b2internal::_-c2 + b2internal::_-Ay * this.m_a1 * this.m_a1 + b2internal::_-it * this.m_a2 * this.m_a2;
         this.§_-9y§ = this.§_-9y§ > Number.MIN_VALUE ? Number(1 / this.§_-9y§) : Number(0);
         this.§_-Wx§.SetV(b2Math.§_-0q§(_loc6_.R,this.§_-a§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-Wx§.y - (_loc13_ + _loc9_) * this.§_-Wx§.x;
         this.m_s2 = _loc10_ * this.§_-Wx§.y - _loc11_ * this.§_-Wx§.x;
         var _loc14_:Number = b2internal::_-Zi;
         var _loc15_:Number = b2internal::_-c2;
         var _loc16_:Number = b2internal::_-Ay;
         var _loc17_:Number = b2internal::_-it;
         this.§_-q6§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-q6§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-q6§.col2.x = this.§_-q6§.col1.y;
         this.§_-q6§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-I4§)
         {
            _loc18_ = this.§_-jL§.x * _loc12_ + this.§_-jL§.y * _loc13_;
            if(b2Math.§_-Y9§(this.§_-CV§ - this.§_-MZ§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-D9§ = b2internal::_-FL;
            }
            else if(_loc18_ <= this.§_-MZ§)
            {
               if(this.§_-D9§ != b2internal::_-Pp)
               {
                  this.§_-D9§ = b2internal::_-Pp;
                  this.§_-AM§.y = 0;
               }
            }
            else if(_loc18_ >= this.§_-CV§)
            {
               if(this.§_-D9§ != b2internal::_-HL)
               {
                  this.§_-D9§ = b2internal::_-HL;
                  this.§_-AM§.y = 0;
               }
            }
            else
            {
               this.§_-D9§ = b2internal::_-R1;
               this.§_-AM§.y = 0;
            }
         }
         else
         {
            this.§_-D9§ = b2internal::_-R1;
         }
         if(this.§_-XK§ == false)
         {
            this.§_-AH§ = 0;
         }
         if(param1.§_-lZ§)
         {
            this.§_-AM§.x *= param1.§_-Xs§;
            this.§_-AM§.y *= param1.§_-Xs§;
            this.§_-AH§ *= param1.§_-Xs§;
            _loc19_ = this.§_-AM§.x * this.§_-Wx§.x + (this.§_-AH§ + this.§_-AM§.y) * this.§_-jL§.x;
            _loc20_ = this.§_-AM§.x * this.§_-Wx§.y + (this.§_-AH§ + this.§_-AM§.y) * this.§_-jL§.y;
            _loc21_ = this.§_-AM§.x * this.m_s1 + (this.§_-AH§ + this.§_-AM§.y) * this.m_a1;
            _loc22_ = this.§_-AM§.x * this.m_s2 + (this.§_-AH§ + this.§_-AM§.y) * this.m_a2;
            _loc2_.§_-wk§.x -= b2internal::_-Zi * _loc19_;
            _loc2_.§_-wk§.y -= b2internal::_-Zi * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-Ay * _loc21_;
            _loc3_.§_-wk§.x += b2internal::_-c2 * _loc19_;
            _loc3_.§_-wk§.y += b2internal::_-c2 * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-it * _loc22_;
         }
         else
         {
            this.§_-AM§.§_-TJ§();
            this.§_-AH§ = 0;
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
         var _loc2_:b2Body = b2internal::_-e4;
         var _loc3_:b2Body = b2internal::_-qA;
         var _loc4_:b2Vec2 = _loc2_.§_-wk§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-wk§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-XK§ && this.§_-D9§ != b2internal::_-FL)
         {
            _loc13_ = this.§_-jL§.x * (_loc6_.x - _loc4_.x) + this.§_-jL§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§_-9y§ * (this.§_-1C§ - _loc13_);
            _loc15_ = this.§_-AH§;
            _loc16_ = param1.§_-pG§ * this.§_-tr§;
            this.§_-AH§ = b2Math.§_-5a§(this.§_-AH§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§_-AH§ - _loc15_) * this.§_-jL§.x;
            _loc9_ = _loc14_ * this.§_-jL§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::_-Zi * _loc8_;
            _loc4_.y -= b2internal::_-Zi * _loc9_;
            _loc5_ -= b2internal::_-Ay * _loc10_;
            _loc6_.x += b2internal::_-c2 * _loc8_;
            _loc6_.y += b2internal::_-c2 * _loc9_;
            _loc7_ += b2internal::_-it * _loc11_;
         }
         var _loc12_:Number = this.§_-Wx§.x * (_loc6_.x - _loc4_.x) + this.§_-Wx§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§_-I4§ && this.§_-D9§ != b2internal::_-R1)
         {
            _loc17_ = this.§_-jL§.x * (_loc6_.x - _loc4_.x) + this.§_-jL§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§_-AM§.Copy();
            _loc19_ = this.§_-q6§.§_-5z§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§_-AM§.§_-3a§(_loc19_);
            if(this.§_-D9§ == b2internal::_-Pp)
            {
               this.§_-AM§.y = b2Math.§_-DY§(this.§_-AM§.y,0);
            }
            else if(this.§_-D9§ == b2internal::_-HL)
            {
               this.§_-AM§.y = b2Math.§_-cq§(this.§_-AM§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§_-AM§.y - _loc18_.y) * this.§_-q6§.col2.x;
            if(this.§_-q6§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§_-q6§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§_-AM§.x = _loc21_;
            _loc19_.x = this.§_-AM§.x - _loc18_.x;
            _loc19_.y = this.§_-AM§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§_-Wx§.x + _loc19_.y * this.§_-jL§.x;
            _loc9_ = _loc19_.x * this.§_-Wx§.y + _loc19_.y * this.§_-jL§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::_-Zi * _loc8_;
            _loc4_.y -= b2internal::_-Zi * _loc9_;
            _loc5_ -= b2internal::_-Ay * _loc10_;
            _loc6_.x += b2internal::_-c2 * _loc8_;
            _loc6_.y += b2internal::_-c2 * _loc9_;
            _loc7_ += b2internal::_-it * _loc11_;
         }
         else
         {
            if(this.§_-q6§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§_-q6§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§_-AM§.x += _loc22_;
            _loc8_ = _loc22_ * this.§_-Wx§.x;
            _loc9_ = _loc22_ * this.§_-Wx§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::_-Zi * _loc8_;
            _loc4_.y -= b2internal::_-Zi * _loc9_;
            _loc5_ -= b2internal::_-Ay * _loc10_;
            _loc6_.x += b2internal::_-c2 * _loc8_;
            _loc6_.y += b2internal::_-c2 * _loc9_;
            _loc7_ += b2internal::_-it * _loc11_;
         }
         _loc2_.§_-wk§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-wk§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-e4;
         var _loc5_:b2Body = b2internal::_-qA;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-N8§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-N8§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-38.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-38.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-Bu.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-Bu.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-I4§)
         {
            this.§_-jL§ = b2Math.§_-0q§(_loc20_,this.§ case§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-jL§.y - (_loc27_ + _loc23_) * this.§_-jL§.x;
            this.m_a2 = _loc24_ * this.§_-jL§.y - _loc25_ * this.§_-jL§.x;
            _loc34_ = this.§_-jL§.x * _loc26_ + this.§_-jL§.y * _loc27_;
            if(b2Math.§_-Y9§(this.§_-CV§ - this.§_-MZ§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-5a§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-Y9§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§_-MZ§)
            {
               _loc19_ = b2Math.§_-5a§(_loc34_ - this.§_-MZ§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-MZ§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§_-CV§)
            {
               _loc19_ = b2Math.§_-5a§(_loc34_ - this.§_-CV§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§_-CV§;
               _loc18_ = true;
            }
         }
         this.§_-Wx§ = b2Math.§_-0q§(_loc20_,this.§_-a§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-Wx§.y - (_loc27_ + _loc23_) * this.§_-Wx§.x;
         this.m_s2 = _loc24_ * this.§_-Wx§.y - _loc25_ * this.§_-Wx§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§_-Wx§.x * _loc26_ + this.§_-Wx§.y * _loc27_;
         _loc16_ = b2Math.§_-DY§(_loc16_,b2Math.§_-Y9§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::_-Zi;
            _loc13_ = b2internal::_-c2;
            _loc14_ = b2internal::_-Ay;
            _loc15_ = b2internal::_-it;
            this.§_-q6§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-q6§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-q6§.col2.x = this.§_-q6§.col1.y;
            this.§_-q6§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-q6§.§_-5z§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-Zi;
            _loc13_ = b2internal::_-c2;
            _loc14_ = b2internal::_-Ay;
            _loc15_ = b2internal::_-it;
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
         var _loc30_:Number = _loc28_.x * this.§_-Wx§.x + _loc28_.y * this.§_-jL§.x;
         var _loc31_:Number = _loc28_.x * this.§_-Wx§.y + _loc28_.y * this.§_-jL§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::_-Zi * _loc30_;
         _loc6_.y -= b2internal::_-Zi * _loc31_;
         _loc7_ -= b2internal::_-Ay * _loc32_;
         _loc8_.x += b2internal::_-c2 * _loc30_;
         _loc8_.y += b2internal::_-c2 * _loc31_;
         _loc9_ += b2internal::_-it * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-dS§();
         _loc5_.§_-dS§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
