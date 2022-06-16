package §"G§
{
   import §&!Y§.b2Body;
   import §&!Y§.b2TimeStep;
   import §7F§.b2Mat22;
   import §7F§.b2Math;
   import §7F§.b2Transform;
   import §7F§.b2Vec2;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §-b§:b2Vec2;
      
      private var §@!A§:b2Vec2;
      
      private var §;!F§:b2Vec2;
      
      private var §<3§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §^h§:b2Mat22;
      
      private var §^"8§:b2Vec2;
      
      private var §1!T§:Number;
      
      private var §`;§:Number;
      
      private var §+"@§:Number;
      
      private var §8[§:Number;
      
      private var §0=§:Number;
      
      private var §3!?§:Number;
      
      private var §<!f§:Boolean;
      
      private var §,7§:Boolean;
      
      private var § !5§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§-b§ = new b2Vec2();
         this.§@!A§ = new b2Vec2();
         this.§;!F§ = new b2Vec2();
         this.§<3§ = new b2Vec2();
         this.§^h§ = new b2Mat22();
         this.§^"8§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§!d§);
         this.m_localAnchor2.SetV(param1.§;!9§);
         this.§-b§.SetV(param1.§,"L§);
         this.§@!A§.x = -this.§-b§.y;
         this.§@!A§.y = this.§-b§.x;
         this.§^"8§.§%"0§();
         this.§1!T§ = 0;
         this.§`;§ = 0;
         this.§+"@§ = param1.§'?§;
         this.§8[§ = param1.§=j§;
         this.§0=§ = param1.§<"+§;
         this.§3!?§ = param1.motorSpeed;
         this.§<!f§ = param1.§5a§;
         this.§,7§ = param1.§-q§;
         this.§ !5§ = b2internal::;7;
         this.§;!F§.§%"0§();
         this.§<3§.§%"0§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3"6.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::<X.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§^"8§.x * this.§<3§.x + (this.§`;§ + this.§^"8§.y) * this.§;!F§.x),param1 * (this.§^"8§.x * this.§<3§.y + (this.§`;§ + this.§^"8§.y) * this.§;!F§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§^"8§.y;
      }
      
      public function §[!m§() : Number
      {
         var _loc1_:b2Body = b2internal::3"6;
         var _loc2_:b2Body = b2internal::<X;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§;[§(this.§-b§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §-e§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3"6;
         var _loc2_:b2Body = b2internal::<X;
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
         var _loc15_:b2Vec2 = _loc1_.§;[§(this.§-b§);
         var _loc16_:b2Vec2 = _loc1_.§,!1§;
         var _loc17_:b2Vec2 = _loc2_.§,!1§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §var §() : Boolean
      {
         return this.§<!f§;
      }
      
      public function §?v§(param1:Boolean) : void
      {
         b2internal::3"6.SetAwake(true);
         b2internal::<X.SetAwake(true);
         this.§<!f§ = param1;
      }
      
      public function §0K§() : Number
      {
         return this.§+"@§;
      }
      
      public function §<!5§() : Number
      {
         return this.§8[§;
      }
      
      public function §@a§(param1:Number, param2:Number) : void
      {
         b2internal::3"6.SetAwake(true);
         b2internal::<X.SetAwake(true);
         this.§+"@§ = param1;
         this.§8[§ = param2;
      }
      
      public function §9"E§() : Boolean
      {
         return this.§,7§;
      }
      
      public function §^"§(param1:Boolean) : void
      {
         b2internal::3"6.SetAwake(true);
         b2internal::<X.SetAwake(true);
         this.§,7§ = param1;
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
         b2internal::3"6.SetAwake(true);
         b2internal::<X.SetAwake(true);
         this.§3!?§ = param1;
      }
      
      public function §%>§() : Number
      {
         return this.§3!?§;
      }
      
      public function §2%§(param1:Number) : void
      {
         b2internal::3"6.SetAwake(true);
         b2internal::<X.SetAwake(true);
         this.§0=§ = param1;
      }
      
      public function §`!;§() : Number
      {
         return this.§0=§;
      }
      
      public function § !C§() : Number
      {
         return this.§`;§;
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
         var _loc2_:b2Body = b2internal::3"6;
         var _loc3_:b2Body = b2internal::<X;
         b2internal::&"#.SetV(_loc2_.§%"7§());
         b2internal::<Y.SetV(_loc3_.§%"7§());
         var _loc6_:b2Transform = _loc2_.§5j§();
         var _loc7_:b2Transform = _loc3_.§5j§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::&"#.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::&"#.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::<Y.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::<Y.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §@f§ = _loc2_.§6!j§;
         §+"§ = _loc3_.§6!j§;
         §4v§ = _loc2_.§6!$§;
         §#f§ = _loc3_.§6!$§;
         this.§;!F§.SetV(b2Math.§2!8§(_loc6_.R,this.§-b§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§;!F§.y - (_loc13_ + _loc9_) * this.§;!F§.x;
         this.m_a2 = _loc10_ * this.§;!F§.y - _loc11_ * this.§;!F§.x;
         this.§1!T§ = b2internal::@f + b2internal::+" + b2internal::4v * this.m_a1 * this.m_a1 + b2internal::#f * this.m_a2 * this.m_a2;
         this.§1!T§ = this.§1!T§ > Number.MIN_VALUE ? Number(1 / this.§1!T§) : Number(0);
         this.§<3§.SetV(b2Math.§2!8§(_loc6_.R,this.§@!A§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§<3§.y - (_loc13_ + _loc9_) * this.§<3§.x;
         this.m_s2 = _loc10_ * this.§<3§.y - _loc11_ * this.§<3§.x;
         var _loc14_:Number = b2internal::@f;
         var _loc15_:Number = b2internal::+";
         var _loc16_:Number = b2internal::4v;
         var _loc17_:Number = b2internal::#f;
         this.§^h§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§^h§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§^h§.col2.x = this.§^h§.col1.y;
         this.§^h§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§<!f§)
         {
            _loc18_ = this.§;!F§.x * _loc12_ + this.§;!F§.y * _loc13_;
            if(b2Math.§?h§(this.§8[§ - this.§+"@§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§ !5§ = b2internal:: j;
            }
            else if(_loc18_ <= this.§+"@§)
            {
               if(this.§ !5§ != b2internal::#N)
               {
                  this.§ !5§ = b2internal::#N;
                  this.§^"8§.y = 0;
               }
            }
            else if(_loc18_ >= this.§8[§)
            {
               if(this.§ !5§ != b2internal::!c)
               {
                  this.§ !5§ = b2internal::!c;
                  this.§^"8§.y = 0;
               }
            }
            else
            {
               this.§ !5§ = b2internal::;7;
               this.§^"8§.y = 0;
            }
         }
         else
         {
            this.§ !5§ = b2internal::;7;
         }
         if(this.§,7§ == false)
         {
            this.§`;§ = 0;
         }
         if(param1.§@"9§)
         {
            this.§^"8§.x *= param1.§0#§;
            this.§^"8§.y *= param1.§0#§;
            this.§`;§ *= param1.§0#§;
            _loc19_ = this.§^"8§.x * this.§<3§.x + (this.§`;§ + this.§^"8§.y) * this.§;!F§.x;
            _loc20_ = this.§^"8§.x * this.§<3§.y + (this.§`;§ + this.§^"8§.y) * this.§;!F§.y;
            _loc21_ = this.§^"8§.x * this.m_s1 + (this.§`;§ + this.§^"8§.y) * this.m_a1;
            _loc22_ = this.§^"8§.x * this.m_s2 + (this.§`;§ + this.§^"8§.y) * this.m_a2;
            _loc2_.§,!1§.x -= b2internal::@f * _loc19_;
            _loc2_.§,!1§.y -= b2internal::@f * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::4v * _loc21_;
            _loc3_.§,!1§.x += b2internal::+" * _loc19_;
            _loc3_.§,!1§.y += b2internal::+" * _loc20_;
            _loc3_.m_angularVelocity += b2internal::#f * _loc22_;
         }
         else
         {
            this.§^"8§.§%"0§();
            this.§`;§ = 0;
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
         var _loc2_:b2Body = b2internal::3"6;
         var _loc3_:b2Body = b2internal::<X;
         var _loc4_:b2Vec2 = _loc2_.§,!1§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§,!1§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§,7§ && this.§ !5§ != b2internal:: j)
         {
            _loc13_ = this.§;!F§.x * (_loc6_.x - _loc4_.x) + this.§;!F§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§1!T§ * (this.§3!?§ - _loc13_);
            _loc15_ = this.§`;§;
            _loc16_ = param1.§&!K§ * this.§0=§;
            this.§`;§ = b2Math.§&+§(this.§`;§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§`;§ - _loc15_) * this.§;!F§.x;
            _loc9_ = _loc14_ * this.§;!F§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::@f * _loc8_;
            _loc4_.y -= b2internal::@f * _loc9_;
            _loc5_ -= b2internal::4v * _loc10_;
            _loc6_.x += b2internal::+" * _loc8_;
            _loc6_.y += b2internal::+" * _loc9_;
            _loc7_ += b2internal::#f * _loc11_;
         }
         var _loc12_:Number = this.§<3§.x * (_loc6_.x - _loc4_.x) + this.§<3§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§<!f§ && this.§ !5§ != b2internal::;7)
         {
            _loc17_ = this.§;!F§.x * (_loc6_.x - _loc4_.x) + this.§;!F§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§^"8§.Copy();
            _loc19_ = this.§^h§.§3-§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§^"8§.§?!;§(_loc19_);
            if(this.§ !5§ == b2internal::#N)
            {
               this.§^"8§.y = b2Math.§4!3§(this.§^"8§.y,0);
            }
            else if(this.§ !5§ == b2internal::!c)
            {
               this.§^"8§.y = b2Math.§>!]§(this.§^"8§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§^"8§.y - _loc18_.y) * this.§^h§.col2.x;
            if(this.§^h§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§^h§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§^"8§.x = _loc21_;
            _loc19_.x = this.§^"8§.x - _loc18_.x;
            _loc19_.y = this.§^"8§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§<3§.x + _loc19_.y * this.§;!F§.x;
            _loc9_ = _loc19_.x * this.§<3§.y + _loc19_.y * this.§;!F§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::@f * _loc8_;
            _loc4_.y -= b2internal::@f * _loc9_;
            _loc5_ -= b2internal::4v * _loc10_;
            _loc6_.x += b2internal::+" * _loc8_;
            _loc6_.y += b2internal::+" * _loc9_;
            _loc7_ += b2internal::#f * _loc11_;
         }
         else
         {
            if(this.§^h§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§^h§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§^"8§.x += _loc22_;
            _loc8_ = _loc22_ * this.§<3§.x;
            _loc9_ = _loc22_ * this.§<3§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::@f * _loc8_;
            _loc4_.y -= b2internal::@f * _loc9_;
            _loc5_ -= b2internal::4v * _loc10_;
            _loc6_.x += b2internal::+" * _loc8_;
            _loc6_.y += b2internal::+" * _loc9_;
            _loc7_ += b2internal::#f * _loc11_;
         }
         _loc2_.§,!1§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§,!1§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::3"6;
         var _loc5_:b2Body = b2internal::<X;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§#'§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§#'§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::&"#.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::&"#.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::<Y.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::<Y.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§<!f§)
         {
            this.§;!F§ = b2Math.§2!8§(_loc20_,this.§-b§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§;!F§.y - (_loc27_ + _loc23_) * this.§;!F§.x;
            this.m_a2 = _loc24_ * this.§;!F§.y - _loc25_ * this.§;!F§.x;
            _loc34_ = this.§;!F§.x * _loc26_ + this.§;!F§.y * _loc27_;
            if(b2Math.§?h§(this.§8[§ - this.§+"@§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§&+§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§?h§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§+"@§)
            {
               _loc19_ = b2Math.§&+§(_loc34_ - this.§+"@§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§+"@§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§8[§)
            {
               _loc19_ = b2Math.§&+§(_loc34_ - this.§8[§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§8[§;
               _loc18_ = true;
            }
         }
         this.§<3§ = b2Math.§2!8§(_loc20_,this.§@!A§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§<3§.y - (_loc27_ + _loc23_) * this.§<3§.x;
         this.m_s2 = _loc24_ * this.§<3§.y - _loc25_ * this.§<3§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§<3§.x * _loc26_ + this.§<3§.y * _loc27_;
         _loc16_ = b2Math.§4!3§(_loc16_,b2Math.§?h§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::@f;
            _loc13_ = b2internal::+";
            _loc14_ = b2internal::4v;
            _loc15_ = b2internal::#f;
            this.§^h§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§^h§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§^h§.col2.x = this.§^h§.col1.y;
            this.§^h§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§^h§.§3-§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::@f;
            _loc13_ = b2internal::+";
            _loc14_ = b2internal::4v;
            _loc15_ = b2internal::#f;
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
         var _loc30_:Number = _loc28_.x * this.§<3§.x + _loc28_.y * this.§;!F§.x;
         var _loc31_:Number = _loc28_.x * this.§<3§.y + _loc28_.y * this.§;!F§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::@f * _loc30_;
         _loc6_.y -= b2internal::@f * _loc31_;
         _loc7_ -= b2internal::4v * _loc32_;
         _loc8_.x += b2internal::+" * _loc30_;
         _loc8_.y += b2internal::+" * _loc31_;
         _loc9_ += b2internal::#f * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§-v§();
         _loc5_.§-v§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
