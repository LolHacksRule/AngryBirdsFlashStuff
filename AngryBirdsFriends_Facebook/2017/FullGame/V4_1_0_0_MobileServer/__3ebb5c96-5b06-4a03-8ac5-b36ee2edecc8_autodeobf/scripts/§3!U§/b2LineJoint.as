package §3!U§
{
   import §%!9§.b2Mat22;
   import §%!9§.b2Math;
   import §%!9§.b2Transform;
   import §%!9§.b2Vec2;
   import §1!+§.b2Body;
   import §1!+§.b2TimeStep;
   import §9#K§.b2Settings;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §+#b§:b2Vec2;
      
      private var §5#U§:b2Vec2;
      
      private var §3#h§:b2Vec2;
      
      private var §>O§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §,!@§:b2Mat22;
      
      private var §<#e§:b2Vec2;
      
      private var §2$"§:Number;
      
      private var §6#t§:Number;
      
      private var §1#&§:Number;
      
      private var §^#J§:Number;
      
      private var § "u§:Number;
      
      private var §>!_§:Number;
      
      private var §;!w§:Boolean;
      
      private var §""w§:Boolean;
      
      private var § #x§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+#b§ = new b2Vec2();
         this.§5#U§ = new b2Vec2();
         this.§3#h§ = new b2Vec2();
         this.§>O§ = new b2Vec2();
         this.§,!@§ = new b2Mat22();
         this.§<#e§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§?#O§);
         this.m_localAnchor2.SetV(param1.§ b§);
         this.§+#b§.SetV(param1.§5A§);
         this.§5#U§.x = -this.§+#b§.y;
         this.§5#U§.y = this.§+#b§.x;
         this.§<#e§.§2!9§();
         this.§2$"§ = 0;
         this.§6#t§ = 0;
         this.§1#&§ = param1.§3"&§;
         this.§^#J§ = param1.§-"o§;
         this.§ "u§ = param1.§^"a§;
         this.§>!_§ = param1.motorSpeed;
         this.§;!w§ = param1.§8!L§;
         this.§""w§ = param1.§2#8§;
         this.§ #x§ = b2internal:: #f;
         this.§3#h§.§2!9§();
         this.§>O§.§2!9§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::!"2.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::?s.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§<#e§.x * this.§>O§.x + (this.§6#t§ + this.§<#e§.y) * this.§3#h§.x),param1 * (this.§<#e§.x * this.§>O§.y + (this.§6#t§ + this.§<#e§.y) * this.§3#h§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§<#e§.y;
      }
      
      public function §[#y§() : Number
      {
         var _loc1_:b2Body = b2internal::!"2;
         var _loc2_:b2Body = b2internal::?s;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§]!g§(this.§+#b§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §>"J§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::!"2;
         var _loc2_:b2Body = b2internal::?s;
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
         var _loc15_:b2Vec2 = _loc1_.§]!g§(this.§+#b§);
         var _loc16_:b2Vec2 = _loc1_.§ ![§;
         var _loc17_:b2Vec2 = _loc2_.§ ![§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §;B§() : Boolean
      {
         return this.§;!w§;
      }
      
      public function §""t§(param1:Boolean) : void
      {
         b2internal::!"2.SetAwake(true);
         b2internal::?s.SetAwake(true);
         this.§;!w§ = param1;
      }
      
      public function §[=§() : Number
      {
         return this.§1#&§;
      }
      
      public function §2#J§() : Number
      {
         return this.§^#J§;
      }
      
      public function §%$5§(param1:Number, param2:Number) : void
      {
         b2internal::!"2.SetAwake(true);
         b2internal::?s.SetAwake(true);
         this.§1#&§ = param1;
         this.§^#J§ = param2;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.§""w§;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         b2internal::!"2.SetAwake(true);
         b2internal::?s.SetAwake(true);
         this.§""w§ = param1;
      }
      
      public function §]#2§(param1:Number) : void
      {
         b2internal::!"2.SetAwake(true);
         b2internal::?s.SetAwake(true);
         this.§>!_§ = param1;
      }
      
      public function § "7§() : Number
      {
         return this.§>!_§;
      }
      
      public function §!!X§(param1:Number) : void
      {
         b2internal::!"2.SetAwake(true);
         b2internal::?s.SetAwake(true);
         this.§ "u§ = param1;
      }
      
      public function §^s§() : Number
      {
         return this.§ "u§;
      }
      
      public function §-#8§() : Number
      {
         return this.§6#t§;
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
         var _loc2_:b2Body = b2internal::!"2;
         var _loc3_:b2Body = b2internal::?s;
         b2internal::]>.SetV(_loc2_.§,`§());
         b2internal::&a.SetV(_loc3_.§,`§());
         var _loc6_:b2Transform = _loc2_.GetTransform();
         var _loc7_:b2Transform = _loc3_.GetTransform();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::]>.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::]>.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::&a.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::&a.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §with§ = _loc2_.§"#z§;
         §^,§ = _loc3_.§"#z§;
         §@#P§ = _loc2_.§["p§;
         §##C§ = _loc3_.§["p§;
         this.§3#h§.SetV(b2Math.§`$%§(_loc6_.R,this.§+#b§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§3#h§.y - (_loc13_ + _loc9_) * this.§3#h§.x;
         this.m_a2 = _loc10_ * this.§3#h§.y - _loc11_ * this.§3#h§.x;
         this.§2$"§ = b2internal::with + b2internal::^, + b2internal::@#P * this.m_a1 * this.m_a1 + b2internal::##C * this.m_a2 * this.m_a2;
         this.§2$"§ = this.§2$"§ > Number.MIN_VALUE ? Number(1 / this.§2$"§) : Number(0);
         this.§>O§.SetV(b2Math.§`$%§(_loc6_.R,this.§5#U§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§>O§.y - (_loc13_ + _loc9_) * this.§>O§.x;
         this.m_s2 = _loc10_ * this.§>O§.y - _loc11_ * this.§>O§.x;
         var _loc14_:Number = b2internal::with;
         var _loc15_:Number = b2internal::^,;
         var _loc16_:Number = b2internal::@#P;
         var _loc17_:Number = b2internal::##C;
         this.§,!@§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§,!@§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§,!@§.col2.x = this.§,!@§.col1.y;
         this.§,!@§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§;!w§)
         {
            _loc18_ = this.§3#h§.x * _loc12_ + this.§3#h§.y * _loc13_;
            if(b2Math.§^"§(this.§^#J§ - this.§1#&§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§ #x§ = b2internal::5#W;
            }
            else if(_loc18_ <= this.§1#&§)
            {
               if(this.§ #x§ != b2internal::8$9)
               {
                  this.§ #x§ = b2internal::8$9;
                  this.§<#e§.y = 0;
               }
            }
            else if(_loc18_ >= this.§^#J§)
            {
               if(this.§ #x§ != b2internal::;">)
               {
                  this.§ #x§ = b2internal::;">;
                  this.§<#e§.y = 0;
               }
            }
            else
            {
               this.§ #x§ = b2internal:: #f;
               this.§<#e§.y = 0;
            }
         }
         else
         {
            this.§ #x§ = b2internal:: #f;
         }
         if(this.§""w§ == false)
         {
            this.§6#t§ = 0;
         }
         if(param1.§,!D§)
         {
            this.§<#e§.x *= param1.§##y§;
            this.§<#e§.y *= param1.§##y§;
            this.§6#t§ *= param1.§##y§;
            _loc19_ = this.§<#e§.x * this.§>O§.x + (this.§6#t§ + this.§<#e§.y) * this.§3#h§.x;
            _loc20_ = this.§<#e§.x * this.§>O§.y + (this.§6#t§ + this.§<#e§.y) * this.§3#h§.y;
            _loc21_ = this.§<#e§.x * this.m_s1 + (this.§6#t§ + this.§<#e§.y) * this.m_a1;
            _loc22_ = this.§<#e§.x * this.m_s2 + (this.§6#t§ + this.§<#e§.y) * this.m_a2;
            _loc2_.§ ![§.x -= b2internal::with * _loc19_;
            _loc2_.§ ![§.y -= b2internal::with * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::@#P * _loc21_;
            _loc3_.§ ![§.x += b2internal::^, * _loc19_;
            _loc3_.§ ![§.y += b2internal::^, * _loc20_;
            _loc3_.m_angularVelocity += b2internal::##C * _loc22_;
         }
         else
         {
            this.§<#e§.§2!9§();
            this.§6#t§ = 0;
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
         var _loc2_:b2Body = b2internal::!"2;
         var _loc3_:b2Body = b2internal::?s;
         var _loc4_:b2Vec2 = _loc2_.§ ![§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§ ![§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§""w§ && this.§ #x§ != b2internal::5#W)
         {
            _loc13_ = this.§3#h§.x * (_loc6_.x - _loc4_.x) + this.§3#h§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§2$"§ * (this.§>!_§ - _loc13_);
            _loc15_ = this.§6#t§;
            _loc16_ = param1.dt * this.§ "u§;
            this.§6#t§ = b2Math.§0"E§(this.§6#t§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§6#t§ - _loc15_) * this.§3#h§.x;
            _loc9_ = _loc14_ * this.§3#h§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::with * _loc8_;
            _loc4_.y -= b2internal::with * _loc9_;
            _loc5_ -= b2internal::@#P * _loc10_;
            _loc6_.x += b2internal::^, * _loc8_;
            _loc6_.y += b2internal::^, * _loc9_;
            _loc7_ += b2internal::##C * _loc11_;
         }
         var _loc12_:Number = this.§>O§.x * (_loc6_.x - _loc4_.x) + this.§>O§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§;!w§ && this.§ #x§ != b2internal:: #f)
         {
            _loc17_ = this.§3#h§.x * (_loc6_.x - _loc4_.x) + this.§3#h§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§<#e§.Copy();
            _loc19_ = this.§,!@§.§78§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§<#e§.§<+§(_loc19_);
            if(this.§ #x§ == b2internal::8$9)
            {
               this.§<#e§.y = b2Math.§[#1§(this.§<#e§.y,0);
            }
            else if(this.§ #x§ == b2internal::;">)
            {
               this.§<#e§.y = b2Math.§'Q§(this.§<#e§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§<#e§.y - _loc18_.y) * this.§,!@§.col2.x;
            if(this.§,!@§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§,!@§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§<#e§.x = _loc21_;
            _loc19_.x = this.§<#e§.x - _loc18_.x;
            _loc19_.y = this.§<#e§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§>O§.x + _loc19_.y * this.§3#h§.x;
            _loc9_ = _loc19_.x * this.§>O§.y + _loc19_.y * this.§3#h§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::with * _loc8_;
            _loc4_.y -= b2internal::with * _loc9_;
            _loc5_ -= b2internal::@#P * _loc10_;
            _loc6_.x += b2internal::^, * _loc8_;
            _loc6_.y += b2internal::^, * _loc9_;
            _loc7_ += b2internal::##C * _loc11_;
         }
         else
         {
            if(this.§,!@§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§,!@§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§<#e§.x += _loc22_;
            _loc8_ = _loc22_ * this.§>O§.x;
            _loc9_ = _loc22_ * this.§>O§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::with * _loc8_;
            _loc4_.y -= b2internal::with * _loc9_;
            _loc5_ -= b2internal::@#P * _loc10_;
            _loc6_.x += b2internal::^, * _loc8_;
            _loc6_.y += b2internal::^, * _loc9_;
            _loc7_ += b2internal::##C * _loc11_;
         }
         _loc2_.§ ![§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§ ![§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::!"2;
         var _loc5_:b2Body = b2internal::?s;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§%"l§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§%"l§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::]>.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::]>.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::&a.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::&a.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§;!w§)
         {
            this.§3#h§ = b2Math.§`$%§(_loc20_,this.§+#b§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§3#h§.y - (_loc27_ + _loc23_) * this.§3#h§.x;
            this.m_a2 = _loc24_ * this.§3#h§.y - _loc25_ * this.§3#h§.x;
            _loc34_ = this.§3#h§.x * _loc26_ + this.§3#h§.y * _loc27_;
            if(b2Math.§^"§(this.§^#J§ - this.§1#&§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§0"E§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§^"§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§1#&§)
            {
               _loc19_ = b2Math.§0"E§(_loc34_ - this.§1#&§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§1#&§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§^#J§)
            {
               _loc19_ = b2Math.§0"E§(_loc34_ - this.§^#J§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§^#J§;
               _loc18_ = true;
            }
         }
         this.§>O§ = b2Math.§`$%§(_loc20_,this.§5#U§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§>O§.y - (_loc27_ + _loc23_) * this.§>O§.x;
         this.m_s2 = _loc24_ * this.§>O§.y - _loc25_ * this.§>O§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§>O§.x * _loc26_ + this.§>O§.y * _loc27_;
         _loc16_ = b2Math.§[#1§(_loc16_,b2Math.§^"§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::with;
            _loc13_ = b2internal::^,;
            _loc14_ = b2internal::@#P;
            _loc15_ = b2internal::##C;
            this.§,!@§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§,!@§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§,!@§.col2.x = this.§,!@§.col1.y;
            this.§,!@§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§,!@§.§78§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::with;
            _loc13_ = b2internal::^,;
            _loc14_ = b2internal::@#P;
            _loc15_ = b2internal::##C;
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
         var _loc30_:Number = _loc28_.x * this.§>O§.x + _loc28_.y * this.§3#h§.x;
         var _loc31_:Number = _loc28_.x * this.§>O§.y + _loc28_.y * this.§3#h§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::with * _loc30_;
         _loc6_.y -= b2internal::with * _loc31_;
         _loc7_ -= b2internal::@#P * _loc32_;
         _loc8_.x += b2internal::^, * _loc30_;
         _loc8_.y += b2internal::^, * _loc31_;
         _loc9_ += b2internal::##C * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§6!=§();
         _loc5_.§6!=§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
