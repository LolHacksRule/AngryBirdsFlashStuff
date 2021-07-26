package §!"b§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2TimeStep;
   import §04§.b2Mat22;
   import §04§.b2Mat33;
   import §04§.b2Math;
   import §04§.b2Vec2;
   import §04§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      private static var §8#L§:b2Vec2 = new b2Vec2();
       
      
      private var §?$2§:b2Mat22;
      
      private var K1:b2Mat22;
      
      private var K2:b2Mat22;
      
      private var K3:b2Mat22;
      
      private var impulse3:b2Vec3;
      
      private var impulse2:b2Vec2;
      
      private var §?$-§:b2Vec2;
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      private var §9b§:b2Vec3;
      
      private var §<!T§:Number;
      
      private var §'g§:b2Mat33;
      
      private var §0"R§:Number;
      
      private var §%$+§:Boolean;
      
      private var §;X§:Number;
      
      private var §9!e§:Number;
      
      private var §'!R§:Boolean;
      
      private var §=#d§:Number;
      
      private var §&"<§:Number;
      
      private var §4v§:Number;
      
      private var §!!t§:int;
      
      public function b2RevoluteJoint(param1:b2RevoluteJointDef)
      {
         this.§?$2§ = new b2Mat22();
         this.K1 = new b2Mat22();
         this.K2 = new b2Mat22();
         this.K3 = new b2Mat22();
         this.impulse3 = new b2Vec3();
         this.impulse2 = new b2Vec2();
         this.§?$-§ = new b2Vec2();
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§9b§ = new b2Vec3();
         this.§'g§ = new b2Mat33();
         super(param1);
         this.m_localAnchor1.SetV(param1.§,#D§);
         this.m_localAnchor2.SetV(param1.§?#d§);
         this.§=#d§ = param1.§8§;
         this.§9b§.§3-§();
         this.§<!T§ = 0;
         this.§&"<§ = param1.§-"n§;
         this.§4v§ = param1.§ $5§;
         this.§;X§ = param1.§;#w§;
         this.§9!e§ = param1.motorSpeed;
         this.§'!R§ = param1.§4"E§;
         this.§%$+§ = param1.§]Q§;
         this.§!!t§ = b2internal::&A;
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::6#6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::]#j.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * this.§9b§.x,param1 * this.§9b§.y);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9b§.z;
      }
      
      public function §9$"§() : Number
      {
         return b2internal::]#j.m_sweep.a - b2internal::6#6.m_sweep.a - this.§=#d§;
      }
      
      public function §,v§() : Number
      {
         return b2internal::]#j.m_angularVelocity - b2internal::6#6.m_angularVelocity;
      }
      
      public function §-"p§() : Boolean
      {
         return this.§'!R§;
      }
      
      public function §`#i§(param1:Boolean) : void
      {
         this.§'!R§ = param1;
      }
      
      public function §1#w§() : Number
      {
         return this.§&"<§;
      }
      
      public function §>#r§() : Number
      {
         return this.§4v§;
      }
      
      public function §<#3§(param1:Number, param2:Number) : void
      {
         this.§&"<§ = param1;
         this.§4v§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§%$+§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::6#6.SetAwake(true);
         b2internal::]#j.SetAwake(true);
         this.§%$+§ = param1;
      }
      
      public function §;"8§(param1:Number) : void
      {
         b2internal::6#6.SetAwake(true);
         b2internal::]#j.SetAwake(true);
         this.§9!e§ = param1;
      }
      
      public function §]"7§() : Number
      {
         return this.§9!e§;
      }
      
      public function §]T§(param1:Number) : void
      {
         this.§;X§ = param1;
      }
      
      public function §-"0§() : Number
      {
         return this.§;X§;
      }
      
      override b2internal function InitVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:b2Body = null;
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         _loc2_ = b2internal::6#6;
         _loc3_ = b2internal::]#j;
         if(this.§%$+§ || this.§'!R§)
         {
         }
         _loc4_ = _loc2_.m_xf.R;
         var _loc6_:Number = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
         _loc7_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc6_ + _loc4_.col2.x * _loc7_;
         _loc7_ = _loc4_.col1.y * _loc6_ + _loc4_.col2.y * _loc7_;
         _loc6_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
         var _loc9_:Number = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         var _loc10_:Number = _loc2_.§<A§;
         var _loc11_:Number = _loc3_.§<A§;
         var _loc12_:Number = _loc2_.§2k§;
         var _loc13_:Number = _loc3_.§2k§;
         var _loc14_:* = _loc12_ + _loc13_ == 0;
         this.§'g§.col1.x = _loc10_ + _loc11_ + _loc7_ * _loc7_ * _loc12_ + _loc9_ * _loc9_ * _loc13_;
         this.§'g§.col2.x = -_loc7_ * _loc6_ * _loc12_ - _loc9_ * _loc8_ * _loc13_;
         this.§'g§.col3.x = -_loc7_ * _loc12_ - _loc9_ * _loc13_;
         this.§'g§.col1.y = this.§'g§.col2.x;
         this.§'g§.col2.y = _loc10_ + _loc11_ + _loc6_ * _loc6_ * _loc12_ + _loc8_ * _loc8_ * _loc13_;
         this.§'g§.col3.y = _loc6_ * _loc12_ + _loc8_ * _loc13_;
         this.§'g§.col1.z = this.§'g§.col3.x;
         this.§'g§.col2.z = this.§'g§.col3.y;
         this.§'g§.col3.z = _loc12_ + _loc13_;
         this.§0"R§ = 1 / (_loc12_ + _loc13_);
         if(this.§%$+§ == false || _loc14_)
         {
            this.§<!T§ = 0;
         }
         if(this.§'!R§ && !_loc14_)
         {
            _loc15_ = _loc3_.m_sweep.a - _loc2_.m_sweep.a - this.§=#d§;
            if(b2Math.§0!2§(this.§4v§ - this.§&"<§) < 2 * b2Settings.b2_angularSlop)
            {
               this.§!!t§ = b2internal:: "$;
            }
            else if(_loc15_ <= this.§&"<§)
            {
               if(this.§!!t§ != b2internal::-I)
               {
                  this.§9b§.z = 0;
               }
               this.§!!t§ = b2internal::-I;
            }
            else if(_loc15_ >= this.§4v§)
            {
               if(this.§!!t§ != b2internal::?b)
               {
                  this.§9b§.z = 0;
               }
               this.§!!t§ = b2internal::?b;
            }
            else
            {
               this.§!!t§ = b2internal::&A;
               this.§9b§.z = 0;
            }
         }
         else
         {
            this.§!!t§ = b2internal::&A;
         }
         if(param1.§^q§)
         {
            this.§9b§.x *= param1.§%!U§;
            this.§9b§.y *= param1.§%!U§;
            this.§<!T§ *= param1.§%!U§;
            _loc16_ = this.§9b§.x;
            _loc17_ = this.§9b§.y;
            _loc2_.§^%§.x -= _loc10_ * _loc16_;
            _loc2_.§^%§.y -= _loc10_ * _loc17_;
            _loc2_.m_angularVelocity -= _loc12_ * (_loc6_ * _loc17_ - _loc7_ * _loc16_ + this.§<!T§ + this.§9b§.z);
            _loc3_.§^%§.x += _loc11_ * _loc16_;
            _loc3_.§^%§.y += _loc11_ * _loc17_;
            _loc3_.m_angularVelocity += _loc13_ * (_loc8_ * _loc17_ - _loc9_ * _loc16_ + this.§<!T§ + this.§9b§.z);
         }
         else
         {
            this.§9b§.§3-§();
            this.§<!T§ = 0;
         }
      }
      
      override b2internal function SolveVelocityConstraints(param1:b2TimeStep) : void
      {
         var _loc4_:b2Mat22 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc2_:b2Body = b2internal::6#6;
         var _loc3_:b2Body = b2internal::]#j;
         var _loc11_:b2Vec2 = _loc2_.§^%§;
         var _loc12_:Number = _loc2_.m_angularVelocity;
         var _loc13_:b2Vec2 = _loc3_.§^%§;
         var _loc14_:Number = _loc3_.m_angularVelocity;
         var _loc15_:Number = _loc2_.§<A§;
         var _loc16_:Number = _loc3_.§<A§;
         var _loc17_:Number = _loc2_.§2k§;
         var _loc18_:Number = _loc3_.§2k§;
         var _loc19_:* = _loc17_ + _loc18_ == 0;
         if(this.§%$+§ && this.§!!t§ != b2internal:: "$ && !_loc19_)
         {
            _loc20_ = _loc14_ - _loc12_ - this.§9!e§;
            _loc21_ = this.§0"R§ * -_loc20_;
            _loc22_ = this.§<!T§;
            _loc23_ = param1.dt * this.§;X§;
            this.§<!T§ = b2Math.§!!7§(this.§<!T§ + _loc21_,-_loc23_,_loc23_);
            _loc21_ = this.§<!T§ - _loc22_;
            _loc12_ -= _loc17_ * _loc21_;
            _loc14_ += _loc18_ * _loc21_;
         }
         if(this.§'!R§ && this.§!!t§ != b2internal::&A && !_loc19_)
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc24_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc25_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            _loc26_ = _loc14_ - _loc12_;
            this.§'g§.Solve33(this.impulse3,-_loc24_,-_loc25_,-_loc26_);
            if(this.§!!t§ == b2internal:: "$)
            {
               this.§9b§.§0#3§(this.impulse3);
            }
            else if(this.§!!t§ == b2internal::-I)
            {
               if((_loc6_ = this.§9b§.z + this.impulse3.z) < 0)
               {
                  this.§'g§.Solve22(this.§?$-§,-_loc24_ + this.§9b§.z * this.§'g§.col3.x,-_loc25_ + this.§9b§.z * this.§'g§.col3.y);
                  this.impulse3.x = this.§?$-§.x;
                  this.impulse3.y = this.§?$-§.y;
                  this.impulse3.z = -this.§9b§.z;
                  this.§9b§.x += this.§?$-§.x;
                  this.§9b§.y += this.§?$-§.y;
                  this.§9b§.z = 0;
               }
               else
               {
                  this.§9b§.x += this.impulse3.x;
                  this.§9b§.y += this.impulse3.y;
                  this.§9b§.z += this.impulse3.z;
               }
            }
            else if(this.§!!t§ == b2internal::?b)
            {
               if((_loc6_ = this.§9b§.z + this.impulse3.z) > 0)
               {
                  this.§'g§.Solve22(this.§?$-§,-_loc24_ + this.§9b§.z * this.§'g§.col3.x,-_loc25_ + this.§9b§.z * this.§'g§.col3.y);
                  this.impulse3.x = this.§?$-§.x;
                  this.impulse3.y = this.§?$-§.y;
                  this.impulse3.z = -this.§9b§.z;
                  this.§9b§.x += this.§?$-§.x;
                  this.§9b§.y += this.§?$-§.y;
                  this.§9b§.z = 0;
               }
               else
               {
                  this.§9b§.x += this.impulse3.x;
                  this.§9b§.y += this.impulse3.y;
                  this.§9b§.z += this.impulse3.z;
               }
            }
            _loc11_.x -= _loc15_ * this.impulse3.x;
            _loc11_.y -= _loc15_ * this.impulse3.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse3.y - _loc8_ * this.impulse3.x + this.impulse3.z);
            _loc13_.x += _loc16_ * this.impulse3.x;
            _loc13_.y += _loc16_ * this.impulse3.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse3.y - _loc10_ * this.impulse3.x + this.impulse3.z);
         }
         else
         {
            _loc4_ = _loc2_.m_xf.R;
            _loc7_ = this.m_localAnchor1.x - _loc2_.m_sweep.localCenter.x;
            _loc8_ = this.m_localAnchor1.y - _loc2_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc7_ + _loc4_.col2.x * _loc8_;
            _loc8_ = _loc4_.col1.y * _loc7_ + _loc4_.col2.y * _loc8_;
            _loc7_ = _loc5_;
            _loc4_ = _loc3_.m_xf.R;
            _loc9_ = this.m_localAnchor2.x - _loc3_.m_sweep.localCenter.x;
            _loc10_ = this.m_localAnchor2.y - _loc3_.m_sweep.localCenter.y;
            _loc5_ = _loc4_.col1.x * _loc9_ + _loc4_.col2.x * _loc10_;
            _loc10_ = _loc4_.col1.y * _loc9_ + _loc4_.col2.y * _loc10_;
            _loc9_ = _loc5_;
            _loc27_ = _loc13_.x + -_loc14_ * _loc10_ - _loc11_.x - -_loc12_ * _loc8_;
            _loc28_ = _loc13_.y + _loc14_ * _loc9_ - _loc11_.y - _loc12_ * _loc7_;
            this.§'g§.Solve22(this.impulse2,-_loc27_,-_loc28_);
            this.§9b§.x += this.impulse2.x;
            this.§9b§.y += this.impulse2.y;
            _loc11_.x -= _loc15_ * this.impulse2.x;
            _loc11_.y -= _loc15_ * this.impulse2.y;
            _loc12_ -= _loc17_ * (_loc7_ * this.impulse2.y - _loc8_ * this.impulse2.x);
            _loc13_.x += _loc16_ * this.impulse2.x;
            _loc13_.y += _loc16_ * this.impulse2.y;
            _loc14_ += _loc18_ * (_loc9_ * this.impulse2.y - _loc10_ * this.impulse2.x);
         }
         _loc2_.§^%§.SetV(_loc11_);
         _loc2_.m_angularVelocity = _loc12_;
         _loc3_.§^%§.SetV(_loc13_);
         _loc3_.m_angularVelocity = _loc14_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:b2Mat22 = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc5_:b2Body = b2internal::6#6;
         var _loc6_:b2Body = b2internal::]#j;
         var _loc7_:* = b2internal::"O + b2internal::0#4 == 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         if(this.§'!R§ && this.§!!t§ != b2internal::&A && !_loc7_)
         {
            _loc26_ = _loc6_.m_sweep.a - _loc5_.m_sweep.a - this.§=#d§;
            _loc27_ = 0;
            if(this.§!!t§ == b2internal:: "$)
            {
               _loc3_ = b2Math.§!!7§(_loc26_ - this.§&"<§,-b2Settings.b2_maxAngularCorrection,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§0"R§ * _loc3_;
               _loc8_ = b2Math.§0!2§(_loc3_);
            }
            else if(this.§!!t§ == b2internal::-I)
            {
               _loc3_ = _loc26_ - this.§&"<§;
               _loc8_ = -_loc3_;
               _loc3_ = b2Math.§!!7§(_loc3_ + b2Settings.b2_angularSlop,-b2Settings.b2_maxAngularCorrection,0);
               _loc27_ = -this.§0"R§ * _loc3_;
            }
            else if(this.§!!t§ == b2internal::?b)
            {
               _loc3_ = _loc26_ - this.§4v§;
               _loc8_ = _loc3_;
               _loc3_ = b2Math.§!!7§(_loc3_ - b2Settings.b2_angularSlop,0,b2Settings.b2_maxAngularCorrection);
               _loc27_ = -this.§0"R§ * _loc3_;
            }
            _loc5_.m_sweep.a -= _loc5_.§2k§ * _loc27_;
            _loc6_.m_sweep.a += _loc6_.§2k§ * _loc27_;
            _loc5_.§&" §();
            _loc6_.§&" §();
         }
         _loc4_ = _loc5_.m_xf.R;
         var _loc13_:Number = this.m_localAnchor1.x - _loc5_.m_sweep.localCenter.x;
         var _loc14_:Number = this.m_localAnchor1.y - _loc5_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc13_ + _loc4_.col2.x * _loc14_;
         _loc14_ = _loc4_.col1.y * _loc13_ + _loc4_.col2.y * _loc14_;
         _loc13_ = _loc10_;
         _loc4_ = _loc6_.m_xf.R;
         var _loc15_:Number = this.m_localAnchor2.x - _loc6_.m_sweep.localCenter.x;
         var _loc16_:Number = this.m_localAnchor2.y - _loc6_.m_sweep.localCenter.y;
         _loc10_ = _loc4_.col1.x * _loc15_ + _loc4_.col2.x * _loc16_;
         _loc16_ = _loc4_.col1.y * _loc15_ + _loc4_.col2.y * _loc16_;
         _loc15_ = _loc10_;
         var _loc17_:Number = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
         var _loc18_:Number = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         var _loc19_:Number = _loc17_ * _loc17_ + _loc18_ * _loc18_;
         var _loc20_:Number;
         _loc9_ = _loc20_ = Math.sqrt(_loc19_);
         var _loc21_:Number = _loc5_.§<A§;
         var _loc22_:Number = _loc6_.§<A§;
         var _loc23_:Number = _loc5_.§2k§;
         var _loc24_:Number = _loc6_.§2k§;
         var _loc25_:Number = 10 * b2Settings.b2_linearSlop * 4;
         if(_loc19_ > _loc25_ * _loc25_)
         {
            _loc28_ = _loc17_ / _loc20_;
            _loc29_ = _loc18_ / _loc20_;
            _loc30_ = _loc21_ + _loc22_;
            _loc11_ = (_loc31_ = 1 / _loc30_) * -_loc17_;
            _loc12_ = _loc31_ * -_loc18_;
            _loc32_ = 0.5;
            _loc5_.m_sweep.c.x -= _loc32_ * _loc21_ * _loc11_;
            _loc5_.m_sweep.c.y -= _loc32_ * _loc21_ * _loc12_;
            _loc6_.m_sweep.c.x += _loc32_ * _loc22_ * _loc11_;
            _loc6_.m_sweep.c.y += _loc32_ * _loc22_ * _loc12_;
            _loc17_ = _loc6_.m_sweep.c.x + _loc15_ - _loc5_.m_sweep.c.x - _loc13_;
            _loc18_ = _loc6_.m_sweep.c.y + _loc16_ - _loc5_.m_sweep.c.y - _loc14_;
         }
         this.K1.col1.x = _loc21_ + _loc22_;
         this.K1.col2.x = 0;
         this.K1.col1.y = 0;
         this.K1.col2.y = _loc21_ + _loc22_;
         this.K2.col1.x = _loc23_ * _loc14_ * _loc14_;
         this.K2.col2.x = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col1.y = -_loc23_ * _loc13_ * _loc14_;
         this.K2.col2.y = _loc23_ * _loc13_ * _loc13_;
         this.K3.col1.x = _loc24_ * _loc16_ * _loc16_;
         this.K3.col2.x = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col1.y = -_loc24_ * _loc15_ * _loc16_;
         this.K3.col2.y = _loc24_ * _loc15_ * _loc15_;
         this.§?$2§.§="`§(this.K1);
         this.§?$2§.§&!Q§(this.K2);
         this.§?$2§.§&!Q§(this.K3);
         this.§?$2§.§"!p§(§8#L§,-_loc17_,-_loc18_);
         _loc11_ = §8#L§.x;
         _loc12_ = §8#L§.y;
         _loc5_.m_sweep.c.x -= _loc5_.§<A§ * _loc11_;
         _loc5_.m_sweep.c.y -= _loc5_.§<A§ * _loc12_;
         _loc5_.m_sweep.a -= _loc5_.§2k§ * (_loc13_ * _loc12_ - _loc14_ * _loc11_);
         _loc6_.m_sweep.c.x += _loc6_.§<A§ * _loc11_;
         _loc6_.m_sweep.c.y += _loc6_.§<A§ * _loc12_;
         _loc6_.m_sweep.a += _loc6_.§2k§ * (_loc15_ * _loc12_ - _loc16_ * _loc11_);
         _loc5_.§&" §();
         _loc6_.§&" §();
         return _loc9_ <= b2Settings.b2_linearSlop * 4 && _loc8_ <= b2Settings.b2_angularSlop;
      }
   }
}
