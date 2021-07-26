package §!"b§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2TimeStep;
   import §04§.b2Mat22;
   import §04§.b2Mat33;
   import §04§.b2Math;
   import §04§.b2Transform;
   import §04§.b2Vec2;
   import §04§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §&"X§:b2Vec2;
      
      private var §=#O§:b2Vec2;
      
      private var §+#X§:Number;
      
      private var §"#1§:b2Vec2;
      
      private var §2#2§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §3"5§:b2Mat33;
      
      private var §9b§:b2Vec3;
      
      private var §0"R§:Number;
      
      private var §<!T§:Number;
      
      private var §8#S§:Number;
      
      private var §>#F§:Number;
      
      private var §5"e§:Number;
      
      private var §9!e§:Number;
      
      private var §'!R§:Boolean;
      
      private var §%$+§:Boolean;
      
      private var §!!t§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§&"X§ = new b2Vec2();
         this.§=#O§ = new b2Vec2();
         this.§"#1§ = new b2Vec2();
         this.§2#2§ = new b2Vec2();
         this.§3"5§ = new b2Mat33();
         this.§9b§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§,#D§);
         this.m_localAnchor2.SetV(param1.§?#d§);
         this.§&"X§.SetV(param1.§;-§);
         this.§=#O§.x = -this.§&"X§.y;
         this.§=#O§.y = this.§&"X§.x;
         this.§+#X§ = param1.§8§;
         this.§9b§.§3-§();
         this.§0"R§ = 0;
         this.§<!T§ = 0;
         this.§8#S§ = param1.§-7§;
         this.§>#F§ = param1.§2c§;
         this.§5"e§ = param1.§4N§;
         this.§9!e§ = param1.motorSpeed;
         this.§'!R§ = param1.§4"E§;
         this.§%$+§ = param1.§]Q§;
         this.§!!t§ = b2internal::&A;
         this.§"#1§.§3-§();
         this.§2#2§.§3-§();
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
         return new b2Vec2(param1 * (this.§9b§.x * this.§2#2§.x + (this.§<!T§ + this.§9b§.z) * this.§"#1§.x),param1 * (this.§9b§.x * this.§2#2§.y + (this.§<!T§ + this.§9b§.z) * this.§"#1§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§9b§.y;
      }
      
      public function §3!I§() : Number
      {
         var _loc1_:b2Body = b2internal::6#6;
         var _loc2_:b2Body = b2internal::]#j;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§2!9§(this.§&"X§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §,v§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::6#6;
         var _loc2_:b2Body = b2internal::]#j;
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
         var _loc15_:b2Vec2 = _loc1_.§2!9§(this.§&"X§);
         var _loc16_:b2Vec2 = _loc1_.§^%§;
         var _loc17_:b2Vec2 = _loc2_.§^%§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §-"p§() : Boolean
      {
         return this.§'!R§;
      }
      
      public function §`#i§(param1:Boolean) : void
      {
         b2internal::6#6.SetAwake(true);
         b2internal::]#j.SetAwake(true);
         this.§'!R§ = param1;
      }
      
      public function §1#w§() : Number
      {
         return this.§8#S§;
      }
      
      public function §>#r§() : Number
      {
         return this.§>#F§;
      }
      
      public function §<#3§(param1:Number, param2:Number) : void
      {
         b2internal::6#6.SetAwake(true);
         b2internal::]#j.SetAwake(true);
         this.§8#S§ = param1;
         this.§>#F§ = param2;
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
      
      public function § #J§(param1:Number) : void
      {
         b2internal::6#6.SetAwake(true);
         b2internal::]#j.SetAwake(true);
         this.§5"e§ = param1;
      }
      
      public function §'#T§() : Number
      {
         return this.§<!T§;
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
         var _loc2_:b2Body = b2internal::6#6;
         var _loc3_:b2Body = b2internal::]#j;
         b2internal::-#i.SetV(_loc2_.§+#J§());
         b2internal::+!8.SetV(_loc3_.§+#J§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::-#i.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::-#i.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::+!8.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::+!8.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §3$#§ = _loc2_.§<A§;
         include = _loc3_.§<A§;
         §"O§ = _loc2_.§2k§;
         §0#4§ = _loc3_.§2k§;
         this.§"#1§.SetV(b2Math.§&!@§(_loc6_.R,this.§&"X§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§"#1§.y - (_loc13_ + _loc9_) * this.§"#1§.x;
         this.m_a2 = _loc10_ * this.§"#1§.y - _loc11_ * this.§"#1§.x;
         this.§0"R§ = b2internal::3$# + b2internal::include + b2internal::"O * this.m_a1 * this.m_a1 + b2internal::0#4 * this.m_a2 * this.m_a2;
         if(this.§0"R§ > Number.MIN_VALUE)
         {
            this.§0"R§ = 1 / this.§0"R§;
         }
         this.§2#2§.SetV(b2Math.§&!@§(_loc6_.R,this.§=#O§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§2#2§.y - (_loc13_ + _loc9_) * this.§2#2§.x;
         this.m_s2 = _loc10_ * this.§2#2§.y - _loc11_ * this.§2#2§.x;
         var _loc14_:Number = b2internal::3$#;
         var _loc15_:Number = b2internal::include;
         var _loc16_:Number = b2internal::"O;
         var _loc17_:Number = b2internal::0#4;
         this.§3"5§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§3"5§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§3"5§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§3"5§.col2.x = this.§3"5§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§3"5§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§3"5§.col2.y = 1;
         }
         this.§3"5§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§3"5§.col3.x = this.§3"5§.col1.z;
         this.§3"5§.col3.y = this.§3"5§.col2.z;
         this.§3"5§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§'!R§)
         {
            _loc18_ = this.§"#1§.x * _loc12_ + this.§"#1§.y * _loc13_;
            if(b2Math.§0!2§(this.§>#F§ - this.§8#S§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§!!t§ = b2internal:: "$;
            }
            else if(_loc18_ <= this.§8#S§)
            {
               if(this.§!!t§ != b2internal::-I)
               {
                  this.§!!t§ = b2internal::-I;
                  this.§9b§.z = 0;
               }
            }
            else if(_loc18_ >= this.§>#F§)
            {
               if(this.§!!t§ != b2internal::?b)
               {
                  this.§!!t§ = b2internal::?b;
                  this.§9b§.z = 0;
               }
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
            this.§9b§.z = 0;
         }
         if(this.§%$+§ == false)
         {
            this.§<!T§ = 0;
         }
         if(param1.§^q§)
         {
            this.§9b§.x *= param1.§%!U§;
            this.§9b§.y *= param1.§%!U§;
            this.§<!T§ *= param1.§%!U§;
            _loc19_ = this.§9b§.x * this.§2#2§.x + (this.§<!T§ + this.§9b§.z) * this.§"#1§.x;
            _loc20_ = this.§9b§.x * this.§2#2§.y + (this.§<!T§ + this.§9b§.z) * this.§"#1§.y;
            _loc21_ = this.§9b§.x * this.m_s1 + this.§9b§.y + (this.§<!T§ + this.§9b§.z) * this.m_a1;
            _loc22_ = this.§9b§.x * this.m_s2 + this.§9b§.y + (this.§<!T§ + this.§9b§.z) * this.m_a2;
            _loc2_.§^%§.x -= b2internal::3$# * _loc19_;
            _loc2_.§^%§.y -= b2internal::3$# * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::"O * _loc21_;
            _loc3_.§^%§.x += b2internal::include * _loc19_;
            _loc3_.§^%§.y += b2internal::include * _loc20_;
            _loc3_.m_angularVelocity += b2internal::0#4 * _loc22_;
         }
         else
         {
            this.§9b§.§3-§();
            this.§<!T§ = 0;
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
         var _loc2_:b2Body = b2internal::6#6;
         var _loc3_:b2Body = b2internal::]#j;
         var _loc4_:b2Vec2 = _loc2_.§^%§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§^%§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§%$+§ && this.§!!t§ != b2internal:: "$)
         {
            _loc14_ = this.§"#1§.x * (_loc6_.x - _loc4_.x) + this.§"#1§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§0"R§ * (this.§9!e§ - _loc14_);
            _loc16_ = this.§<!T§;
            _loc17_ = param1.dt * this.§5"e§;
            this.§<!T§ = b2Math.§!!7§(this.§<!T§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§<!T§ - _loc16_) * this.§"#1§.x;
            _loc9_ = _loc15_ * this.§"#1§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::3$# * _loc8_;
            _loc4_.y -= b2internal::3$# * _loc9_;
            _loc5_ -= b2internal::"O * _loc10_;
            _loc6_.x += b2internal::include * _loc8_;
            _loc6_.y += b2internal::include * _loc9_;
            _loc7_ += b2internal::0#4 * _loc11_;
         }
         var _loc12_:Number = this.§2#2§.x * (_loc6_.x - _loc4_.x) + this.§2#2§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§'!R§ && this.§!!t§ != b2internal::&A)
         {
            _loc18_ = this.§"#1§.x * (_loc6_.x - _loc4_.x) + this.§"#1§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§9b§.Copy();
            _loc20_ = this.§3"5§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§9b§.§0#3§(_loc20_);
            if(this.§!!t§ == b2internal::-I)
            {
               this.§9b§.z = b2Math.§="Z§(this.§9b§.z,0);
            }
            else if(this.§!!t§ == b2internal::?b)
            {
               this.§9b§.z = b2Math.§!#K§(this.§9b§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§9b§.z - _loc19_.z) * this.§3"5§.col3.x;
            _loc22_ = -_loc13_ - (this.§9b§.z - _loc19_.z) * this.§3"5§.col3.y;
            _loc23_ = this.§3"5§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§9b§.x = _loc23_.x;
            this.§9b§.y = _loc23_.y;
            _loc20_.x = this.§9b§.x - _loc19_.x;
            _loc20_.y = this.§9b§.y - _loc19_.y;
            _loc20_.z = this.§9b§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§2#2§.x + _loc20_.z * this.§"#1§.x;
            _loc9_ = _loc20_.x * this.§2#2§.y + _loc20_.z * this.§"#1§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::3$# * _loc8_;
            _loc4_.y -= b2internal::3$# * _loc9_;
            _loc5_ -= b2internal::"O * _loc10_;
            _loc6_.x += b2internal::include * _loc8_;
            _loc6_.y += b2internal::include * _loc9_;
            _loc7_ += b2internal::0#4 * _loc11_;
         }
         else
         {
            _loc24_ = this.§3"5§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§9b§.x += _loc24_.x;
            this.§9b§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§2#2§.x;
            _loc9_ = _loc24_.x * this.§2#2§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::3$# * _loc8_;
            _loc4_.y -= b2internal::3$# * _loc9_;
            _loc5_ -= b2internal::"O * _loc10_;
            _loc6_.x += b2internal::include * _loc8_;
            _loc6_.y += b2internal::include * _loc9_;
            _loc7_ += b2internal::0#4 * _loc11_;
         }
         _loc2_.§^%§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§^%§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::6#6;
         var _loc5_:b2Body = b2internal::]#j;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§^S§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§^S§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::-#i.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::-#i.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::+!8.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::+!8.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§'!R§)
         {
            this.§"#1§ = b2Math.§&!@§(_loc20_,this.§&"X§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§"#1§.y - (_loc27_ + _loc23_) * this.§"#1§.x;
            this.m_a2 = _loc24_ * this.§"#1§.y - _loc25_ * this.§"#1§.x;
            _loc35_ = this.§"#1§.x * _loc26_ + this.§"#1§.y * _loc27_;
            if(b2Math.§0!2§(this.§>#F§ - this.§8#S§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§!!7§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§0!2§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§8#S§)
            {
               _loc19_ = b2Math.§!!7§(_loc35_ - this.§8#S§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§8#S§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§>#F§)
            {
               _loc19_ = b2Math.§!!7§(_loc35_ - this.§>#F§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§>#F§;
               _loc18_ = true;
            }
         }
         this.§2#2§ = b2Math.§&!@§(_loc20_,this.§=#O§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§2#2§.y - (_loc27_ + _loc23_) * this.§2#2§.x;
         this.m_s2 = _loc24_ * this.§2#2§.y - _loc25_ * this.§2#2§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§2#2§.x * _loc26_ + this.§2#2§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§+#X§;
         _loc16_ = b2Math.§="Z§(_loc16_,b2Math.§0!2§(_loc29_));
         _loc17_ = b2Math.§0!2§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::3$#;
            _loc13_ = b2internal::include;
            _loc14_ = b2internal::"O;
            _loc15_ = b2internal::0#4;
            this.§3"5§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§3"5§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§3"5§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§3"5§.col2.x = this.§3"5§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§3"5§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§3"5§.col2.y = 1;
            }
            this.§3"5§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§3"5§.col3.x = this.§3"5§.col1.z;
            this.§3"5§.col3.y = this.§3"5§.col2.z;
            this.§3"5§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§3"5§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::3$#;
            _loc13_ = b2internal::include;
            _loc14_ = b2internal::"O;
            _loc15_ = b2internal::0#4;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§3"5§.col1.Set(_loc36_,_loc37_,0);
            this.§3"5§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§3"5§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§2#2§.x + _loc28_.z * this.§"#1§.x;
         var _loc32_:Number = _loc28_.x * this.§2#2§.y + _loc28_.z * this.§"#1§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::3$# * _loc31_;
         _loc6_.y -= b2internal::3$# * _loc32_;
         _loc7_ -= b2internal::"O * _loc33_;
         _loc8_.x += b2internal::include * _loc31_;
         _loc8_.y += b2internal::include * _loc32_;
         _loc9_ += b2internal::0#4 * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§&" §();
         _loc5_.§&" §();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
