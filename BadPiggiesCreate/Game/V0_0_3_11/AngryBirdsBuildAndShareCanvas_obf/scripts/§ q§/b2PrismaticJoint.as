package § q§
{
   import §+L§.b2Mat22;
   import §+L§.b2Mat33;
   import §+L§.b2Math;
   import §+L§.b2Transform;
   import §+L§.b2Vec2;
   import §+L§.b2Vec3;
   import §7z§.b2Body;
   import §7z§.b2TimeStep;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2PrismaticJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §"x§:b2Vec2;
      
      private var §2!§:b2Vec2;
      
      private var §<<§:Number;
      
      private var §3"$§:b2Vec2;
      
      private var §#!9§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §7d§:b2Mat33;
      
      private var §#"4§:b2Vec3;
      
      private var §,T§:Number;
      
      private var §^!?§:Number;
      
      private var §?i§:Number;
      
      private var § f§:Number;
      
      private var §#!0§:Number;
      
      private var §?c§:Number;
      
      private var §;![§:Boolean;
      
      private var §;!9§:Boolean;
      
      private var §7"%§:int;
      
      public function b2PrismaticJoint(param1:b2PrismaticJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§"x§ = new b2Vec2();
         this.§2!§ = new b2Vec2();
         this.§3"$§ = new b2Vec2();
         this.§#!9§ = new b2Vec2();
         this.§7d§ = new b2Mat33();
         this.§#"4§ = new b2Vec3();
         super(param1);
         this.m_localAnchor1.SetV(param1.§[!L§);
         this.m_localAnchor2.SetV(param1.§8!^§);
         this.§"x§.SetV(param1.§`!<§);
         this.§2!§.x = -this.§"x§.y;
         this.§2!§.y = this.§"x§.x;
         this.§<<§ = param1.§]!v§;
         this.§#"4§.§>!!§();
         this.§,T§ = 0;
         this.§^!?§ = 0;
         this.§?i§ = param1.§%B§;
         this.§ f§ = param1.§7^§;
         this.§#!0§ = param1.§6!t§;
         this.§?c§ = param1.motorSpeed;
         this.§;![§ = param1.§[!g§;
         this.§;!9§ = param1.§,!d§;
         this.§7"%§ = b2internal::7w;
         this.§3"$§.§>!!§();
         this.§#!9§.§>!!§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal:: [.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::-?.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§#"4§.x * this.§#!9§.x + (this.§^!?§ + this.§#"4§.z) * this.§3"$§.x),param1 * (this.§#"4§.x * this.§#!9§.y + (this.§^!?§ + this.§#"4§.z) * this.§3"$§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§#"4§.y;
      }
      
      public function § !-§() : Number
      {
         var _loc1_:b2Body = b2internal:: [;
         var _loc2_:b2Body = b2internal::-?;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§=!j§(this.§"x§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §5!x§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal:: [;
         var _loc2_:b2Body = b2internal::-?;
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
         var _loc15_:b2Vec2 = _loc1_.§=!j§(this.§"x§);
         var _loc16_:b2Vec2 = _loc1_.§#"3§;
         var _loc17_:b2Vec2 = _loc2_.§#"3§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function § "0§() : Boolean
      {
         return this.§;![§;
      }
      
      public function §2U§(param1:Boolean) : void
      {
         b2internal:: [.SetAwake(true);
         b2internal::-?.SetAwake(true);
         this.§;![§ = param1;
      }
      
      public function §,!v§() : Number
      {
         return this.§?i§;
      }
      
      public function §#!%§() : Number
      {
         return this.§ f§;
      }
      
      public function §1!J§(param1:Number, param2:Number) : void
      {
         b2internal:: [.SetAwake(true);
         b2internal::-?.SetAwake(true);
         this.§?i§ = param1;
         this.§ f§ = param2;
      }
      
      public function §+z§() : Boolean
      {
         return this.§;!9§;
      }
      
      public function §!x§(param1:Boolean) : void
      {
         b2internal:: [.SetAwake(true);
         b2internal::-?.SetAwake(true);
         this.§;!9§ = param1;
      }
      
      public function §#C§(param1:Number) : void
      {
         b2internal:: [.SetAwake(true);
         b2internal::-?.SetAwake(true);
         this.§?c§ = param1;
      }
      
      public function §3!4§() : Number
      {
         return this.§?c§;
      }
      
      public function §!f§(param1:Number) : void
      {
         b2internal:: [.SetAwake(true);
         b2internal::-?.SetAwake(true);
         this.§#!0§ = param1;
      }
      
      public function §%j§() : Number
      {
         return this.§^!?§;
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
         var _loc2_:b2Body = b2internal:: [;
         var _loc3_:b2Body = b2internal::-?;
         b2internal::1!B.SetV(_loc2_.§2"6§());
         b2internal::[e.SetV(_loc3_.§2"6§());
         var _loc6_:b2Transform = _loc2_.§7V§();
         var _loc7_:b2Transform = _loc3_.§7V§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::1!B.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::1!B.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::[e.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::[e.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §9!J§ = _loc2_.§4`§;
         §?!^§ = _loc3_.§4`§;
         §;!v§ = _loc2_.§^J§;
         §0h§ = _loc3_.§^J§;
         this.§3"$§.SetV(b2Math.§9p§(_loc6_.R,this.§"x§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§3"$§.y - (_loc13_ + _loc9_) * this.§3"$§.x;
         this.m_a2 = _loc10_ * this.§3"$§.y - _loc11_ * this.§3"$§.x;
         this.§,T§ = b2internal::9!J + b2internal::?!^ + b2internal::;!v * this.m_a1 * this.m_a1 + b2internal::0h * this.m_a2 * this.m_a2;
         if(this.§,T§ > Number.MIN_VALUE)
         {
            this.§,T§ = 1 / this.§,T§;
         }
         this.§#!9§.SetV(b2Math.§9p§(_loc6_.R,this.§2!§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§#!9§.y - (_loc13_ + _loc9_) * this.§#!9§.x;
         this.m_s2 = _loc10_ * this.§#!9§.y - _loc11_ * this.§#!9§.x;
         var _loc14_:Number = b2internal::9!J;
         var _loc15_:Number = b2internal::?!^;
         var _loc16_:Number = b2internal::;!v;
         var _loc17_:Number = b2internal::0h;
         this.§7d§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§7d§.col1.y = _loc16_ * this.m_s1 + _loc17_ * this.m_s2;
         this.§7d§.col1.z = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§7d§.col2.x = this.§7d§.col1.y;
         this.§7d§.col2.y = _loc16_ + _loc17_;
         this.§7d§.col2.z = _loc16_ * this.m_a1 + _loc17_ * this.m_a2;
         this.§7d§.col3.x = this.§7d§.col1.z;
         this.§7d§.col3.y = this.§7d§.col2.z;
         this.§7d§.col3.z = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§;![§)
         {
            _loc18_ = this.§3"$§.x * _loc12_ + this.§3"$§.y * _loc13_;
            if(b2Math.§;W§(this.§ f§ - this.§?i§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§7"%§ = b2internal::^_;
            }
            else if(_loc18_ <= this.§?i§)
            {
               if(this.§7"%§ != b2internal::'^)
               {
                  this.§7"%§ = b2internal::'^;
                  this.§#"4§.z = 0;
               }
            }
            else if(_loc18_ >= this.§ f§)
            {
               if(this.§7"%§ != b2internal::0!%)
               {
                  this.§7"%§ = b2internal::0!%;
                  this.§#"4§.z = 0;
               }
            }
            else
            {
               this.§7"%§ = b2internal::7w;
               this.§#"4§.z = 0;
            }
         }
         else
         {
            this.§7"%§ = b2internal::7w;
         }
         if(this.§;!9§ == false)
         {
            this.§^!?§ = 0;
         }
         if(param1.§ !<§)
         {
            this.§#"4§.x *= param1.§7"'§;
            this.§#"4§.y *= param1.§7"'§;
            this.§^!?§ *= param1.§7"'§;
            _loc19_ = this.§#"4§.x * this.§#!9§.x + (this.§^!?§ + this.§#"4§.z) * this.§3"$§.x;
            _loc20_ = this.§#"4§.x * this.§#!9§.y + (this.§^!?§ + this.§#"4§.z) * this.§3"$§.y;
            _loc21_ = this.§#"4§.x * this.m_s1 + this.§#"4§.y + (this.§^!?§ + this.§#"4§.z) * this.m_a1;
            _loc22_ = this.§#"4§.x * this.m_s2 + this.§#"4§.y + (this.§^!?§ + this.§#"4§.z) * this.m_a2;
            _loc2_.§#"3§.x -= b2internal::9!J * _loc19_;
            _loc2_.§#"3§.y -= b2internal::9!J * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::;!v * _loc21_;
            _loc3_.§#"3§.x += b2internal::?!^ * _loc19_;
            _loc3_.§#"3§.y += b2internal::?!^ * _loc20_;
            _loc3_.m_angularVelocity += b2internal::0h * _loc22_;
         }
         else
         {
            this.§#"4§.§>!!§();
            this.§^!?§ = 0;
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
         var _loc2_:b2Body = b2internal:: [;
         var _loc3_:b2Body = b2internal::-?;
         var _loc4_:b2Vec2 = _loc2_.§#"3§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§#"3§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§;!9§ && this.§7"%§ != b2internal::^_)
         {
            _loc14_ = this.§3"$§.x * (_loc6_.x - _loc4_.x) + this.§3"$§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc15_ = this.§,T§ * (this.§?c§ - _loc14_);
            _loc16_ = this.§^!?§;
            _loc17_ = param1.§'!R§ * this.§#!0§;
            this.§^!?§ = b2Math.§`V§(this.§^!?§ + _loc15_,-_loc17_,_loc17_);
            _loc8_ = (_loc15_ = this.§^!?§ - _loc16_) * this.§3"$§.x;
            _loc9_ = _loc15_ * this.§3"$§.y;
            _loc10_ = _loc15_ * this.m_a1;
            _loc11_ = _loc15_ * this.m_a2;
            _loc4_.x -= b2internal::9!J * _loc8_;
            _loc4_.y -= b2internal::9!J * _loc9_;
            _loc5_ -= b2internal::;!v * _loc10_;
            _loc6_.x += b2internal::?!^ * _loc8_;
            _loc6_.y += b2internal::?!^ * _loc9_;
            _loc7_ += b2internal::0h * _loc11_;
         }
         var _loc12_:Number = this.§#!9§.x * (_loc6_.x - _loc4_.x) + this.§#!9§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         var _loc13_:Number = _loc7_ - _loc5_;
         if(this.§;![§ && this.§7"%§ != b2internal::7w)
         {
            _loc18_ = this.§3"$§.x * (_loc6_.x - _loc4_.x) + this.§3"$§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc19_ = this.§#"4§.Copy();
            _loc20_ = this.§7d§.Solve33(new b2Vec3(),-_loc12_,-_loc13_,-_loc18_);
            this.§#"4§.§`"!§(_loc20_);
            if(this.§7"%§ == b2internal::'^)
            {
               this.§#"4§.z = b2Math.§+&§(this.§#"4§.z,0);
            }
            else if(this.§7"%§ == b2internal::0!%)
            {
               this.§#"4§.z = b2Math.§]0§(this.§#"4§.z,0);
            }
            _loc21_ = -_loc12_ - (this.§#"4§.z - _loc19_.z) * this.§7d§.col3.x;
            _loc22_ = -_loc13_ - (this.§#"4§.z - _loc19_.z) * this.§7d§.col3.y;
            _loc23_ = this.§7d§.Solve22(new b2Vec2(),_loc21_,_loc22_);
            _loc23_.x += _loc19_.x;
            _loc23_.y += _loc19_.y;
            this.§#"4§.x = _loc23_.x;
            this.§#"4§.y = _loc23_.y;
            _loc20_.x = this.§#"4§.x - _loc19_.x;
            _loc20_.y = this.§#"4§.y - _loc19_.y;
            _loc20_.z = this.§#"4§.z - _loc19_.z;
            _loc8_ = _loc20_.x * this.§#!9§.x + _loc20_.z * this.§3"$§.x;
            _loc9_ = _loc20_.x * this.§#!9§.y + _loc20_.z * this.§3"$§.y;
            _loc10_ = _loc20_.x * this.m_s1 + _loc20_.y + _loc20_.z * this.m_a1;
            _loc11_ = _loc20_.x * this.m_s2 + _loc20_.y + _loc20_.z * this.m_a2;
            _loc4_.x -= b2internal::9!J * _loc8_;
            _loc4_.y -= b2internal::9!J * _loc9_;
            _loc5_ -= b2internal::;!v * _loc10_;
            _loc6_.x += b2internal::?!^ * _loc8_;
            _loc6_.y += b2internal::?!^ * _loc9_;
            _loc7_ += b2internal::0h * _loc11_;
         }
         else
         {
            _loc24_ = this.§7d§.Solve22(new b2Vec2(),-_loc12_,-_loc13_);
            this.§#"4§.x += _loc24_.x;
            this.§#"4§.y += _loc24_.y;
            _loc8_ = _loc24_.x * this.§#!9§.x;
            _loc9_ = _loc24_.x * this.§#!9§.y;
            _loc10_ = _loc24_.x * this.m_s1 + _loc24_.y;
            _loc11_ = _loc24_.x * this.m_s2 + _loc24_.y;
            _loc4_.x -= b2internal::9!J * _loc8_;
            _loc4_.y -= b2internal::9!J * _loc9_;
            _loc5_ -= b2internal::;!v * _loc10_;
            _loc6_.x += b2internal::?!^ * _loc8_;
            _loc6_.y += b2internal::?!^ * _loc9_;
            _loc7_ += b2internal::0h * _loc11_;
         }
         _loc2_.§#"3§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§#"3§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal:: [;
         var _loc5_:b2Body = b2internal::-?;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§"V§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§"V§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::1!B.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::1!B.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::[e.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::[e.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§;![§)
         {
            this.§3"$§ = b2Math.§9p§(_loc20_,this.§"x§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§3"$§.y - (_loc27_ + _loc23_) * this.§3"$§.x;
            this.m_a2 = _loc24_ * this.§3"$§.y - _loc25_ * this.§3"$§.x;
            _loc35_ = this.§3"$§.x * _loc26_ + this.§3"$§.y * _loc27_;
            if(b2Math.§;W§(this.§ f§ - this.§?i§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§`V§(_loc35_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§;W§(_loc35_);
               _loc18_ = true;
            }
            else if(_loc35_ <= this.§?i§)
            {
               _loc19_ = b2Math.§`V§(_loc35_ - this.§?i§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§?i§ - _loc35_;
               _loc18_ = true;
            }
            else if(_loc35_ >= this.§ f§)
            {
               _loc19_ = b2Math.§`V§(_loc35_ - this.§ f§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc35_ - this.§ f§;
               _loc18_ = true;
            }
         }
         this.§#!9§ = b2Math.§9p§(_loc20_,this.§2!§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§#!9§.y - (_loc27_ + _loc23_) * this.§#!9§.x;
         this.m_s2 = _loc24_ * this.§#!9§.y - _loc25_ * this.§#!9§.x;
         var _loc28_:b2Vec3 = new b2Vec3();
         var _loc29_:Number = this.§#!9§.x * _loc26_ + this.§#!9§.y * _loc27_;
         var _loc30_:Number = _loc9_ - _loc7_ - this.§<<§;
         _loc16_ = b2Math.§+&§(_loc16_,b2Math.§;W§(_loc29_));
         _loc17_ = b2Math.§;W§(_loc30_);
         if(_loc18_)
         {
            _loc12_ = b2internal::9!J;
            _loc13_ = b2internal::?!^;
            _loc14_ = b2internal::;!v;
            _loc15_ = b2internal::0h;
            this.§7d§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§7d§.col1.y = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            this.§7d§.col1.z = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§7d§.col2.x = this.§7d§.col1.y;
            this.§7d§.col2.y = _loc14_ + _loc15_;
            this.§7d§.col2.z = _loc14_ * this.m_a1 + _loc15_ * this.m_a2;
            this.§7d§.col3.x = this.§7d§.col1.z;
            this.§7d§.col3.y = this.§7d§.col2.z;
            this.§7d§.col3.z = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§7d§.Solve33(_loc28_,-_loc29_,-_loc30_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::9!J;
            _loc13_ = b2internal::?!^;
            _loc14_ = b2internal::;!v;
            _loc15_ = b2internal::0h;
            _loc36_ = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            _loc37_ = _loc14_ * this.m_s1 + _loc15_ * this.m_s2;
            _loc38_ = _loc14_ + _loc15_;
            this.§7d§.col1.Set(_loc36_,_loc37_,0);
            this.§7d§.col2.Set(_loc37_,_loc38_,0);
            _loc39_ = this.§7d§.Solve22(new b2Vec2(),-_loc29_,-_loc30_);
            _loc28_.x = _loc39_.x;
            _loc28_.y = _loc39_.y;
            _loc28_.z = 0;
         }
         var _loc31_:Number = _loc28_.x * this.§#!9§.x + _loc28_.z * this.§3"$§.x;
         var _loc32_:Number = _loc28_.x * this.§#!9§.y + _loc28_.z * this.§3"$§.y;
         var _loc33_:Number = _loc28_.x * this.m_s1 + _loc28_.y + _loc28_.z * this.m_a1;
         var _loc34_:Number = _loc28_.x * this.m_s2 + _loc28_.y + _loc28_.z * this.m_a2;
         _loc6_.x -= b2internal::9!J * _loc31_;
         _loc6_.y -= b2internal::9!J * _loc32_;
         _loc7_ -= b2internal::;!v * _loc33_;
         _loc8_.x += b2internal::?!^ * _loc31_;
         _loc8_.y += b2internal::?!^ * _loc32_;
         _loc9_ += b2internal::0h * _loc34_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§-y§();
         _loc5_.§-y§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
