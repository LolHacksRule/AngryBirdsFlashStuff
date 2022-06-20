package §5v§
{
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2TimeStep;
   import §6!R§.b2Mat22;
   import §6!R§.b2Mat33;
   import §6!R§.b2Math;
   import §6!R§.b2Transform;
   import §6!R§.b2Vec2;
   import §6!R§.b2Vec3;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §',§:b2Vec2;
      
      private var §+"F§:b2Vec2;
      
      private var §@T§:Number;
      
      private var §%"@§:b2Vec2;
      
      private var §4#;§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §0#_§:b2Mat33;
      
      private var §]#N§:b2Vec3;
      
      private var §2#9§:Number;
      
      private var §]0§:Number;
      
      private var §]1§:Number;
      
      private var §%# §:Number;
      
      private var §%"1§:Number;
      
      private var §1#0§:Number;
      
      private var §>$,§:Boolean;
      
      private var §,%§:Boolean;
      
      private var §1!-§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§',§ = new b2Vec2();
         this.§+"F§ = new b2Vec2();
         this.§%"@§ = new b2Vec2();
         this.§4#;§ = new b2Vec2();
         this.§0#_§ = new b2Mat33();
         this.§]#N§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§"#b§);
         this.m_localAnchor2.SetV(param1.§[#b§);
         this.§',§.SetV(param1.§4#`§);
         this.§+"F§.x = -this.§',§.y;
         this.§+"F§.y = this.§',§.x;
         this.§@T§ = param1.§6"h§;
         this.§]#N§.§%"N§();
         this.§2#9§ = 0;
         this.§]0§ = 0;
         this.§]1§ = param1.§6##§;
         this.§%# § = param1.§'!4§;
         this.§%"1§ = param1.§^"j§;
         this.§1#0§ = param1.motorSpeed;
         this.§>$,§ = param1.§0#[§;
         this.§,%§ = param1.§["y§;
         this.§1!-§ = b2internal::#"a;
         this.§%"@§.§%"N§();
         this.§4#;§.§%"N§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: ?.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal:: #q.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§]#N§.x * this.§4#;§.x + (this.§]0§ + this.§]#N§.z) * this.§%"@§.x),param1 * (this.§]#N§.x * this.§4#;§.y + (this.§]0§ + this.§]#N§.z) * this.§%"@§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§]#N§.y;
      }
      
      public function §-#k§() : Number
      {
         var _loc1_:b2Body = b2internal:: ?;
         var _loc2_:b2Body = b2internal:: #q;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§`"§(this.§',§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §=#u§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal:: ?;
         var _loc2_:b2Body = b2internal:: #q;
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
         var _loc15_:b2Vec2 = _loc1_.§`"§(this.§',§);
         var _loc16_:b2Vec2 = _loc1_.§=!c§;
         var _loc17_:b2Vec2 = _loc2_.§=!c§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §`#Q§() : Boolean
      {
         return this.§>$,§;
      }
      
      public function §?"k§(param1:Boolean) : void
      {
         b2internal:: ?.SetAwake(true);
         b2internal:: #q.SetAwake(true);
         this.§>$,§ = param1;
      }
      
      public function §&#M§() : Number
      {
         return this.§]1§;
      }
      
      public function §,#9§() : Number
      {
         return this.§%# §;
      }
      
      public function §]#Z§(param1:Number, param2:Number) : void
      {
         b2internal:: ?.SetAwake(true);
         b2internal:: #q.SetAwake(true);
         this.§]1§ = param1;
         this.§%# § = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§,%§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal:: ?.SetAwake(true);
         b2internal:: #q.SetAwake(true);
         this.§,%§ = param1;
      }
      
      public function §6#"§(param1:Number) : void
      {
         b2internal:: ?.SetAwake(true);
         b2internal:: #q.SetAwake(true);
         this.§1#0§ = param1;
      }
      
      public function §`#l§() : Number
      {
         return this.§1#0§;
      }
      
      public function §>!N§(param1:Number) : void
      {
         b2internal:: ?.SetAwake(true);
         b2internal:: #q.SetAwake(true);
         this.§%"1§ = param1;
      }
      
      public function §7!R§() : Number
      {
         return this.§]0§;
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
         var _loc2_:b2Body = b2internal:: ?;
         var _loc3_:b2Body = b2internal:: #q;
         b2internal::3$+.SetV(_loc2_.§9-§());
         b2internal::<#R.SetV(_loc3_.§9-§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::3$+.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::3$+.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::<#R.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::<#R.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §9"K§ = _loc2_.§0#d§;
         §,";§ = _loc3_.§0#d§;
         §4#P§ = _loc2_.§!!!§;
         §;#z§ = _loc3_.§!!!§;
         this.§%"@§.SetV(b2Math.§;"V§(_loc6_.R,this.§',§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§%"@§.y - (_loc13_ + _loc9_) * this.§%"@§.x;
         this.m_a2 = _loc10_ * this.§%"@§.y - _loc11_ * this.§%"@§.x;
         this.§2#9§ = b2internal::9"K + b2internal::,"; + b2internal::4#P * this.m_a1 * this.m_a1 + b2internal::;#z * this.m_a2 * this.m_a2;
         if(this.§2#9§ > Number.MIN_VALUE)
         {
            this.§2#9§ = 1 / this.§2#9§;
         }
         this.§4#;§.SetV(b2Math.§;"V§(_loc6_.R,this.§+"F§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§4#;§.y - (_loc13_ + _loc9_) * this.§4#;§.x;
         this.m_s2 = _loc10_ * this.§4#;§.y - _loc11_ * this.§4#;§.x;
         var _loc14_:Number = b2internal::9"K;
         var _loc15_:Number = b2internal::,";;
         var _loc16_:Number = b2internal::4#P;
         var _loc17_:Number = b2internal::;#z;
         this.§0#_§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§0#_§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§0#_§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§0#_§.col2.x = this.§0#_§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§0#_§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§0#_§.col2.y = 1;
         }
         this.§0#_§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§0#_§.col3.x = this.§0#_§.col1.z;
         this.§0#_§.col3.y = this.§0#_§.col2.z;
         this.§0#_§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§>$,§)
         {
            _loc18_ = this.§%"@§.x * _loc12_ + this.§%"@§.y * _loc13_;
            if(b2Math.§##%§(this.§%# § - this.§]1§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§1!-§ = b2internal::+$3;
            }
            else if(_loc18_ <= this.§]1§)
            {
               if(this.§1!-§ != b2internal::@$D)
               {
                  this.§1!-§ = b2internal::@$D;
                  this.§]#N§.z = 0;
               }
            }
            else if(_loc18_ >= this.§%# §)
            {
               if(this.§1!-§ != b2internal::&!=)
               {
                  this.§1!-§ = b2internal::&!=;
                  this.§]#N§.z = 0;
               }
            }
            else
            {
               this.§1!-§ = b2internal::#"a;
               this.§]#N§.z = 0;
            }
         }
         else
         {
            this.§1!-§ = b2internal::#"a;
            this.§]#N§.z = 0;
         }
         if(this.§,%§ == false)
         {
            this.§]0§ = 0;
         }
         if(param1.§+L§)
         {
            this.§]#N§.x *= param1.§1$5§;
            this.§]#N§.y *= param1.§1$5§;
            this.§]0§ *= param1.§1$5§;
            _loc19_ = this.§]#N§.x * this.§4#;§.x + (this.§]0§ + this.§]#N§.z) * this.§%"@§.x;
            _loc20_ = this.§]#N§.x * this.§4#;§.y + (this.§]0§ + this.§]#N§.z) * this.§%"@§.y;
            _loc21_ = this.§]#N§.x * this.m_s1 + this.§]#N§.y + (this.§]0§ + this.§]#N§.z) * this.m_a1;
            _loc22_ = this.§]#N§.x * this.m_s2 + this.§]#N§.y + (this.§]0§ + this.§]#N§.z) * this.m_a2;
            _loc2_.§=!c§.x -= b2internal::9"K * _loc19_;
            _loc2_.§=!c§.y -= b2internal::9"K * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::4#P * _loc21_;
            _loc3_.§=!c§.x += b2internal::,"; * _loc19_;
            _loc3_.§=!c§.y += b2internal::,"; * _loc20_;
            _loc3_.m_angularVelocity += b2internal::;#z * _loc22_;
         }
         else
         {
            this.§]#N§.§%"N§();
            this.§]0§ = 0;
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
         var _loc2_:b2Body = b2internal:: ?;
         var _loc3_:b2Body = b2internal:: #q;
         var _loc4_:b2Vec2 = _loc2_.§=!c§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§=!c§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§,%§ && this.§1!-§ != b2internal::+$3)
         {
            _loc14_ = this.§%"@§.x * (_loc6_.x - _loc4_.x) + this.§%"@§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§2#9§ * (this.§1#0§ - _loc14_);
            _loc16_ = this.§]0§;
            _loc17_ = param1.dt * this.§%"1§;
            this.§]0§ = b2Math.§-$"§(this.§]0§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§]0§ - _loc16_) * this.§%"@§.x;
            _loc9_ = _loc15_ * this.§%"@§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::9"K * _loc8_;
            _loc4_.y -= b2internal::9"K * _loc9_;
            _loc5_ -= b2internal::4#P * _loc10_;
            _loc6_.x += b2internal::,"; * _loc8_;
            _loc6_.y += b2internal::,"; * _loc9_;
            _loc7_ += b2internal::;#z * _loc11_;
         }
         var _loc12_:Number = this.§4#;§.x * (_loc6_.x - _loc4_.x) + this.§4#;§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§>$,§ && this.§1!-§ != b2internal::#"a)
         {
            _loc18_ = this.§%"@§.x * (_loc6_.x - _loc4_.x) + this.§%"@§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§]#N§.Copy();
            _loc20_ = this.§0#_§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§]#N§.§?$6§(_loc20_);
            if(this.§1!-§ == b2internal::@$D)
            {
               this.§]#N§.z = b2Math.§&V§(this.§]#N§.z,0);
            }
            else if(this.§1!-§ == b2internal::&!=)
            {
               this.§]#N§.z = b2Math.§ 3§(this.§]#N§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§]#N§.z - _loc19_.z) * this.§0#_§.col3.x;
            _loc22_ = -_loc13_ - (this.§]#N§.z - _loc19_.z) * this.§0#_§.col3.y;
            _loc23_ = this.§0#_§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§]#N§.x = _loc23_.x;
            this.§]#N§.y = _loc23_.y;
            _loc20_.x = this.§]#N§.x - _loc19_.x;
            _loc20_.y = this.§]#N§.y - _loc19_.y;
            _loc20_.z = this.§]#N§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§4#;§.x + _loc20_.z * this.§%"@§.x;
            _loc9_ = _loc20_.x * this.§4#;§.y + _loc20_.z * this.§%"@§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::9"K * _loc8_;
            _loc4_.y -= b2internal::9"K * _loc9_;
            _loc5_ -= b2internal::4#P * _loc10_;
            _loc6_.x += b2internal::,"; * _loc8_;
            _loc6_.y += b2internal::,"; * _loc9_;
            _loc7_ += b2internal::;#z * _loc11_;
         }
         else
         {
            _loc24_ = this.§0#_§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§]#N§.x += _loc24_.x;
            this.§]#N§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§4#;§.x;
            _loc9_ = _loc24_.x * this.§4#;§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::9"K * _loc8_;
            _loc4_.y -= b2internal::9"K * _loc9_;
            _loc5_ -= b2internal::4#P * _loc10_;
            _loc6_.x += b2internal::,"; * _loc8_;
            _loc6_.y += b2internal::,"; * _loc9_;
            _loc7_ += b2internal::;#z * _loc11_;
         }
         _loc2_.§=!c§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§=!c§.SetV(_loc6_);
         _loc3_.m_angularVelocity = _loc7_;
      }
      
      override b2internal function SolvePositionConstraints(param1:Number) : Boolean
      {
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
         var _loc4_:b2Body = b2internal:: ?;
         var _loc5_:b2Body = b2internal:: #q;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§4,§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§4,§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::3$+.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::3$+.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::<#R.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::<#R.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§>$,§)
         {
            this.§%"@§ = b2Math.§;"V§(_loc20_,this.§',§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§%"@§.y - (_loc27_ + _loc23_) * this.§%"@§.x;
            this.m_a2 = _loc24_ * this.§%"@§.y - _loc25_ * this.§%"@§.x;
            _loc35_ = this.§%"@§.x * _loc26_ + this.§%"@§.y * _loc27_;
            if(b2Math.§##%§(this.§%# § - this.§]1§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§-$"§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§##%§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§]1§)
            {
               _loc19_ = b2Math.§-$"§(_loc35_ - this.§]1§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§]1§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§%# §)
            {
               _loc19_ = b2Math.§-$"§(_loc35_ - this.§%# § + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§%# §;
               _loc18_ = true;
            }
         }
         this.§4#;§ = b2Math.§;"V§(_loc20_,this.§+"F§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§4#;§.y - (_loc27_ + _loc23_) * this.§4#;§.x;
         this.m_s2 = _loc24_ * this.§4#;§.y - _loc25_ * this.§4#;§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§4#;§.x * _loc26_ + this.§4#;§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§@T§;
         _loc16_ = b2Math.§&V§(_loc16_,b2Math.§##%§(_loc29_));
         _loc17_ = b2Math.§##%§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::9"K;
            _loc13_ = b2internal::,";;
            _loc14_ = b2internal::4#P;
            _loc15_ = b2internal::;#z;
            this.§0#_§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§0#_§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§0#_§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§0#_§.col2.x = this.§0#_§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§0#_§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§0#_§.col2.y = 1;
            }
            this.§0#_§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§0#_§.col3.x = this.§0#_§.col1.z;
            this.§0#_§.col3.y = this.§0#_§.col2.z;
            this.§0#_§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§0#_§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::9"K;
            _loc13_ = b2internal::,";;
            _loc14_ = b2internal::4#P;
            _loc15_ = b2internal::;#z;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§0#_§.col1.Set(_loc36_,_loc37_,0);
            this.§0#_§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§0#_§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§4#;§.x + _loc28_.z * this.§%"@§.x;
         var _loc32_:Number = _loc28_.x * this.§4#;§.y + _loc28_.z * this.§%"@§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::9"K * _loc31_;
         _loc6_.y -= b2internal::9"K * _loc32_;
         _loc7_ -= b2internal::4#P * _loc33_;
         _loc8_.x += b2internal::,"; * _loc31_;
         _loc8_.y += b2internal::,"; * _loc32_;
         _loc9_ += b2internal::;#z * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§[!C§();
         _loc5_.§[!C§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
