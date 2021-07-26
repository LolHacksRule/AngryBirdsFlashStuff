package § ! §
{
   import § "%§.b2Mat22;
   import § "%§.b2Mat33;
   import § "%§.b2Math;
   import § "%§.b2Transform;
   import § "%§.b2Vec2;
   import § "%§.b2Vec3;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2TimeStep;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var § #3§:b2Vec2;
      
      private var §3"?§:b2Vec2;
      
      private var §!#l§:Number;
      
      private var §^;§:b2Vec2;
      
      private var §2#M§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §%#W§:b2Mat33;
      
      private var §1#a§:b2Vec3;
      
      private var §9!h§:Number;
      
      private var §8#Z§:Number;
      
      private var §5$B§:Number;
      
      private var §9!>§:Number;
      
      private var §4v§:Number;
      
      private var §3C§:Number;
      
      private var §3!f§:Boolean;
      
      private var §=#E§:Boolean;
      
      private var § z§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§ #3§ = new b2Vec2();
         this.§3"?§ = new b2Vec2();
         this.§^;§ = new b2Vec2();
         this.§2#M§ = new b2Vec2();
         this.§%#W§ = new b2Mat33();
         this.§1#a§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§#"z§);
         this.m_localAnchor2.SetV(param1.§>#C§);
         this.§ #3§.SetV(param1.§3"t§);
         this.§3"?§.x = -this.§ #3§.y;
         this.§3"?§.y = this.§ #3§.x;
         this.§!#l§ = param1.§=#I§;
         this.§1#a§.§#!t§();
         this.§9!h§ = 0;
         this.§8#Z§ = 0;
         this.§5$B§ = param1.§4"w§;
         this.§9!>§ = param1.§-#b§;
         this.§4v§ = param1.§-!Q§;
         this.§3C§ = param1.motorSpeed;
         this.§3!f§ = param1.§?$&§;
         this.§=#E§ = param1.§!#6§;
         this.§ z§ = b2internal::7m;
         this.§^;§.§#!t§();
         this.§2#M§.§#!t§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::3!^.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::^U.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§1#a§.x * this.§2#M§.x + (this.§8#Z§ + this.§1#a§.z) * this.§^;§.x),param1 * (this.§1#a§.x * this.§2#M§.y + (this.§8#Z§ + this.§1#a§.z) * this.§^;§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§1#a§.y;
      }
      
      public function §5D§() : Number
      {
         var _loc1_:b2Body = b2internal::3!^;
         var _loc2_:b2Body = b2internal::^U;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§#"v§(this.§ #3§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §7#V§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::3!^;
         var _loc2_:b2Body = b2internal::^U;
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
         var _loc15_:b2Vec2 = _loc1_.§#"v§(this.§ #3§);
         var _loc16_:b2Vec2 = _loc1_.§4!I§;
         var _loc17_:b2Vec2 = _loc2_.§4!I§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §<!3§() : Boolean
      {
         return this.§3!f§;
      }
      
      public function §`!w§(param1:Boolean) : void
      {
         b2internal::3!^.SetAwake(true);
         b2internal::^U.SetAwake(true);
         this.§3!f§ = param1;
      }
      
      public function §8"c§() : Number
      {
         return this.§5$B§;
      }
      
      public function §2$8§() : Number
      {
         return this.§9!>§;
      }
      
      public function §]#f§(param1:Number, param2:Number) : void
      {
         b2internal::3!^.SetAwake(true);
         b2internal::^U.SetAwake(true);
         this.§5$B§ = param1;
         this.§9!>§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§=#E§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::3!^.SetAwake(true);
         b2internal::^U.SetAwake(true);
         this.§=#E§ = param1;
      }
      
      public function §,"q§(param1:Number) : void
      {
         b2internal::3!^.SetAwake(true);
         b2internal::^U.SetAwake(true);
         this.§3C§ = param1;
      }
      
      public function §^#w§() : Number
      {
         return this.§3C§;
      }
      
      public function §6#-§(param1:Number) : void
      {
         b2internal::3!^.SetAwake(true);
         b2internal::^U.SetAwake(true);
         this.§4v§ = param1;
      }
      
      public function §0#[§() : Number
      {
         return this.§8#Z§;
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
         var _loc2_:b2Body = b2internal::3!^;
         var _loc3_:b2Body = b2internal::^U;
         b2internal::+#4.SetV(_loc2_.§2#&§());
         b2internal::,+.SetV(_loc3_.§2#&§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::+#4.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::+#4.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::,+.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::,+.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §-"+§ = _loc2_.§@P§;
         §!!E§ = _loc3_.§@P§;
         §%L§ = _loc2_.§ !q§;
         §"#P§ = _loc3_.§ !q§;
         this.§^;§.SetV(b2Math.§4!p§(_loc6_.R,this.§ #3§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§^;§.y - (_loc13_ + _loc9_) * this.§^;§.x;
         this.m_a2 = _loc10_ * this.§^;§.y - _loc11_ * this.§^;§.x;
         this.§9!h§ = b2internal::-"+ + b2internal::!!E + b2internal::%L * this.m_a1 * this.m_a1 + b2internal::"#P * this.m_a2 * this.m_a2;
         if(this.§9!h§ > Number.MIN_VALUE)
         {
            this.§9!h§ = 1 / this.§9!h§;
         }
         this.§2#M§.SetV(b2Math.§4!p§(_loc6_.R,this.§3"?§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§2#M§.y - (_loc13_ + _loc9_) * this.§2#M§.x;
         this.m_s2 = _loc10_ * this.§2#M§.y - _loc11_ * this.§2#M§.x;
         var _loc14_:Number = b2internal::-"+;
         var _loc15_:Number = b2internal::!!E;
         var _loc16_:Number = b2internal::%L;
         var _loc17_:Number = b2internal::"#P;
         this.§%#W§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§%#W§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§%#W§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§%#W§.col2.x = this.§%#W§.col1.y;
         if(_loc16_ + _loc17_ != 0)
         {
            this.§%#W§.col2.y = _loc16_ + _loc17_;
         }
         else
         {
            this.§%#W§.col2.y = 1;
         }
         this.§%#W§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§%#W§.col3.x = this.§%#W§.col1.z;
         this.§%#W§.col3.y = this.§%#W§.col2.z;
         this.§%#W§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§3!f§)
         {
            _loc18_ = this.§^;§.x * _loc12_ + this.§^;§.y * _loc13_;
            if(b2Math.§[^§(this.§9!>§ - this.§5$B§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§ z§ = b2internal::]H;
            }
            else if(_loc18_ <= this.§5$B§)
            {
               if(this.§ z§ != b2internal::=!A)
               {
                  this.§ z§ = b2internal::=!A;
                  this.§1#a§.z = 0;
               }
            }
            else if(_loc18_ >= this.§9!>§)
            {
               if(this.§ z§ != b2internal::`!)
               {
                  this.§ z§ = b2internal::`!;
                  this.§1#a§.z = 0;
               }
            }
            else
            {
               this.§ z§ = b2internal::7m;
               this.§1#a§.z = 0;
            }
         }
         else
         {
            this.§ z§ = b2internal::7m;
            this.§1#a§.z = 0;
         }
         if(this.§=#E§ == false)
         {
            this.§8#Z§ = 0;
         }
         if(param1.§##q§)
         {
            this.§1#a§.x *= param1.§4$B§;
            this.§1#a§.y *= param1.§4$B§;
            this.§8#Z§ *= param1.§4$B§;
            _loc19_ = this.§1#a§.x * this.§2#M§.x + (this.§8#Z§ + this.§1#a§.z) * this.§^;§.x;
            _loc20_ = this.§1#a§.x * this.§2#M§.y + (this.§8#Z§ + this.§1#a§.z) * this.§^;§.y;
            _loc21_ = this.§1#a§.x * this.m_s1 + this.§1#a§.y + (this.§8#Z§ + this.§1#a§.z) * this.m_a1;
            _loc22_ = this.§1#a§.x * this.m_s2 + this.§1#a§.y + (this.§8#Z§ + this.§1#a§.z) * this.m_a2;
            _loc2_.§4!I§.x -= b2internal::-"+ * _loc19_;
            _loc2_.§4!I§.y -= b2internal::-"+ * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::%L * _loc21_;
            _loc3_.§4!I§.x += b2internal::!!E * _loc19_;
            _loc3_.§4!I§.y += b2internal::!!E * _loc20_;
            _loc3_.m_angularVelocity += b2internal::"#P * _loc22_;
         }
         else
         {
            this.§1#a§.§#!t§();
            this.§8#Z§ = 0;
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
         var _loc2_:b2Body = b2internal::3!^;
         var _loc3_:b2Body = b2internal::^U;
         var _loc4_:b2Vec2 = _loc2_.§4!I§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§4!I§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§=#E§ && this.§ z§ != b2internal::]H)
         {
            _loc14_ = this.§^;§.x * (_loc6_.x - _loc4_.x) + this.§^;§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§9!h§ * (this.§3C§ - _loc14_);
            _loc16_ = this.§8#Z§;
            _loc17_ = param1.dt * this.§4v§;
            this.§8#Z§ = b2Math.§0"k§(this.§8#Z§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§8#Z§ - _loc16_) * this.§^;§.x;
            _loc9_ = _loc15_ * this.§^;§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::-"+ * _loc8_;
            _loc4_.y -= b2internal::-"+ * _loc9_;
            _loc5_ -= b2internal::%L * _loc10_;
            _loc6_.x += b2internal::!!E * _loc8_;
            _loc6_.y += b2internal::!!E * _loc9_;
            _loc7_ += b2internal::"#P * _loc11_;
         }
         var _loc12_:Number = this.§2#M§.x * (_loc6_.x - _loc4_.x) + this.§2#M§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§3!f§ && this.§ z§ != b2internal::7m)
         {
            _loc18_ = this.§^;§.x * (_loc6_.x - _loc4_.x) + this.§^;§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§1#a§.Copy();
            _loc20_ = this.§%#W§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§1#a§.§<I§(_loc20_);
            if(this.§ z§ == b2internal::=!A)
            {
               this.§1#a§.z = b2Math.§'!`§(this.§1#a§.z,0);
            }
            else if(this.§ z§ == b2internal::`!)
            {
               this.§1#a§.z = b2Math.§;$0§(this.§1#a§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§1#a§.z - _loc19_.z) * this.§%#W§.col3.x;
            _loc22_ = -_loc13_ - (this.§1#a§.z - _loc19_.z) * this.§%#W§.col3.y;
            _loc23_ = this.§%#W§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§1#a§.x = _loc23_.x;
            this.§1#a§.y = _loc23_.y;
            _loc20_.x = this.§1#a§.x - _loc19_.x;
            _loc20_.y = this.§1#a§.y - _loc19_.y;
            _loc20_.z = this.§1#a§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§2#M§.x + _loc20_.z * this.§^;§.x;
            _loc9_ = _loc20_.x * this.§2#M§.y + _loc20_.z * this.§^;§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::-"+ * _loc8_;
            _loc4_.y -= b2internal::-"+ * _loc9_;
            _loc5_ -= b2internal::%L * _loc10_;
            _loc6_.x += b2internal::!!E * _loc8_;
            _loc6_.y += b2internal::!!E * _loc9_;
            _loc7_ += b2internal::"#P * _loc11_;
         }
         else
         {
            _loc24_ = this.§%#W§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§1#a§.x += _loc24_.x;
            this.§1#a§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§2#M§.x;
            _loc9_ = _loc24_.x * this.§2#M§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::-"+ * _loc8_;
            _loc4_.y -= b2internal::-"+ * _loc9_;
            _loc5_ -= b2internal::%L * _loc10_;
            _loc6_.x += b2internal::!!E * _loc8_;
            _loc6_.y += b2internal::!!E * _loc9_;
            _loc7_ += b2internal::"#P * _loc11_;
         }
         _loc2_.§4!I§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§4!I§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::3!^;
         var _loc5_:b2Body = b2internal::^U;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§]8§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§]8§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::+#4.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::+#4.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::,+.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::,+.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§3!f§)
         {
            this.§^;§ = b2Math.§4!p§(_loc20_,this.§ #3§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§^;§.y - (_loc27_ + _loc23_) * this.§^;§.x;
            this.m_a2 = _loc24_ * this.§^;§.y - _loc25_ * this.§^;§.x;
            _loc35_ = this.§^;§.x * _loc26_ + this.§^;§.y * _loc27_;
            if(b2Math.§[^§(this.§9!>§ - this.§5$B§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§0"k§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§[^§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§5$B§)
            {
               _loc19_ = b2Math.§0"k§(_loc35_ - this.§5$B§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§5$B§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§9!>§)
            {
               _loc19_ = b2Math.§0"k§(_loc35_ - this.§9!>§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§9!>§;
               _loc18_ = true;
            }
         }
         this.§2#M§ = b2Math.§4!p§(_loc20_,this.§3"?§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§2#M§.y - (_loc27_ + _loc23_) * this.§2#M§.x;
         this.m_s2 = _loc24_ * this.§2#M§.y - _loc25_ * this.§2#M§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§2#M§.x * _loc26_ + this.§2#M§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§!#l§;
         _loc16_ = b2Math.§'!`§(_loc16_,b2Math.§[^§(_loc29_));
         _loc17_ = b2Math.§[^§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::-"+;
            _loc13_ = b2internal::!!E;
            _loc14_ = b2internal::%L;
            _loc15_ = b2internal::"#P;
            this.§%#W§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§%#W§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§%#W§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§%#W§.col2.x = this.§%#W§.col1.y;
            if(_loc14_ + _loc15_ != 0)
            {
               this.§%#W§.col2.y = _loc14_ + _loc15_;
            }
            else
            {
               this.§%#W§.col2.y = 1;
            }
            this.§%#W§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§%#W§.col3.x = this.§%#W§.col1.z;
            this.§%#W§.col3.y = this.§%#W§.col2.z;
            this.§%#W§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§%#W§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::-"+;
            _loc13_ = b2internal::!!E;
            _loc14_ = b2internal::%L;
            _loc15_ = b2internal::"#P;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            if((_loc38_ = _loc14_ + _loc15_) == 0)
            {
               _loc38_ = 1;
            }
            this.§%#W§.col1.Set(_loc36_,_loc37_,0);
            this.§%#W§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§%#W§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§2#M§.x + _loc28_.z * this.§^;§.x;
         var _loc32_:Number = _loc28_.x * this.§2#M§.y + _loc28_.z * this.§^;§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::-"+ * _loc31_;
         _loc6_.y -= b2internal::-"+ * _loc32_;
         _loc7_ -= b2internal::%L * _loc33_;
         _loc8_.x += b2internal::!!E * _loc31_;
         _loc8_.y += b2internal::!!E * _loc32_;
         _loc9_ += b2internal::"#P * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§6#K§();
         _loc5_.§6#K§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
