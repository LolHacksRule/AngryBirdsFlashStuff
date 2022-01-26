package §_-ol§
{
   import §_-43§.b2Body;
   import §_-43§.b2TimeStep;
   import §_-F2§.b2Mat22;
   import §_-F2§.b2Math;
   import §_-F2§.b2Transform;
   import §_-F2§.b2Vec2;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §_-O§:b2Vec2;
      
      private var §_-Cr§:b2Vec2;
      
      private var §_-WT§:b2Vec2;
      
      private var §_-NN§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §_-0-8§:b2Mat22;
      
      private var §_-cR§:b2Vec2;
      
      private var §_-18§:Number;
      
      private var §_-Pi§:Number;
      
      private var §_-4j§:Number;
      
      private var §_-PT§:Number;
      
      private var §_-0q§:Number;
      
      private var §_-Z7§:Number;
      
      private var §_-j6§:Boolean;
      
      private var §_-0-o§:Boolean;
      
      private var §_-5v§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§_-O§ = new b2Vec2();
         this.§_-Cr§ = new b2Vec2();
         this.§_-WT§ = new b2Vec2();
         this.§_-NN§ = new b2Vec2();
         this.§_-0-8§ = new b2Mat22();
         this.§_-cR§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§_-lj§);
         this.m_localAnchor2.SetV(param1.§_-zW§);
         this.§_-O§.SetV(param1.§_-Ra§);
         this.§_-Cr§.x = -this.§_-O§.y;
         this.§_-Cr§.y = this.§_-O§.x;
         this.§_-cR§.§_-t5§();
         this.§_-18§ = 0;
         this.§_-Pi§ = 0;
         this.§_-4j§ = param1.§_-HQ§;
         this.§_-PT§ = param1.§_-6a§;
         this.§_-0q§ = param1.§_-ki§;
         this.§_-Z7§ = param1.motorSpeed;
         this.§_-j6§ = param1.§_-sR§;
         this.§_-0-o§ = param1.§_-zc§;
         this.§_-5v§ = b2internal::_-J1;
         this.§_-WT§.§_-t5§();
         this.§_-NN§.§_-t5§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::_-Fj.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::_-eo.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§_-cR§.x * this.§_-NN§.x + (this.§_-Pi§ + this.§_-cR§.y) * this.§_-WT§.x),param1 * (this.§_-cR§.x * this.§_-NN§.y + (this.§_-Pi§ + this.§_-cR§.y) * this.§_-WT§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§_-cR§.y;
      }
      
      public function §_-0-i§() : Number
      {
         var _loc1_:b2Body = b2internal::_-Fj;
         var _loc2_:b2Body = b2internal::_-eo;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§_-Ma§(this.§_-O§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §_-Fv§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::_-Fj;
         var _loc2_:b2Body = b2internal::_-eo;
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
         var _loc9_:Number = _loc1_.m_sweep.§_-FO§.x + _loc4_;
         var _loc10_:Number = _loc1_.m_sweep.§_-FO§.y + _loc5_;
         var _loc11_:Number = _loc2_.m_sweep.§_-FO§.x + _loc7_;
         var _loc12_:Number = _loc2_.m_sweep.§_-FO§.y + _loc8_;
         var _loc13_:Number = _loc11_ - _loc9_;
         var _loc14_:Number = _loc12_ - _loc10_;
         var _loc15_:b2Vec2 = _loc1_.§_-Ma§(this.§_-O§);
         var _loc16_:b2Vec2 = _loc1_.§_-We§;
         var _loc17_:b2Vec2 = _loc2_.§_-We§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §_-cS§() : Boolean
      {
         return this.§_-j6§;
      }
      
      public function §_-au§(param1:Boolean) : void
      {
         b2internal::_-Fj.SetAwake(true);
         b2internal::_-eo.SetAwake(true);
         this.§_-j6§ = param1;
      }
      
      public function §_-VZ§() : Number
      {
         return this.§_-4j§;
      }
      
      public function §_-F3§() : Number
      {
         return this.§_-PT§;
      }
      
      public function §_-0-m§(param1:Number, param2:Number) : void
      {
         b2internal::_-Fj.SetAwake(true);
         b2internal::_-eo.SetAwake(true);
         this.§_-4j§ = param1;
         this.§_-PT§ = param2;
      }
      
      public function §_-WN§() : Boolean
      {
         return this.§_-0-o§;
      }
      
      public function §_-WX§(param1:Boolean) : void
      {
         b2internal::_-Fj.SetAwake(true);
         b2internal::_-eo.SetAwake(true);
         this.§_-0-o§ = param1;
      }
      
      public function §_-yc§(param1:Number) : void
      {
         b2internal::_-Fj.SetAwake(true);
         b2internal::_-eo.SetAwake(true);
         this.§_-Z7§ = param1;
      }
      
      public function §_-cD§() : Number
      {
         return this.§_-Z7§;
      }
      
      public function §_-SZ§(param1:Number) : void
      {
         b2internal::_-Fj.SetAwake(true);
         b2internal::_-eo.SetAwake(true);
         this.§_-0q§ = param1;
      }
      
      public function §_-iX§() : Number
      {
         return this.§_-0q§;
      }
      
      public function §null §() : Number
      {
         return this.§_-Pi§;
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
         var _loc2_:b2Body = b2internal::_-Fj;
         var _loc3_:b2Body = b2internal::_-eo;
         b2internal::_-zS.SetV(_loc2_.§_-j8§());
         b2internal::_-tT.SetV(_loc3_.§_-j8§());
         var _loc6_:b2Transform = _loc2_.§_-lD§();
         var _loc7_:b2Transform = _loc3_.§_-lD§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::_-zS.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::_-zS.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::_-tT.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::_-tT.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.§_-FO§.x + _loc10_ - _loc2_.m_sweep.§_-FO§.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.§_-FO§.y + _loc11_ - _loc2_.m_sweep.§_-FO§.y - _loc9_;
         §_-y9§ = _loc2_.§_-N0§;
         §_-dJ§ = _loc3_.§_-N0§;
         §_-Yh§ = _loc2_.§_-pA§;
         §_-ae§ = _loc3_.§_-pA§;
         this.§_-WT§.SetV(b2Math.§_-WK§(_loc6_.R,this.§_-O§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§_-WT§.y - (_loc13_ + _loc9_) * this.§_-WT§.x;
         this.m_a2 = _loc10_ * this.§_-WT§.y - _loc11_ * this.§_-WT§.x;
         this.§_-18§ = b2internal::_-y9 + b2internal::_-dJ + b2internal::_-Yh * this.m_a1 * this.m_a1 + b2internal::_-ae * this.m_a2 * this.m_a2;
         this.§_-18§ = this.§_-18§ > Number.MIN_VALUE ? Number(1 / this.§_-18§) : Number(0);
         this.§_-NN§.SetV(b2Math.§_-WK§(_loc6_.R,this.§_-Cr§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§_-NN§.y - (_loc13_ + _loc9_) * this.§_-NN§.x;
         this.m_s2 = _loc10_ * this.§_-NN§.y - _loc11_ * this.§_-NN§.x;
         var _loc14_:Number = b2internal::_-y9;
         var _loc15_:Number = b2internal::_-dJ;
         var _loc16_:Number = b2internal::_-Yh;
         var _loc17_:Number = b2internal::_-ae;
         this.§_-0-8§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§_-0-8§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§_-0-8§.col2.x = this.§_-0-8§.col1.y;
         this.§_-0-8§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§_-j6§)
         {
            _loc18_ = this.§_-WT§.x * _loc12_ + this.§_-WT§.y * _loc13_;
            if(b2Math.§_-qe§(this.§_-PT§ - this.§_-4j§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§_-5v§ = b2internal::_-4Q;
            }
            else if(_loc18_ <= this.§_-4j§)
            {
               if(this.§_-5v§ != b2internal::_-2p)
               {
                  this.§_-5v§ = b2internal::_-2p;
                  this.§_-cR§.y = 0;
               }
            }
            else if(_loc18_ >= this.§_-PT§)
            {
               if(this.§_-5v§ != b2internal::_-3g)
               {
                  this.§_-5v§ = b2internal::_-3g;
                  this.§_-cR§.y = 0;
               }
            }
            else
            {
               this.§_-5v§ = b2internal::_-J1;
               this.§_-cR§.y = 0;
            }
         }
         else
         {
            this.§_-5v§ = b2internal::_-J1;
         }
         if(this.§_-0-o§ == false)
         {
            this.§_-Pi§ = 0;
         }
         if(param1.§_-fo§)
         {
            this.§_-cR§.x *= param1.§_-cz§;
            this.§_-cR§.y *= param1.§_-cz§;
            this.§_-Pi§ *= param1.§_-cz§;
            _loc19_ = this.§_-cR§.x * this.§_-NN§.x + (this.§_-Pi§ + this.§_-cR§.y) * this.§_-WT§.x;
            _loc20_ = this.§_-cR§.x * this.§_-NN§.y + (this.§_-Pi§ + this.§_-cR§.y) * this.§_-WT§.y;
            _loc21_ = this.§_-cR§.x * this.m_s1 + (this.§_-Pi§ + this.§_-cR§.y) * this.m_a1;
            _loc22_ = this.§_-cR§.x * this.m_s2 + (this.§_-Pi§ + this.§_-cR§.y) * this.m_a2;
            _loc2_.§_-We§.x -= b2internal::_-y9 * _loc19_;
            _loc2_.§_-We§.y -= b2internal::_-y9 * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::_-Yh * _loc21_;
            _loc3_.§_-We§.x += b2internal::_-dJ * _loc19_;
            _loc3_.§_-We§.y += b2internal::_-dJ * _loc20_;
            _loc3_.m_angularVelocity += b2internal::_-ae * _loc22_;
         }
         else
         {
            this.§_-cR§.§_-t5§();
            this.§_-Pi§ = 0;
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
         var _loc2_:b2Body = b2internal::_-Fj;
         var _loc3_:b2Body = b2internal::_-eo;
         var _loc4_:b2Vec2 = _loc2_.§_-We§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§_-We§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§_-0-o§ && this.§_-5v§ != b2internal::_-4Q)
         {
            _loc13_ = this.§_-WT§.x * (_loc6_.x - _loc4_.x) + this.§_-WT§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§_-18§ * (this.§_-Z7§ - _loc13_);
            _loc15_ = this.§_-Pi§;
            _loc16_ = param1.§_-At§ * this.§_-0q§;
            this.§_-Pi§ = b2Math.§_-3V§(this.§_-Pi§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§_-Pi§ - _loc15_) * this.§_-WT§.x;
            _loc9_ = _loc14_ * this.§_-WT§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::_-y9 * _loc8_;
            _loc4_.y -= b2internal::_-y9 * _loc9_;
            _loc5_ -= b2internal::_-Yh * _loc10_;
            _loc6_.x += b2internal::_-dJ * _loc8_;
            _loc6_.y += b2internal::_-dJ * _loc9_;
            _loc7_ += b2internal::_-ae * _loc11_;
         }
         var _loc12_:Number = this.§_-NN§.x * (_loc6_.x - _loc4_.x) + this.§_-NN§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§_-j6§ && this.§_-5v§ != b2internal::_-J1)
         {
            _loc17_ = this.§_-WT§.x * (_loc6_.x - _loc4_.x) + this.§_-WT§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§_-cR§.Copy();
            _loc19_ = this.§_-0-8§.§_-mC§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§_-cR§.§_-5F§(_loc19_);
            if(this.§_-5v§ == b2internal::_-2p)
            {
               this.§_-cR§.y = b2Math.§_-xk§(this.§_-cR§.y,0);
            }
            else if(this.§_-5v§ == b2internal::_-3g)
            {
               this.§_-cR§.y = b2Math.§_-E9§(this.§_-cR§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§_-cR§.y - _loc18_.y) * this.§_-0-8§.col2.x;
            if(this.§_-0-8§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§_-0-8§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§_-cR§.x = _loc21_;
            _loc19_.x = this.§_-cR§.x - _loc18_.x;
            _loc19_.y = this.§_-cR§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§_-NN§.x + _loc19_.y * this.§_-WT§.x;
            _loc9_ = _loc19_.x * this.§_-NN§.y + _loc19_.y * this.§_-WT§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::_-y9 * _loc8_;
            _loc4_.y -= b2internal::_-y9 * _loc9_;
            _loc5_ -= b2internal::_-Yh * _loc10_;
            _loc6_.x += b2internal::_-dJ * _loc8_;
            _loc6_.y += b2internal::_-dJ * _loc9_;
            _loc7_ += b2internal::_-ae * _loc11_;
         }
         else
         {
            if(this.§_-0-8§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§_-0-8§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§_-cR§.x += _loc22_;
            _loc8_ = _loc22_ * this.§_-NN§.x;
            _loc9_ = _loc22_ * this.§_-NN§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::_-y9 * _loc8_;
            _loc4_.y -= b2internal::_-y9 * _loc9_;
            _loc5_ -= b2internal::_-Yh * _loc10_;
            _loc6_.x += b2internal::_-dJ * _loc8_;
            _loc6_.y += b2internal::_-dJ * _loc9_;
            _loc7_ += b2internal::_-ae * _loc11_;
         }
         _loc2_.§_-We§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§_-We§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::_-Fj;
         var _loc5_:b2Body = b2internal::_-eo;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.§_-FO§;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.§_-FO§;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§_-Eb§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§_-Eb§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::_-zS.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::_-zS.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::_-tT.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::_-tT.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§_-j6§)
         {
            this.§_-WT§ = b2Math.§_-WK§(_loc20_,this.§_-O§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§_-WT§.y - (_loc27_ + _loc23_) * this.§_-WT§.x;
            this.m_a2 = _loc24_ * this.§_-WT§.y - _loc25_ * this.§_-WT§.x;
            _loc34_ = this.§_-WT§.x * _loc26_ + this.§_-WT§.y * _loc27_;
            if(b2Math.§_-qe§(this.§_-PT§ - this.§_-4j§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§_-3V§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§_-qe§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§_-4j§)
            {
               _loc19_ = b2Math.§_-3V§(_loc34_ - this.§_-4j§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§_-4j§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§_-PT§)
            {
               _loc19_ = b2Math.§_-3V§(_loc34_ - this.§_-PT§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§_-PT§;
               _loc18_ = true;
            }
         }
         this.§_-NN§ = b2Math.§_-WK§(_loc20_,this.§_-Cr§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§_-NN§.y - (_loc27_ + _loc23_) * this.§_-NN§.x;
         this.m_s2 = _loc24_ * this.§_-NN§.y - _loc25_ * this.§_-NN§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§_-NN§.x * _loc26_ + this.§_-NN§.y * _loc27_;
         _loc16_ = b2Math.§_-xk§(_loc16_,b2Math.§_-qe§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::_-y9;
            _loc13_ = b2internal::_-dJ;
            _loc14_ = b2internal::_-Yh;
            _loc15_ = b2internal::_-ae;
            this.§_-0-8§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§_-0-8§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§_-0-8§.col2.x = this.§_-0-8§.col1.y;
            this.§_-0-8§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§_-0-8§.§_-mC§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::_-y9;
            _loc13_ = b2internal::_-dJ;
            _loc14_ = b2internal::_-Yh;
            _loc15_ = b2internal::_-ae;
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
         var _loc30_:Number = _loc28_.x * this.§_-NN§.x + _loc28_.y * this.§_-WT§.x;
         var _loc31_:Number = _loc28_.x * this.§_-NN§.y + _loc28_.y * this.§_-WT§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::_-y9 * _loc30_;
         _loc6_.y -= b2internal::_-y9 * _loc31_;
         _loc7_ -= b2internal::_-Yh * _loc32_;
         _loc8_.x += b2internal::_-dJ * _loc30_;
         _loc8_.y += b2internal::_-dJ * _loc31_;
         _loc9_ += b2internal::_-ae * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§_-76§();
         _loc5_.§_-76§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
