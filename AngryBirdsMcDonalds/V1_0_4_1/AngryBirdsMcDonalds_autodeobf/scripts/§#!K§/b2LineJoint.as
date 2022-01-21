package §#!K§
{
   import §-0§.b2Body;
   import §-0§.b2TimeStep;
   import §@g§.b2Settings;
   import §@g§.b2internal;
   import §^!%§.b2Mat22;
   import §^!%§.b2Math;
   import §^!%§.b2Transform;
   import §^!%§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2LineJoint extends b2Joint
   {
       
      
      b2internal var m_localAnchor1:b2Vec2;
      
      b2internal var m_localAnchor2:b2Vec2;
      
      b2internal var §+E§:b2Vec2;
      
      private var §<j§:b2Vec2;
      
      private var §>E§:b2Vec2;
      
      private var §8!1§:b2Vec2;
      
      private var m_s1:Number;
      
      private var m_s2:Number;
      
      private var m_a1:Number;
      
      private var m_a2:Number;
      
      private var §1!%§:b2Mat22;
      
      private var §+!=§:b2Vec2;
      
      private var §2,§:Number;
      
      private var §7!d§:Number;
      
      private var § h§:Number;
      
      private var §]o§:Number;
      
      private var §0<§:Number;
      
      private var §@!Q§:Number;
      
      private var §]!C§:Boolean;
      
      private var §^!>§:Boolean;
      
      private var §<!Q§:int;
      
      public function b2LineJoint(param1:b2LineJointDef)
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this.m_localAnchor1 = new b2Vec2();
         this.m_localAnchor2 = new b2Vec2();
         this.§+E§ = new b2Vec2();
         this.§<j§ = new b2Vec2();
         this.§>E§ = new b2Vec2();
         this.§8!1§ = new b2Vec2();
         this.§1!%§ = new b2Mat22();
         this.§+!=§ = new b2Vec2();
         super(param1);
         this.m_localAnchor1.SetV(param1.§0'§);
         this.m_localAnchor2.SetV(param1.§;!b§);
         this.§+E§.SetV(param1.§4k§);
         this.§<j§.x = -this.§+E§.y;
         this.§<j§.y = this.§+E§.x;
         this.§+!=§.§4[§();
         this.§2,§ = 0;
         this.§7!d§ = 0;
         this.§ h§ = param1.§;!$§;
         this.§]o§ = param1.§<!>§;
         this.§0<§ = param1.§9#§;
         this.§@!Q§ = param1.motorSpeed;
         this.§]!C§ = param1.§=c§;
         this.§^!>§ = param1.§4=§;
         this.§<!Q§ = b2internal::8b;
         this.§>E§.§4[§();
         this.§8!1§.§4[§();
      }
      
      override public function GetAnchorA() : b2Vec2
      {
         return b2internal::+!`.GetWorldPoint(this.m_localAnchor1);
      }
      
      override public function GetAnchorB() : b2Vec2
      {
         return b2internal::,!7.GetWorldPoint(this.m_localAnchor2);
      }
      
      override public function GetReactionForce(param1:Number) : b2Vec2
      {
         return new b2Vec2(param1 * (this.§+!=§.x * this.§8!1§.x + (this.§7!d§ + this.§+!=§.y) * this.§>E§.x),param1 * (this.§+!=§.x * this.§8!1§.y + (this.§7!d§ + this.§+!=§.y) * this.§>E§.y));
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.§+!=§.y;
      }
      
      public function §1x§() : Number
      {
         var _loc1_:b2Body = b2internal::+!`;
         var _loc2_:b2Body = b2internal::,!7;
         var _loc4_:b2Vec2 = _loc1_.GetWorldPoint(this.m_localAnchor1);
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc2_.GetWorldPoint(this.m_localAnchor2)).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         var _loc8_:b2Vec2;
         return Number((_loc8_ = _loc1_.§6!6§(this.§+E§)).x * _loc6_ + _loc8_.y * _loc7_);
      }
      
      public function §1!F§() : Number
      {
         var _loc3_:b2Mat22 = null;
         var _loc1_:b2Body = b2internal::+!`;
         var _loc2_:b2Body = b2internal::,!7;
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
         var _loc15_:b2Vec2 = _loc1_.§6!6§(this.§+E§);
         var _loc16_:b2Vec2 = _loc1_.§'!f§;
         var _loc17_:b2Vec2 = _loc2_.§'!f§;
         var _loc18_:Number = _loc1_.m_angularVelocity;
         var _loc19_:Number = _loc2_.m_angularVelocity;
         return Number(_loc13_ * (-_loc18_ * _loc15_.y) + _loc14_ * (_loc18_ * _loc15_.x) + (_loc15_.x * (_loc17_.x + -_loc19_ * _loc8_ - _loc16_.x - -_loc18_ * _loc5_) + _loc15_.y * (_loc17_.y + _loc19_ * _loc7_ - _loc16_.y - _loc18_ * _loc4_)));
      }
      
      public function §6§() : Boolean
      {
         return this.§]!C§;
      }
      
      public function §!+§(param1:Boolean) : void
      {
         b2internal::+!`.SetAwake(true);
         b2internal::,!7.SetAwake(true);
         this.§]!C§ = param1;
      }
      
      public function §&!W§() : Number
      {
         return this.§ h§;
      }
      
      public function §4"§() : Number
      {
         return this.§]o§;
      }
      
      public function §[!T§(param1:Number, param2:Number) : void
      {
         b2internal::+!`.SetAwake(true);
         b2internal::,!7.SetAwake(true);
         this.§ h§ = param1;
         this.§]o§ = param2;
      }
      
      public function § do§() : Boolean
      {
         return this.§^!>§;
      }
      
      public function §%!j§(param1:Boolean) : void
      {
         b2internal::+!`.SetAwake(true);
         b2internal::,!7.SetAwake(true);
         this.§^!>§ = param1;
      }
      
      public function §@O§(param1:Number) : void
      {
         b2internal::+!`.SetAwake(true);
         b2internal::,!7.SetAwake(true);
         this.§@!Q§ = param1;
      }
      
      public function §<!`§() : Number
      {
         return this.§@!Q§;
      }
      
      public function §@9§(param1:Number) : void
      {
         b2internal::+!`.SetAwake(true);
         b2internal::,!7.SetAwake(true);
         this.§0<§ = param1;
      }
      
      public function §4!b§() : Number
      {
         return this.§0<§;
      }
      
      public function §]U§() : Number
      {
         return this.§7!d§;
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
         var _loc2_:b2Body = b2internal::+!`;
         var _loc3_:b2Body = b2internal::,!7;
         b2internal::`!0.SetV(_loc2_.§>%§());
         b2internal::#!o.SetV(_loc3_.§>%§());
         var _loc6_:b2Transform = _loc2_.§>!%§();
         var _loc7_:b2Transform = _loc3_.§>!%§();
         _loc4_ = _loc2_.m_xf.R;
         var _loc8_:Number = this.m_localAnchor1.x - b2internal::`!0.x;
         var _loc9_:Number = this.m_localAnchor1.y - b2internal::`!0.y;
         _loc5_ = _loc4_.col1.x * _loc8_ + _loc4_.col2.x * _loc9_;
         _loc9_ = _loc4_.col1.y * _loc8_ + _loc4_.col2.y * _loc9_;
         _loc8_ = _loc5_;
         _loc4_ = _loc3_.m_xf.R;
         var _loc10_:Number = this.m_localAnchor2.x - b2internal::#!o.x;
         var _loc11_:Number = this.m_localAnchor2.y - b2internal::#!o.y;
         _loc5_ = _loc4_.col1.x * _loc10_ + _loc4_.col2.x * _loc11_;
         _loc11_ = _loc4_.col1.y * _loc10_ + _loc4_.col2.y * _loc11_;
         _loc10_ = _loc5_;
         var _loc12_:Number = _loc3_.m_sweep.c.x + _loc10_ - _loc2_.m_sweep.c.x - _loc8_;
         var _loc13_:Number = _loc3_.m_sweep.c.y + _loc11_ - _loc2_.m_sweep.c.y - _loc9_;
         §@k§ = _loc2_.§!=§;
         §>V§ = _loc3_.§!=§;
         §4!Y§ = _loc2_.§4!i§;
         §+B§ = _loc3_.§4!i§;
         this.§>E§.SetV(b2Math.§#!j§(_loc6_.R,this.§+E§));
         this.m_a1 = (_loc12_ + _loc8_) * this.§>E§.y - (_loc13_ + _loc9_) * this.§>E§.x;
         this.m_a2 = _loc10_ * this.§>E§.y - _loc11_ * this.§>E§.x;
         this.§2,§ = b2internal::@k + b2internal::>V + b2internal::4!Y * this.m_a1 * this.m_a1 + b2internal::+B * this.m_a2 * this.m_a2;
         this.§2,§ = this.§2,§ > Number.MIN_VALUE ? Number(1 / this.§2,§) : Number(0);
         this.§8!1§.SetV(b2Math.§#!j§(_loc6_.R,this.§<j§));
         this.m_s1 = (_loc12_ + _loc8_) * this.§8!1§.y - (_loc13_ + _loc9_) * this.§8!1§.x;
         this.m_s2 = _loc10_ * this.§8!1§.y - _loc11_ * this.§8!1§.x;
         var _loc14_:Number = b2internal::@k;
         var _loc15_:Number = b2internal::>V;
         var _loc16_:Number = b2internal::4!Y;
         var _loc17_:Number = b2internal::+B;
         this.§1!%§.col1.x = _loc14_ + _loc15_ + _loc16_ * this.m_s1 * this.m_s1 + _loc17_ * this.m_s2 * this.m_s2;
         this.§1!%§.col1.y = _loc16_ * this.m_s1 * this.m_a1 + _loc17_ * this.m_s2 * this.m_a2;
         this.§1!%§.col2.x = this.§1!%§.col1.y;
         this.§1!%§.col2.y = _loc14_ + _loc15_ + _loc16_ * this.m_a1 * this.m_a1 + _loc17_ * this.m_a2 * this.m_a2;
         if(this.§]!C§)
         {
            _loc18_ = this.§>E§.x * _loc12_ + this.§>E§.y * _loc13_;
            if(b2Math.§%g§(this.§]o§ - this.§ h§) < 2 * b2Settings.b2_linearSlop)
            {
               this.§<!Q§ = b2internal::"R;
            }
            else if(_loc18_ <= this.§ h§)
            {
               if(this.§<!Q§ != b2internal::`!2)
               {
                  this.§<!Q§ = b2internal::`!2;
                  this.§+!=§.y = 0;
               }
            }
            else if(_loc18_ >= this.§]o§)
            {
               if(this.§<!Q§ != b2internal::?!&)
               {
                  this.§<!Q§ = b2internal::?!&;
                  this.§+!=§.y = 0;
               }
            }
            else
            {
               this.§<!Q§ = b2internal::8b;
               this.§+!=§.y = 0;
            }
         }
         else
         {
            this.§<!Q§ = b2internal::8b;
         }
         if(this.§^!>§ == false)
         {
            this.§7!d§ = 0;
         }
         if(param1.§'!#§)
         {
            this.§+!=§.x *= param1.§,!e§;
            this.§+!=§.y *= param1.§,!e§;
            this.§7!d§ *= param1.§,!e§;
            _loc19_ = this.§+!=§.x * this.§8!1§.x + (this.§7!d§ + this.§+!=§.y) * this.§>E§.x;
            _loc20_ = this.§+!=§.x * this.§8!1§.y + (this.§7!d§ + this.§+!=§.y) * this.§>E§.y;
            _loc21_ = this.§+!=§.x * this.m_s1 + (this.§7!d§ + this.§+!=§.y) * this.m_a1;
            _loc22_ = this.§+!=§.x * this.m_s2 + (this.§7!d§ + this.§+!=§.y) * this.m_a2;
            _loc2_.§'!f§.x -= b2internal::@k * _loc19_;
            _loc2_.§'!f§.y -= b2internal::@k * _loc20_;
            _loc2_.m_angularVelocity -= b2internal::4!Y * _loc21_;
            _loc3_.§'!f§.x += b2internal::>V * _loc19_;
            _loc3_.§'!f§.y += b2internal::>V * _loc20_;
            _loc3_.m_angularVelocity += b2internal::+B * _loc22_;
         }
         else
         {
            this.§+!=§.§4[§();
            this.§7!d§ = 0;
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
         var _loc2_:b2Body = b2internal::+!`;
         var _loc3_:b2Body = b2internal::,!7;
         var _loc4_:b2Vec2 = _loc2_.§'!f§;
         var _loc5_:Number = _loc2_.m_angularVelocity;
         var _loc6_:b2Vec2 = _loc3_.§'!f§;
         var _loc7_:Number = _loc3_.m_angularVelocity;
         if(this.§^!>§ && this.§<!Q§ != b2internal::"R)
         {
            _loc13_ = this.§>E§.x * (_loc6_.x - _loc4_.x) + this.§>E§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc14_ = this.§2,§ * (this.§@!Q§ - _loc13_);
            _loc15_ = this.§7!d§;
            _loc16_ = param1.§+u§ * this.§0<§;
            this.§7!d§ = b2Math.§]$§(this.§7!d§ + _loc14_,-_loc16_,_loc16_);
            _loc8_ = (_loc14_ = this.§7!d§ - _loc15_) * this.§>E§.x;
            _loc9_ = _loc14_ * this.§>E§.y;
            _loc10_ = _loc14_ * this.m_a1;
            _loc11_ = _loc14_ * this.m_a2;
            _loc4_.x -= b2internal::@k * _loc8_;
            _loc4_.y -= b2internal::@k * _loc9_;
            _loc5_ -= b2internal::4!Y * _loc10_;
            _loc6_.x += b2internal::>V * _loc8_;
            _loc6_.y += b2internal::>V * _loc9_;
            _loc7_ += b2internal::+B * _loc11_;
         }
         var _loc12_:Number = this.§8!1§.x * (_loc6_.x - _loc4_.x) + this.§8!1§.y * (_loc6_.y - _loc4_.y) + this.m_s2 * _loc7_ - this.m_s1 * _loc5_;
         if(this.§]!C§ && this.§<!Q§ != b2internal::8b)
         {
            _loc17_ = this.§>E§.x * (_loc6_.x - _loc4_.x) + this.§>E§.y * (_loc6_.y - _loc4_.y) + this.m_a2 * _loc7_ - this.m_a1 * _loc5_;
            _loc18_ = this.§+!=§.Copy();
            _loc19_ = this.§1!%§.§6!'§(new b2Vec2(),-_loc12_,-_loc17_);
            this.§+!=§.§0!§(_loc19_);
            if(this.§<!Q§ == b2internal::`!2)
            {
               this.§+!=§.y = b2Math.§6!C§(this.§+!=§.y,0);
            }
            else if(this.§<!Q§ == b2internal::?!&)
            {
               this.§+!=§.y = b2Math.§[N§(this.§+!=§.y,0);
            }
            _loc20_ = -_loc12_ - (this.§+!=§.y - _loc18_.y) * this.§1!%§.col2.x;
            if(this.§1!%§.col1.x != 0)
            {
               _loc21_ = _loc20_ / this.§1!%§.col1.x + _loc18_.x;
            }
            else
            {
               _loc21_ = _loc18_.x;
            }
            this.§+!=§.x = _loc21_;
            _loc19_.x = this.§+!=§.x - _loc18_.x;
            _loc19_.y = this.§+!=§.y - _loc18_.y;
            _loc8_ = _loc19_.x * this.§8!1§.x + _loc19_.y * this.§>E§.x;
            _loc9_ = _loc19_.x * this.§8!1§.y + _loc19_.y * this.§>E§.y;
            _loc10_ = _loc19_.x * this.m_s1 + _loc19_.y * this.m_a1;
            _loc11_ = _loc19_.x * this.m_s2 + _loc19_.y * this.m_a2;
            _loc4_.x -= b2internal::@k * _loc8_;
            _loc4_.y -= b2internal::@k * _loc9_;
            _loc5_ -= b2internal::4!Y * _loc10_;
            _loc6_.x += b2internal::>V * _loc8_;
            _loc6_.y += b2internal::>V * _loc9_;
            _loc7_ += b2internal::+B * _loc11_;
         }
         else
         {
            if(this.§1!%§.col1.x != 0)
            {
               _loc22_ = -_loc12_ / this.§1!%§.col1.x;
            }
            else
            {
               _loc22_ = 0;
            }
            this.§+!=§.x += _loc22_;
            _loc8_ = _loc22_ * this.§8!1§.x;
            _loc9_ = _loc22_ * this.§8!1§.y;
            _loc10_ = _loc22_ * this.m_s1;
            _loc11_ = _loc22_ * this.m_s2;
            _loc4_.x -= b2internal::@k * _loc8_;
            _loc4_.y -= b2internal::@k * _loc9_;
            _loc5_ -= b2internal::4!Y * _loc10_;
            _loc6_.x += b2internal::>V * _loc8_;
            _loc6_.y += b2internal::>V * _loc9_;
            _loc7_ += b2internal::+B * _loc11_;
         }
         _loc2_.§'!f§.SetV(_loc4_);
         _loc2_.m_angularVelocity = _loc5_;
         _loc3_.§'!f§.SetV(_loc6_);
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
         var _loc4_:b2Body = b2internal::+!`;
         var _loc5_:b2Body = b2internal::,!7;
         var _loc6_:b2Vec2 = _loc4_.m_sweep.c;
         var _loc7_:Number = _loc4_.m_sweep.a;
         var _loc8_:b2Vec2 = _loc5_.m_sweep.c;
         var _loc9_:Number = _loc5_.m_sweep.a;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Boolean = false;
         var _loc19_:Number = 0;
         var _loc20_:b2Mat22 = b2Mat22.§8V§(_loc7_);
         var _loc21_:b2Mat22 = b2Mat22.§8V§(_loc9_);
         _loc10_ = _loc20_;
         var _loc22_:Number = this.m_localAnchor1.x - b2internal::`!0.x;
         var _loc23_:Number = this.m_localAnchor1.y - b2internal::`!0.y;
         _loc11_ = _loc10_.col1.x * _loc22_ + _loc10_.col2.x * _loc23_;
         _loc23_ = _loc10_.col1.y * _loc22_ + _loc10_.col2.y * _loc23_;
         _loc22_ = _loc11_;
         _loc10_ = _loc21_;
         var _loc24_:Number = this.m_localAnchor2.x - b2internal::#!o.x;
         var _loc25_:Number = this.m_localAnchor2.y - b2internal::#!o.y;
         _loc11_ = _loc10_.col1.x * _loc24_ + _loc10_.col2.x * _loc25_;
         _loc25_ = _loc10_.col1.y * _loc24_ + _loc10_.col2.y * _loc25_;
         _loc24_ = _loc11_;
         var _loc26_:Number = _loc8_.x + _loc24_ - _loc6_.x - _loc22_;
         var _loc27_:Number = _loc8_.y + _loc25_ - _loc6_.y - _loc23_;
         if(this.§]!C§)
         {
            this.§>E§ = b2Math.§#!j§(_loc20_,this.§+E§);
            this.m_a1 = (_loc26_ + _loc22_) * this.§>E§.y - (_loc27_ + _loc23_) * this.§>E§.x;
            this.m_a2 = _loc24_ * this.§>E§.y - _loc25_ * this.§>E§.x;
            _loc34_ = this.§>E§.x * _loc26_ + this.§>E§.y * _loc27_;
            if(b2Math.§%g§(this.§]o§ - this.§ h§) < 2 * b2Settings.b2_linearSlop)
            {
               _loc19_ = b2Math.§]$§(_loc34_,-b2Settings.b2_maxLinearCorrection,b2Settings.b2_maxLinearCorrection);
               _loc16_ = b2Math.§%g§(_loc34_);
               _loc18_ = true;
            }
            else if(_loc34_ <= this.§ h§)
            {
               _loc19_ = b2Math.§]$§(_loc34_ - this.§ h§ + b2Settings.b2_linearSlop,-b2Settings.b2_maxLinearCorrection,0);
               _loc16_ = this.§ h§ - _loc34_;
               _loc18_ = true;
            }
            else if(_loc34_ >= this.§]o§)
            {
               _loc19_ = b2Math.§]$§(_loc34_ - this.§]o§ + b2Settings.b2_linearSlop,0,b2Settings.b2_maxLinearCorrection);
               _loc16_ = _loc34_ - this.§]o§;
               _loc18_ = true;
            }
         }
         this.§8!1§ = b2Math.§#!j§(_loc20_,this.§<j§);
         this.m_s1 = (_loc26_ + _loc22_) * this.§8!1§.y - (_loc27_ + _loc23_) * this.§8!1§.x;
         this.m_s2 = _loc24_ * this.§8!1§.y - _loc25_ * this.§8!1§.x;
         var _loc28_:b2Vec2 = new b2Vec2();
         var _loc29_:Number = this.§8!1§.x * _loc26_ + this.§8!1§.y * _loc27_;
         _loc16_ = b2Math.§6!C§(_loc16_,b2Math.§%g§(_loc29_));
         _loc17_ = 0;
         if(_loc18_)
         {
            _loc12_ = b2internal::@k;
            _loc13_ = b2internal::>V;
            _loc14_ = b2internal::4!Y;
            _loc15_ = b2internal::+B;
            this.§1!%§.col1.x = _loc12_ + _loc13_ + _loc14_ * this.m_s1 * this.m_s1 + _loc15_ * this.m_s2 * this.m_s2;
            this.§1!%§.col1.y = _loc14_ * this.m_s1 * this.m_a1 + _loc15_ * this.m_s2 * this.m_a2;
            this.§1!%§.col2.x = this.§1!%§.col1.y;
            this.§1!%§.col2.y = _loc12_ + _loc13_ + _loc14_ * this.m_a1 * this.m_a1 + _loc15_ * this.m_a2 * this.m_a2;
            this.§1!%§.§6!'§(_loc28_,-_loc29_,-_loc19_);
         }
         else
         {
            _loc12_ = b2internal::@k;
            _loc13_ = b2internal::>V;
            _loc14_ = b2internal::4!Y;
            _loc15_ = b2internal::+B;
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
         var _loc30_:Number = _loc28_.x * this.§8!1§.x + _loc28_.y * this.§>E§.x;
         var _loc31_:Number = _loc28_.x * this.§8!1§.y + _loc28_.y * this.§>E§.y;
         var _loc32_:Number = _loc28_.x * this.m_s1 + _loc28_.y * this.m_a1;
         var _loc33_:Number = _loc28_.x * this.m_s2 + _loc28_.y * this.m_a2;
         _loc6_.x -= b2internal::@k * _loc30_;
         _loc6_.y -= b2internal::@k * _loc31_;
         _loc7_ -= b2internal::4!Y * _loc32_;
         _loc8_.x += b2internal::>V * _loc30_;
         _loc8_.y += b2internal::>V * _loc31_;
         _loc9_ += b2internal::+B * _loc33_;
         _loc4_.m_sweep.a = _loc7_;
         _loc5_.m_sweep.a = _loc9_;
         _loc4_.§]t§();
         _loc5_.§]t§();
         return _loc16_ <= b2Settings.b2_linearSlop && _loc17_ <= b2Settings.b2_angularSlop;
      }
   }
}
